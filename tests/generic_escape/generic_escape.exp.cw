Error ----------------------------------------------------------------------------------------------------- alias.js:9:2

Cannot cast function to `Tr` because function type [1] contains type variable `Return` [2] which cannot escape from the
scope in which it was defined [3] (try adding a type annotation to `f` [4]) in the first parameter. [escaped-generic]

   alias.js:9:2
        v-----
    9| (f => {
   10|   return aw(f());
   11| }: Tr);
       ^

References:
   alias.js:5:20
    5| type Tr = <Return>(() => Pr<Return>) => Return;
                          ^^^^^^^^^^^^^^^^ [1]
   alias.js:5:29
    5| type Tr = <Return>(() => Pr<Return>) => Return;
                                   ^^^^^^ [2]
   alias.js:5:12
    5| type Tr = <Return>(() => Pr<Return>) => Return;
                  ^^^^^^ [3]
   alias.js:9:2
    9| (f => {
        ^ [4]


Error --------------------------------------------------------------------------------------------------- alias.js:10:10

Cannot return `aw(...)` because type variable `Return` [1] cannot escape from the scope in which it was defined [2] (try
adding a type annotation to return [3]). [escaped-generic]

   alias.js:10:10
   10|   return aw(f());
                ^^^^^^^

References:
   alias.js:3:19
    3| declare class Pr<+T> {}
                         ^ [1]
   alias.js:5:12
    5| type Tr = <Return>(() => Pr<Return>) => Return;
                  ^^^^^^ [2]
   alias.js:9:3
    9| (f => {
          [3]


Error ----------------------------------------------------------------------------------------------------- class.js:9:9

Cannot assign `this.s` to `x` because `X` [1] is incompatible with number [2]. All writes to `x` must be compatible with
the type of its initializer [3]. Add an annotation to `x` [3] if a different type is desired. [incompatible-type]

   class.js:9:9
   9|     x = this.s;
              ^^^^^^

References:
   class.js:6:6
   6|   s: X;
           ^ [1]
   class.js:3:9
   3| var x = 42;
              ^^ [2]
   class.js:3:5
   3| var x = 42;
          ^ [3]


Error ---------------------------------------------------------------------------------------------------- class.js:10:9

Cannot assign `this.s` to `y` because `X` [1] is incompatible with number [2]. [incompatible-type]

   class.js:10:9
   10|     y = this.s;
               ^^^^^^

References:
   class.js:6:6
    6|   s: X;
            ^ [1]
   class.js:8:12
    8|     var y: number = 42;
                  ^^^^^^ [2]


Error --------------------------------------------------------------------------------------------------- class.js:20:11

Cannot assign `this.s` to `y` because `X` [1] is incompatible with number [2]. All writes to `y` must be compatible with
the type of its initializer [3]. Add an annotation to `y` [3] if a different type is desired. [incompatible-type]

   class.js:20:11
   20|       y = this.s;
                 ^^^^^^

References:
   class.js:17:6
   17|   s: X;
            ^ [1]
   class.js:14:9
   14| var y = 22;
               ^^ [2]
   class.js:14:5
   14| var y = 22;
           ^ [3]


Error --------------------------------------------------------------------------------------------------- class.js:22:14

Cannot assign `y` to `this.s` because number [1] is incompatible with `X` [2]. [incompatible-type]

   class.js:22:14
   22|     this.s = y;
                    ^

References:
   class.js:14:9
   14| var y = 22;
               ^^ [1]
   class.js:17:6
   17|   s: X;
            ^ [2]


Error --------------------------------------------------------------------------------------------------- class.js:31:14

Cannot assign `y` to `this.s` because type variable `Y` [1] cannot escape from the scope in which it was defined [2]
(try adding a type annotation to property `s` [3]). [escaped-generic]

   class.js:31:14
   31|     this.s = y;
                    ^

References:
   class.js:30:11
   30|   f<Y>(y: Y, x: X) {
                 ^ [1]
   class.js:30:5
   30|   f<Y>(y: Y, x: X) {
           ^ [2]
   class.js:29:4
   29|   s;
           [3]


Error --------------------------------------------------------------------------------------------------- class.js:33:16

Cannot assign `x` to `this.s` because type variable `X` [1] cannot escape from the scope in which it was defined [2]
(try adding a type annotation to property `s` [3]). [escaped-generic]

   class.js:33:16
   33|       this.s = x;
                      ^

References:
   class.js:30:17
   30|   f<Y>(y: Y, x: X) {
                       ^ [1]
   class.js:28:9
   28| class C<X> {
               ^ [2]
   class.js:29:4
   29|   s;
           [3]


Error --------------------------------------------------------------------------------------------------- class.js:38:25

Cannot assign `z` to `captured_this.s` because type variable `Z` [1] cannot escape from the scope in which it was
defined [2] (try adding a type annotation to property `s` [3]). [escaped-generic]

   class.js:38:25
   38|       captured_this.s = z;
                               ^

References:
   class.js:37:22
   37|     function h<Z>(z: Z) {
                            ^ [1]
   class.js:37:16
   37|     function h<Z>(z: Z) {
                      ^ [2]
   class.js:29:4
   29|   s;
           [3]


Error --------------------------------------------------------------------------------------------------- class.js:39:11

Cannot assign `z` to `a` because `Z` [1] is incompatible with number [2]. All writes to `a` must be compatible with the
type of its initializer [3]. Add an annotation to `a` [3] if a different type is desired. [incompatible-type]

   class.js:39:11
   39|       a = z;
                 ^

References:
   class.js:37:22
   37|     function h<Z>(z: Z) {
                            ^ [1]
   class.js:35:13
   35|     var a = 42;
                   ^^ [2]
   class.js:35:9
   35|     var a = 42;
               ^ [3]


Error --------------------------------------------------------------------------------------------------- class.js:42:16

Cannot assign `w` to `this.s` because type variable `W` [1] cannot escape from the scope in which it was defined [2]
(try adding a type annotation to property `s` [3]). [escaped-generic]

   class.js:42:16
   42|       this.s = w;
                      ^

References:
   class.js:41:12
   41|     <W>(w: W) => {
                  ^ [1]
   class.js:41:6
   41|     <W>(w: W) => {
            ^ [2]
   class.js:29:4
   29|   s;
           [3]


Error --------------------------------------------------------------------------------------------------- class.js:43:11

Cannot assign `w` to `a` because `W` [1] is incompatible with number [2]. All writes to `a` must be compatible with the
type of its initializer [3]. Add an annotation to `a` [3] if a different type is desired. [incompatible-type]

   class.js:43:11
   43|       a = w;
                 ^

References:
   class.js:41:12
   41|     <W>(w: W) => {
                  ^ [1]
   class.js:35:13
   35|     var a = 42;
                   ^^ [2]
   class.js:35:9
   35|     var a = 42;
               ^ [3]


Error ---------------------------------------------------------------------------------------------------- class.js:45:9

Cannot assign `this.s` to `z` because `Y` [1] is incompatible with number [2]. All writes to `z` must be compatible with
the type of its initializer [3]. Add an annotation to `z` [3] if a different type is desired. [incompatible-type]

   class.js:45:9
   45|     z = this.s;
               ^^^^^^

References:
   class.js:30:11
   30|   f<Y>(y: Y, x: X) {
                 ^ [1]
   class.js:26:9
   26| var z = 42;
               ^^ [2]
   class.js:26:5
   26| var z = 42;
           ^ [3]


Error ---------------------------------------------------------------------------------------------------- class.js:45:9

Cannot assign `this.s` to `z` because `X` [1] is incompatible with number [2]. All writes to `z` must be compatible with
the type of its initializer [3]. Add an annotation to `z` [3] if a different type is desired. [incompatible-type]

   class.js:45:9
   45|     z = this.s;
               ^^^^^^

References:
   class.js:30:17
   30|   f<Y>(y: Y, x: X) {
                       ^ [1]
   class.js:26:9
   26| var z = 42;
               ^^ [2]
   class.js:26:5
   26| var z = 42;
           ^ [3]


Error ---------------------------------------------------------------------------------------------------- class.js:71:7

Cannot initialize property `a` with `this` because `this` [1] cannot escape from its class [1] (try adding a type
annotation to property `a` [2]). [escaped-generic]

   class.js:71:7
   71|   a = this;
             ^^^^

References:
   class.js:70:7
   70| class O<T> {
             ^ [1]
   class.js:71:4
   71|   a = this;
           [2]


Error --------------------------------------------------------------------------------------------------- class.js:75:14

Cannot assign `t` to `this.b` because type variable `T` [1] cannot escape from the scope in which it was defined [2]
(try adding a type annotation to property `b` [3]). [escaped-generic]

   class.js:75:14
   75|     this.b = t;
                    ^

References:
   class.js:73:8
   73|   f(t: T) {
              ^ [1]
   class.js:70:9
   70| class O<T> {
               ^ [2]
   class.js:72:4
   72|   b;
           [3]


Error --------------------------------------------------------------------------------------------------- class.js:76:12

Cannot return `t` because type variable `T` [1] cannot escape from the scope in which it was defined [2] (try adding a
type annotation to return [3]). [escaped-generic]

   class.js:76:12
   76|     return t;
                  ^

References:
   class.js:73:8
   73|   f(t: T) {
              ^ [1]
   class.js:70:9
   70| class O<T> {
               ^ [2]
   class.js:73:10
   73|   f(t: T) {
                 [3]


Error --------------------------------------------------------------------------------------------------- class.js:84:13

Cannot assign `x` to `H._wa` because type variable `T` [1] cannot escape from the scope in which it was defined [2] (try
adding a type annotation to property `_wa` [3]). [escaped-generic]

   class.js:84:13
   84|     H._wa = x;
                   ^

References:
   class.js:83:8
   83|   f(x: T) {
              ^ [1]
   class.js:80:9
   80| class H<T> {
               ^ [2]
   class.js:81:13
   81|   static _wa;
                    [3]


Error --------------------------------------------------------------------------------------------------- class.js:85:13

Cannot assign `x` to `H.#pa` because type variable `T` [1] cannot escape from the scope in which it was defined [2] (try
adding a type annotation to pa [3]). [escaped-generic]

   class.js:85:13
   85|     H.#pa = x;
                   ^

References:
   class.js:83:8
   83|   f(x: T) {
              ^ [1]
   class.js:80:9
   80| class H<T> {
               ^ [2]
   class.js:82:13
   82|   static #pa;
                    [3]


Error --------------------------------------------------------------------------------------------------- class.js:94:18

class `D` [1] contains `this` [2] which cannot escape from its class [2] (try adding a type annotation to
`globalCtor` [3]). [escaped-generic]

   class.js:94:18
   94|     globalCtor = this.constructor;
                        ^^^^ [1]

References:
   class.js:92:7
   92| class D {
             ^ [2]
   class.js:90:5
   90| let globalCtor;
           ^^^^^^^^^^ [3]


Error ------------------------------------------------------------------------------------------------------ func.js:6:7

Cannot assign `a` to `x` because `X` [1] is incompatible with number [2]. All writes to `x` must be compatible with the
type of its initializer [3]. Add an annotation to `x` [3] if a different type is desired. [incompatible-type]

   func.js:6:7
   6|   x = a; // error, X ~> escape
            ^

References:
   func.js:5:19
   5| function f1<X>(a: X): X {
                        ^ [1]
   func.js:3:9
   3| var x = 42;
              ^^ [2]
   func.js:3:5
   3| var x = 42;
          ^ [3]


Error ---------------------------------------------------------------------------------------------------- func.js:15:60

Cannot call `tostring` with `name` bound to `x` because `X` [1] contains type variable `X` [2] which cannot escape from
the scope in which it was defined [2] (try adding a type annotation to `x` [3]). [escaped-generic]

   func.js:15:60
   15| function h<X>(x: X, a: X => string = (name: X) => tostring(name)): string {
                                                                  ^^^^

References:
   func.js:15:45
   15| function h<X>(x: X, a: X => string = (name: X) => tostring(name)): string {
                                                   ^ [1]
   func.js:15:12
   15| function h<X>(x: X, a: X => string = (name: X) => tostring(name)): string {
                  ^ [2]
   func.js:10:19
   10| function tostring(x): string {
                         ^ [3]


Error ---------------------------------------------------------------------------------------------------- func.js:23:12

Cannot return `ng(...)` because mixed [1] is incompatible with `T` [2]. [incompatible-return]

   func.js:23:12
   23|     return ng(value); // no escape errors
                  ^^^^^^^^^

References:
   func.js:20:36
   20| declare function ng(value: mixed): mixed;
                                          ^^^^^ [1]
   func.js:22:42
   22|   static stableCopy<T: mixed>(value: T): T {
                                                ^ [2]


Error ---------------------------------------------------------------------------------------------------- func.js:37:10

Cannot return `x` because type variable `X` [1] cannot escape from the scope in which it was defined [2] (try adding a
type annotation to return [3]). [escaped-generic]

   func.js:37:10
   37|   return x;
                ^

References:
   func.js:35:18
   35| function o<X>(x: X) {
                        ^ [1]
   func.js:35:12
   35| function o<X>(x: X) {
                  ^ [2]
   func.js:35:20
   35| function o<X>(x: X) {
                           [3]


Error ----------------------------------------------------------------------------------------------------- func.js:44:9

Cannot assign function to `a` because function [1] is incompatible with number [2]. All writes to `a` must be compatible
with the type of its initializer [3]. Add an annotation to `a` [3] if a different type is desired. [incompatible-type]

   func.js:44:9
   44|     a = (x: X) => x;
               ^^^^^^^^^^^ [1]

References:
   func.js:40:9
   40| var a = 42;
               ^^ [2]
   func.js:40:5
   40| var a = 42;
           ^ [3]


Error ---------------------------------------------------------------------------------------------------- func.js:56:13

Cannot assign `a` to `xa[0]` because type variable `T` [1] cannot escape from the scope in which it was defined [2] (try
adding a type annotation to `xa` [3]). [escaped-generic]

   func.js:56:13
   56|     xa[0] = a;
                   ^

References:
   func.js:54:19
   54| function fa<T>(a: T, b: boolean): T {
                         ^ [1]
   func.js:54:13
   54| function fa<T>(a: T, b: boolean): T {
                   ^ [2]
   func.js:53:5
   53| var xa = [];
           ^^ [3]


Error ---------------------------------------------------------------------------------------------------- import.js:9:9

Cannot assign `id(...)` to `x` because `T` [1] is incompatible with number [2]. All writes to `x` must be compatible
with the type of its initializer [3]. Add an annotation to `x` [3] if a different type is desired. [incompatible-type]

   import.js:9:9
   9|     x = id(t);
              ^^^^^

References:
   import.js:7:18
   7| function f<T>(t: T, escape: boolean): T | number {
                       ^ [1]
   import.js:5:9
   5| var x = 42;
              ^^ [2]
   import.js:5:5
   5| var x = 42;
          ^ [3]


Error --------------------------------------------------------------------------------------------------- import.js:10:9

Cannot assign `id<...>(...)` to `x` because `T` [1] is incompatible with number [2]. All writes to `x` must be
compatible with the type of its initializer [3]. Add an annotation to `x` [3] if a different type is desired.
[incompatible-type]

   import.js:10:9
   10|     x = id<T>(t);
               ^^^^^^^^

References:
   import.js:10:12
   10|     x = id<T>(t);
                  ^ [1]
   import.js:5:9
    5| var x = 42;
               ^^ [2]
   import.js:5:5
    5| var x = 42;
           ^ [3]


Error ----------------------------------------------------------------------------------------------------- misc.js:7:12

Cannot assign `x` to `e[n]` because type variable `X` [1] cannot escape from the scope in which it was defined [2] (try
adding a type annotation to `e` [3]). [escaped-generic]

   misc.js:7:12
   7|     e[n] = x;
                 ^

References:
   misc.js:5:19
   5| function f1<X>(x: X, escape: boolean, n: number): X | number {
                        ^ [1]
   misc.js:5:13
   5| function f1<X>(x: X, escape: boolean, n: number): X | number {
                  ^ [2]
   misc.js:3:5
   3| var e = new Array(10);
          ^ [3]


Error ----------------------------------------------------------------------------------------------------- misc.js:15:7

Cannot reassign class binding `e` [1]. [cannot-reassign]

   misc.js:15:7
   15|       e = x;
             ^

References:
   misc.js:12:15
   12| var c = class e {
                     ^ [1]


Error ---------------------------------------------------------------------------------------------------- misc.js:17:12

Cannot return `e` because: [incompatible-return]
 - Either class `e` [1] is incompatible with `X` [2].
 - Or `e` [1] is incompatible with `this` [3].

   misc.js:17:12
   17|     return e;
                  ^

References:
   misc.js:12:9
               v--------
   12| var c = class e {
   13|   f<X>(x: X, escape: boolean): X | Class<this> {
   14|     if (escape) {
   15|       e = x;
   16|     }
   17|     return e;
   18|   }
   19| };
       ^ [1]
   misc.js:13:32
   13|   f<X>(x: X, escape: boolean): X | Class<this> {
                                      ^ [2]
   misc.js:13:42
   13|   f<X>(x: X, escape: boolean): X | Class<this> {
                                                ^^^^ [3]


Error ---------------------------------------------------------------------------------------------------- misc.js:25:11

Cannot assign `x` to `a.x` because type variable `X` [1] cannot escape from the scope in which it was defined [2] (try
adding a type annotation to `a` [3]). [escaped-generic]

   misc.js:25:11
   25|     a.x = x;
                 ^

References:
   misc.js:23:19
   23| function f2<X>(x: X, escape: boolean): X | number {
                         ^ [1]
   misc.js:23:13
   23| function f2<X>(x: X, escape: boolean): X | number {
                   ^ [2]
   misc.js:21:5
   21| var a = Object.create(null, {x: {value: 42}});
           ^ [3]


Error ---------------------------------------------------------------------------------------------------- misc.js:34:13

Cannot assign `x` to `a2[n]` because type variable `X` [1] cannot escape from the scope in which it was defined [2] (try
adding a type annotation to `a2` [3]). [escaped-generic]

   misc.js:34:13
   34|     a2[n] = x;
                   ^

References:
   misc.js:32:19
   32| function f3<X>(x: X, escape: boolean, n: number): X | string {
                         ^ [1]
   misc.js:32:13
   32| function f3<X>(x: X, escape: boolean, n: number): X | string {
                   ^ [2]
   misc.js:30:5
   30| var a2 = Object.keys({x: 42});
           ^^ [3]


Error ----------------------------------------------------------------------------------------------------- misc.js:42:7

Cannot reassign function binding `g` [1]. [cannot-reassign]

   misc.js:42:7
   42|       g = x;
             ^

References:
   misc.js:40:12
   40|   function g<X>(x: X): X | ((boolean, number) => void) {
                  ^ [1]


Error ---------------------------------------------------------------------------------------------------- misc.js:44:12

Cannot return `g` because undefined [1] is incompatible with boolean [2] in the first parameter. [incompatible-return]

   misc.js:44:12
   44|     return g;
                  ^

References:
   misc.js:40:50
   40|   function g<X>(x: X): X | ((boolean, number) => void) {
                                                        ^^^^ [1]
   misc.js:40:30
   40|   function g<X>(x: X): X | ((boolean, number) => void) {
                                    ^^^^^^^ [2]


Error ----------------------------------------------------------------------------------------------------- misc.js:53:5

Cannot reassign class binding `C` [1]. [cannot-reassign]

   misc.js:53:5
   53|     C = x;
           ^

References:
   misc.js:49:7
   49| class C {}
             ^ [1]


Error ----------------------------------------------------------------------------------------------------- misc.js:61:7

Cannot reassign class binding `D` [1]. [cannot-reassign]

   misc.js:61:7
   61|       D = x;
             ^

References:
   misc.js:58:7
   58| class D {
             ^ [1]


Error ---------------------------------------------------------------------------------------------------- misc.js:63:12

Cannot return `D` because class `D` [1] is incompatible with `X` [2]. [incompatible-return]

   misc.js:63:12
   63|     return D;
                  ^

References:
   misc.js:58:7
   58| class D {
             ^ [1]
   misc.js:59:32
   59|   f<X>(x: X, escape: boolean): X {
                                      ^ [2]


Error ----------------------------------------------------------------------------------------------------- misc.js:69:9

Cannot assign `x` to `u` because `X` [1] is incompatible with number [2]. All writes to `u` must be compatible with the
type of its initializer [3]. Add an annotation to `u` [3] if a different type is desired. [incompatible-type]

   misc.js:69:9
   69|     u = x;
               ^

References:
   misc.js:67:17
   67| var u = (<X>(x: X, escape: boolean): X => {
                       ^ [1]
   misc.js:72:4
   72| })(42, true);
          ^^ [2]
   misc.js:67:5
   67| var u = (<X>(x: X, escape: boolean): X => {
           ^ [3]


Error ---------------------------------------------------------------------------------------------------- misc.js:71:10

Cannot return `u` because number [1] is incompatible with `X` [2]. [incompatible-return]

   misc.js:71:10
   71|   return u;
                ^

References:
   misc.js:72:4
   72| })(42, true);
          ^^ [1]
   misc.js:67:38
   67| var u = (<X>(x: X, escape: boolean): X => {
                                            ^ [2]


Error ---------------------------------------------------------------------------------------------------- misc.js:78:12

Cannot assign `x` to `a3.x` because type variable `X` [1] cannot escape from the scope in which it was defined [2] (try
adding a type annotation to `a3` [3]). [escaped-generic]

   misc.js:78:12
   78|     a3.x = x;
                  ^

References:
   misc.js:76:19
   76| function f6<X>(x: X, escape: boolean): X | void {
                         ^ [1]
   misc.js:76:13
   76| function f6<X>(x: X, escape: boolean): X | void {
                   ^ [2]
   misc.js:74:5
   74| var a3 = {};
           ^^ [3]


Error ---------------------------------------------------------------------------------------------------- misc.js:87:12

Cannot assign `x` to `a4.x` because type variable `X` [1] cannot escape from the scope in which it was defined [2] (try
adding a type annotation to `a4` [3]). [escaped-generic]

   misc.js:87:12
   87|     a4.x = x;
                  ^

References:
   misc.js:85:19
   85| function f7<X>(x: X, escape: boolean): X | void {
                         ^ [1]
   misc.js:85:13
   85| function f7<X>(x: X, escape: boolean): X | void {
                   ^ [2]
   misc.js:83:5
   83| var a4 = () => 42;
           ^^ [3]


Error ---------------------------------------------------------------------------------------------------- misc.js:96:12

Cannot assign `x` to `a5.x` because type variable `X` [1] cannot escape from the scope in which it was defined [2] (try
adding a type annotation to `a5` [3]). [escaped-generic]

   misc.js:96:12
   96|     a5.x = x;
                  ^

References:
   misc.js:94:19
   94| function f8<X>(x: X, escape: boolean): X | void {
                         ^ [1]
   misc.js:94:13
   94| function f8<X>(x: X, escape: boolean): X | void {
                   ^ [2]
   misc.js:92:5
   92| var a5 = Object.create(null);
           ^^ [3]


Error --------------------------------------------------------------------------------------------------- misc.js:109:14

Cannot assign `x` to `a8.b` because type variable `X` [1] cannot escape from the scope in which it was defined [2].
[escaped-generic]

   misc.js:109:14
   109|       a8.b = x;
                     ^

References:
   misc.js:107:20
   107|   function g<X>(x: X): ?X {
                           ^ [1]
   misc.js:107:14
   107|   function g<X>(x: X): ?X {
                     ^ [2]


Error --------------------------------------------------------------------------------------------------- misc.js:118:10

Cannot assign `y` to `x0` because `X` [1] is incompatible with variable `x0` of unknown type [2]. All writes to `x0`
must be compatible with the type of its initializer [2]. Add an annotation to `x0` [2] if a different type is desired.
[incompatible-type]

   misc.js:118:10
   118|     x0 = y;
                 ^

References:
   misc.js:117:20
   117|   function f<X>(y: X) {
                           ^ [1]
   misc.js:116:10
   116| for (var x0 of []) {
                 ^^ [2]


Error --------------------------------------------------------------------------------------------------- misc.js:124:10

Cannot assign `y` to `x1` because `X` [1] is incompatible with variable `x1` of unknown type [2]. All writes to `x1`
must be compatible with the type of its initializer [2]. Add an annotation to `x1` [2] if a different type is desired.
[incompatible-type]

   misc.js:124:10
   124|     x1 = y;
                 ^

References:
   misc.js:123:20
   123|   function f<X>(y: X) {
                           ^ [1]
   misc.js:122:11
   122| for (var [x1] of []) {
                  ^^ [2]


Error --------------------------------------------------------------------------------------------------- misc.js:130:10

Cannot assign `y` to `x2` because `X` [1] is incompatible with variable `x2` of unknown type [2]. All writes to `x2`
must be compatible with the type of its initializer [2]. Add an annotation to `x2` [2] if a different type is desired.
[incompatible-type]

   misc.js:130:10
   130|     x2 = y;
                 ^

References:
   misc.js:129:20
   129|   function f<X>(y: X) {
                           ^ [1]
   misc.js:128:14
   128| for (var [...x2] of []) {
                     ^^ [2]


Error --------------------------------------------------------------------------------------------------- misc.js:136:10

Cannot assign `y` to `x3` because `X` [1] is incompatible with variable `x3` of unknown type [2]. All writes to `x3`
must be compatible with the type of its initializer [2]. Add an annotation to `x3` [2] if a different type is desired.
[incompatible-type]

   misc.js:136:10
   136|     x3 = y;
                 ^

References:
   misc.js:135:20
   135|   function f<X>(y: X) {
                           ^ [1]
   misc.js:134:14
   134| for (var {...x3} of []) {
                     ^^ [2]


Error ---------------------------------------------------------------------------------------------------- misc.js:148:9

Cannot assign `y` to `x` because type variable `X` [1] cannot escape from the scope in which it was defined [2].
[escaped-generic]

   misc.js:148:9
   148|     x = y;
                ^

References:
   misc.js:147:20
   147|   function f<X>(y: X) {
                           ^ [1]
   misc.js:147:14
   147|   function f<X>(y: X) {
                     ^ [2]


Error --------------------------------------------------------------------------------------------------- misc.js:168:11

Cannot assign `x` to `aaa` because object type [1] is incompatible with number [2]. All writes to `aaa` must be
compatible with the type of its initializer [3]. Add an annotation to `aaa` [3] if a different type is desired.
[incompatible-type]

   misc.js:168:11
   168|     aaa = x;
                  ^

References:
   misc.js:167:30
   167| function foo<T: {}>(x: $Diff<T, {}>) {
                                     ^ [1]
   misc.js:166:11
   166| var aaa = 1;
                  ^ [2]
   misc.js:166:5
   166| var aaa = 1;
            ^^^ [3]


Error --------------------------------------------------------------------------------------------------- misc.js:173:11

Cannot assign `t` to `x4[0]` because type variable `T` [1] cannot escape from the scope in which it was defined [2] (try
adding a type annotation to `x4` [3]). [escaped-generic]

   misc.js:173:11
   173|   x4[0] = t;
                  ^

References:
   misc.js:172:18
   172| function f<T>(t: T) {
                         ^ [1]
   misc.js:172:12
   172| function f<T>(t: T) {
                   ^ [2]
   misc.js:171:5
   171| var x4 = [];
            ^^ [3]


Error ----------------------------------------------------------------------------------------------- nonprivate.js:7:12

Cannot return `x` because type variable `X` [1] cannot escape from the scope in which it was defined [2] (try adding a
type annotation to return [3]). [escaped-generic]

   nonprivate.js:7:12
   7|     return x;
                 ^

References:
   nonprivate.js:6:9
   6|   _h(x: X) {
              ^ [1]
   nonprivate.js:4:9
   4| class I<X> {
              ^ [2]
   nonprivate.js:6:11
   6|   _h(x: X) {
                 [3]


Error ---------------------------------------------------------------------------------------------- nonprivate.js:10:15

Cannot assign `x` to `this._f` because type variable `X` [1] cannot escape from the scope in which it was defined [2]
(try adding a type annotation to property `_f` [3]). [escaped-generic]

   nonprivate.js:10:15
   10|     this._f = x;
                     ^

References:
   nonprivate.js:9:8
    9|   g(x: X) {
              ^ [1]
   nonprivate.js:4:9
    4| class I<X> {
               ^ [2]
   nonprivate.js:5:5
    5|   _f;
            [3]


Error ----------------------------------------------------------------------------------------------------- pred.js:9:44

Type variable `X` [1] cannot escape from the scope in which it was defined [2]. [escaped-generic]

   pred.js:9:44
   9| declare function g<X>(x: X): mixed %checks(x);
                                                 ^

References:
   pred.js:9:26
   9| declare function g<X>(x: X): mixed %checks(x);
                               ^ [1]
   pred.js:9:20
   9| declare function g<X>(x: X): mixed %checks(x);
                         ^ [2]


Error --------------------------------------------------------------------------------------------------- spreads.js:5:9

Cannot spread object literal because type variable `X` [1] cannot escape from the scope in which it was defined [2] (try
adding a type annotation to `esc` [3]). [escaped-generic]

   spreads.js:5:9
   5|   esc = {...x, ...y};
              ^^^^^^^^^^^^ [1]

References:
   spreads.js:4:13
   4| function hh<X: {}, Y: {}>(x: X, y: Y) {
                  ^ [2]
   spreads.js:3:5
   3| var esc;
          ^^^ [3]


Error --------------------------------------------------------------------------------------------------- spreads.js:5:9

Cannot spread object literal because type variable `Y` [1] cannot escape from the scope in which it was defined [2] (try
adding a type annotation to `esc` [3]). [escaped-generic]

   spreads.js:5:9
   5|   esc = {...x, ...y};
              ^^^^^^^^^^^^ [1]

References:
   spreads.js:4:20
   4| function hh<X: {}, Y: {}>(x: X, y: Y) {
                         ^ [2]
   spreads.js:3:5
   3| var esc;
          ^^^ [3]



Found 56 errors

Only showing the most relevant union/intersection branches.
To see all branches, re-run Flow with --show-all-branches
