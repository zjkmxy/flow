"use strict";(self.webpackChunknew_website=self.webpackChunknew_website||[]).push([[3928],{13928:(e,n,a)=>{a.r(n),a.d(n,{assets:()=>s,contentTitle:()=>r,default:()=>u,frontMatter:()=>o,metadata:()=>l,toc:()=>p});var t=a(58168),i=(a(96540),a(15680));a(60681);const o={title:"Maybe Types",slug:"/types/maybe"},r=void 0,l={unversionedId:"types/maybe",id:"types/maybe",title:"Maybe Types",description:"You can prefix a type with ? to make it a union with null and void:",source:"@site/docs/types/maybe.md",sourceDirName:"types",slug:"/types/maybe",permalink:"/en/docs/types/maybe",draft:!1,editUrl:"https://github.com/facebook/flow/edit/main/website/docs/types/maybe.md",tags:[],version:"current",frontMatter:{title:"Maybe Types",slug:"/types/maybe"},sidebar:"docsSidebar",previous:{title:"Any",permalink:"/en/docs/types/any"},next:{title:"Functions",permalink:"/en/docs/types/functions"}},s={},p=[{value:"Refining maybe types",id:"toc-refining-maybe-types",level:2}],m={toc:p};function u(e){let{components:n,...a}=e;return(0,i.mdx)("wrapper",(0,t.A)({},m,a,{components:n,mdxType:"MDXLayout"}),(0,i.mdx)("p",null,"You can prefix a type with ",(0,i.mdx)("inlineCode",{parentName:"p"},"?")," to make it a ",(0,i.mdx)("a",{parentName:"p",href:"../unions"},"union")," with ",(0,i.mdx)("inlineCode",{parentName:"p"},"null")," and ",(0,i.mdx)("inlineCode",{parentName:"p"},"void"),":\n",(0,i.mdx)("inlineCode",{parentName:"p"},"?T")," is equivalent to the union ",(0,i.mdx)("inlineCode",{parentName:"p"},"T | null | void"),"."),(0,i.mdx)("p",null,"For example, ",(0,i.mdx)("inlineCode",{parentName:"p"},"?number")," is equivalent to ",(0,i.mdx)("inlineCode",{parentName:"p"},"number | null | void"),", and allows for numbers, ",(0,i.mdx)("inlineCode",{parentName:"p"},"null"),", and ",(0,i.mdx)("inlineCode",{parentName:"p"},"undefined"),' as values. It\'s "maybe" a number.'),(0,i.mdx)("pre",null,(0,i.mdx)("code",{parentName:"pre",className:"language-flow",metastring:'[{"startLine":9,"startColumn":20,"endLine":9,"endColumn":23,"description":"Cannot call `acceptsMaybeNumber` with `\\"42\\"` bound to `value` because string [1] is incompatible with number [2]. [incompatible-call]"}]','[{"startLine":9,"startColumn":20,"endLine":9,"endColumn":23,"description":"Cannot':!0,call:!0,"`acceptsMaybeNumber`":!0,with:!0,'`\\"42\\"`':!0,bound:!0,to:!0,"`value`":!0,because:!0,string:!0,"[1]":!0,is:!0,incompatible:!0,number:!0,"[2].":!0,'[incompatible-call]"}]':!0},'function acceptsMaybeNumber(value: ?number) {\n  // ...\n}\n\nacceptsMaybeNumber(42);        // Works!\nacceptsMaybeNumber();          // Works! (implicitly undefined)\nacceptsMaybeNumber(undefined); // Works!\nacceptsMaybeNumber(null);      // Works!\nacceptsMaybeNumber("42");      // Error!\n')),(0,i.mdx)("p",null,"In the case of objects, a ",(0,i.mdx)("strong",{parentName:"p"},"missing")," property is not the same thing as an explicitly ",(0,i.mdx)("inlineCode",{parentName:"p"},"undefined")," property."),(0,i.mdx)("pre",null,(0,i.mdx)("code",{parentName:"pre",className:"language-flow",metastring:'[{"startLine":6,"startColumn":18,"endLine":6,"endColumn":19,"description":"Cannot call `acceptsMaybeProp` with object literal bound to the first parameter because property `value` is missing in object literal [1] but exists in object type [2]. [prop-missing]"}]','[{"startLine":6,"startColumn":18,"endLine":6,"endColumn":19,"description":"Cannot':!0,call:!0,"`acceptsMaybeProp`":!0,with:!0,object:!0,literal:!0,bound:!0,to:!0,the:!0,first:!0,parameter:!0,because:!0,property:!0,"`value`":!0,is:!0,missing:!0,in:!0,"[1]":!0,but:!0,exists:!0,type:!0,"[2].":!0,'[prop-missing]"}]':!0},"function acceptsMaybeProp({value}: {value: ?number}) {\n  // ...\n}\n\nacceptsMaybeProp({value: undefined}); // Works!\nacceptsMaybeProp({});                 // Error!\n")),(0,i.mdx)("p",null,"If you want to allow missing properties, use ",(0,i.mdx)("a",{parentName:"p",href:"../objects/#toc-optional-object-type-properties"},"optional property")," syntax, where the ",(0,i.mdx)("inlineCode",{parentName:"p"},"?")," is placed ",(0,i.mdx)("em",{parentName:"p"},"before")," the colon.\nIt is also possible to combine both syntaxes for an optional maybe type, for example ",(0,i.mdx)("inlineCode",{parentName:"p"},"{value?: ?number}"),"."),(0,i.mdx)("h2",{id:"toc-refining-maybe-types"},"Refining maybe types"),(0,i.mdx)("p",null,"Imagine we have the type ",(0,i.mdx)("inlineCode",{parentName:"p"},"?number"),", if we want to use that value as a ",(0,i.mdx)("inlineCode",{parentName:"p"},"number"),"\nwe'll need to first check that it is not ",(0,i.mdx)("inlineCode",{parentName:"p"},"null")," or ",(0,i.mdx)("inlineCode",{parentName:"p"},"undefined"),"."),(0,i.mdx)("pre",null,(0,i.mdx)("code",{parentName:"pre",className:"language-flow",metastring:"[]","[]":!0},"function acceptsMaybeNumber(value: ?number): number {\n  if (value !== null && value !== undefined) {\n    return value * 2;\n  }\n  return 0;\n}\n")),(0,i.mdx)("p",null,"You can simplify the two checks against ",(0,i.mdx)("inlineCode",{parentName:"p"},"null")," and ",(0,i.mdx)("inlineCode",{parentName:"p"},"undefined")," using a single\n",(0,i.mdx)("inlineCode",{parentName:"p"},"!= null")," check which will do both."),(0,i.mdx)("pre",null,(0,i.mdx)("code",{parentName:"pre",className:"language-flow",metastring:"[]","[]":!0},"function acceptsMaybeNumber(value: ?number): number {\n  if (value != null) {\n    return value * 2;\n  }\n  return 0;\n}\n")),(0,i.mdx)("p",null,"Most double equal checks are discouraged in JavaScript, but the above pattern is safe (it checks for exactly ",(0,i.mdx)("inlineCode",{parentName:"p"},"null")," and ",(0,i.mdx)("inlineCode",{parentName:"p"},"undefined"),")."),(0,i.mdx)("p",null,"You could also flip it around, and check to make sure that the value has a type\nof ",(0,i.mdx)("inlineCode",{parentName:"p"},"number")," before using it."),(0,i.mdx)("pre",null,(0,i.mdx)("code",{parentName:"pre",className:"language-flow",metastring:"[]","[]":!0},"function acceptsMaybeNumber(value: ?number): number {\n  if (typeof value === 'number') {\n    return value * 2;\n  }\n  return 0;\n}\n")),(0,i.mdx)("p",null,"However, type refinements can be lost. For instance, calling a function after refining the type of an object's property will invalidate this refinement.\nConsult the ",(0,i.mdx)("a",{parentName:"p",href:"../../lang/refinements/#toc-refinement-invalidations"},"refinement invalidations")," docs for more details, to understand why Flow works this way,\nand how you can avoid this common pitfall."))}u.isMDXComponent=!0}}]);