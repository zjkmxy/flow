(*
 * Copyright (c) Meta Platforms, Inc. and affiliates.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 *)

module Make (Env : Env_sig.S) : Abnormal_sig.S with module Env := Env = struct
  (* we model abnormal control flows using exceptions during traversal *)

  (* control directives encountered during traversal *)
  type t =
    | Return
    | Throw
    | Break of string option
    | Continue of string option

  type payload =
    | Expr of ALoc.t * (ALoc.t, ALoc.t * Type.t) Flow_ast.Expression.t
    | Stmt of (ALoc.t, ALoc.t * Type.t) Flow_ast.Statement.t
    | Stmts of (ALoc.t, ALoc.t * Type.t) Flow_ast.Statement.t list

  exception Exn of payload * t

  open Utils_js

  (* called from traversal. abnormal indicates control flow directive encountered *)
  let throw_stmt_control_flow_exception stmt abnormal = raise (Exn (Stmt stmt, abnormal))

  let throw_stmts_control_flow_exception stmts abnormal = raise (Exn (Stmts stmts, abnormal))

  let throw_expr_control_flow_exception loc expr abnormal = raise (Exn (Expr (loc, expr), abnormal))

  (* if argument is Some abnormal, throw it *)
  let check_stmt_control_flow_exception = function
    | (stmt, None) -> stmt
    | (stmt, Some abnormal) -> throw_stmt_control_flow_exception stmt abnormal

  (* catch_stmt_control_flow_exception runs a function which is expected to either
       return a statement or raise Exn (Stmt _, _) or Exn (Expr _, _). The function
       should never raise Exn (Stmts _, _). If the function raises an
       Exn (Expr _, _), an Expression statement will be constructed around the
       expression.
     Similarly, the function passed into catch_stmt_control_flow_exception should
       return a statement list or raise Exn (Stmts _, _), and never raise
       Exn (Stmt _, _) or Exn (Expr _, _); and likewise
       catch_expr_control_flow_exception should raise Expr and not Stmts or Stmt
     For all:
       If the passed-in function returns an AST,
         then we return that AST and None.
       Otherwise, if it raises with some AST payload and an abnormal flow,
         then we return the payload AST and Some <abnormal flow>.
  *)
  let ( catch_stmt_control_flow_exception,
        catch_stmts_control_flow_exception,
        catch_expr_control_flow_exception
      ) =
    let catch_control_flow_exception p f =
      try
        let res = f () in
        (res, None)
      with
      | Exn (payload, abnormal) -> (p payload, Some abnormal)
      | exn -> raise exn
    in
    ( catch_control_flow_exception (function
          | Stmt stmt -> stmt
          (* If we catch an Expr payload, then it was generated by seeing an invariant() call
             and we can reconstruct a statement around it (rather than constructing a statement
             around it when we create the payload) *)
          | Expr (loc, exp) ->
            ( loc,
              Flow_ast.Statement.Expression
                {
                  Flow_ast.Statement.Expression.expression = exp;
                  directive = None;
                  comments = None;
                }
            )
          | Stmts _ -> assert_false "Statement expected"
          ),
      catch_control_flow_exception (function
          | Stmts stmts -> stmts
          | Stmt _
          | Expr _ ->
            assert_false "Statement list expected"
          ),
      catch_control_flow_exception (function
          | Expr (_, exp) -> exp
          | Stmt _
          | Stmts _ ->
            assert_false "Expression expected"
          )
    )

  (* like check_control_flow_exception, except break statements
     specifying the given label (or None) are ignored *)
  let ignore_break_to_label label = function
    | (ast, Some (Break break_label)) when break_label = label -> (ast, None)
    | result -> result

  (* like ignore_break_to_label, except continue statements
     on the same label (or None) are also ignored *)
  let ignore_break_or_continue_to_label label res =
    match ignore_break_to_label label res with
    | (ast, Some (Continue cont_label)) when cont_label = label -> (ast, None)
    | result -> result

  (********************************************************************)

  let try_with_abnormal_exn ~f ~on_abnormal_exn () =
    try f () with
    | Exn (payload, t) -> on_abnormal_exn (payload, t)
    | exc -> raise exc
end
