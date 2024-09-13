"use strict";(self.webpackChunknew_website=self.webpackChunknew_website||[]).push([[9774],{49774:(e,n,a)=>{a.r(n),a.d(n,{assets:()=>l,contentTitle:()=>i,default:()=>m,frontMatter:()=>o,metadata:()=>s,toc:()=>c});var t=a(58168),r=(a(96540),a(15680));a(60681);const o={title:"Interfaces",slug:"/types/interfaces"},i=void 0,s={unversionedId:"types/interfaces",id:"types/interfaces",title:"Interfaces",description:"Classes in Flow are nominally typed. This means that when you have two separate",source:"@site/docs/types/interfaces.md",sourceDirName:"types",slug:"/types/interfaces",permalink:"/en/docs/types/interfaces",draft:!1,editUrl:"https://github.com/facebook/flow/edit/main/website/docs/types/interfaces.md",tags:[],version:"current",frontMatter:{title:"Interfaces",slug:"/types/interfaces"},sidebar:"docsSidebar",previous:{title:"Opaque Type Aliases",permalink:"/en/docs/types/opaque-types"},next:{title:"Generics",permalink:"/en/docs/types/generics"}},l={},c=[{value:"Interface Syntax",id:"toc-interface-syntax",level:2},{value:"Interface Methods",id:"toc-interface-methods",level:3},{value:"Interface Properties",id:"toc-interface-properties",level:3},{value:"Interfaces as maps",id:"toc-interfaces-as-maps",level:3},{value:"Interface Generics",id:"toc-interface-generics",level:3},{value:"Interface property variance (read-only and write-only)",id:"toc-interface-property-variance-read-only-and-write-only",level:2},{value:"Covariant (read-only) properties on interfaces",id:"toc-covariant-read-only-properties-on-interfaces",level:4},{value:"Contravariant (write-only) properties on interfaces",id:"toc-contravariant-write-only-properties-on-interfaces",level:4}],p={toc:c};function m(e){let{components:n,...a}=e;return(0,r.mdx)("wrapper",(0,t.A)({},p,a,{components:n,mdxType:"MDXLayout"}),(0,r.mdx)("p",null,(0,r.mdx)("a",{parentName:"p",href:"../classes"},"Classes")," in Flow are ",(0,r.mdx)("a",{parentName:"p",href:"../../lang/nominal-structural"},"nominally typed"),". This means that when you have two separate\nclasses you cannot use one in place of the other even when they have the same\nexact properties and methods:"),(0,r.mdx)("pre",null,(0,r.mdx)("code",{parentName:"pre",className:"language-flow",metastring:'[{"startLine":9,"startColumn":18,"endLine":9,"endColumn":26,"description":"Cannot assign `new Bar()` to `foo` because `Bar` [1] is incompatible with `Foo` [2]. [incompatible-type]"}]','[{"startLine":9,"startColumn":18,"endLine":9,"endColumn":26,"description":"Cannot':!0,assign:!0,"`new":!0,"Bar()`":!0,to:!0,"`foo`":!0,because:!0,"`Bar`":!0,"[1]":!0,is:!0,incompatible:!0,with:!0,"`Foo`":!0,"[2].":!0,'[incompatible-type]"}]':!0},"class Foo {\n  serialize(): string { return '[Foo]'; }\n}\n\nclass Bar {\n  serialize(): string { return '[Bar]'; }\n}\n\nconst foo: Foo = new Bar(); // Error!\n")),(0,r.mdx)("p",null,"Instead, you can use ",(0,r.mdx)("inlineCode",{parentName:"p"},"interface")," in order to declare the structure of the class\nthat you are expecting."),(0,r.mdx)("pre",null,(0,r.mdx)("code",{parentName:"pre",className:"language-flow",metastring:"[]","[]":!0},"interface Serializable {\n  serialize(): string;\n}\n\nclass Foo {\n  serialize(): string { return '[Foo]'; }\n}\n\nclass Bar {\n  serialize(): string { return '[Bar]'; }\n}\n\nconst foo: Serializable = new Foo(); // Works!\nconst bar: Serializable = new Bar(); // Works!\n")),(0,r.mdx)("p",null,"You can also declare an anonymous interface:"),(0,r.mdx)("pre",null,(0,r.mdx)("code",{parentName:"pre",className:"language-flow",metastring:"[]","[]":!0},"class Foo {\n  a: number;\n}\n\nfunction getNumber(o: interface {a: number}): number {\n  return o.a;\n}\n\ngetNumber(new Foo()); // Works!\n")),(0,r.mdx)("p",null,"You can also use ",(0,r.mdx)("inlineCode",{parentName:"p"},"implements")," to tell Flow that you want the class to match an\ninterface. This prevents you from making incompatible changes when editing the\nclass."),(0,r.mdx)("pre",null,(0,r.mdx)("code",{parentName:"pre",className:"language-flow",metastring:'[{"startLine":10,"startColumn":16,"endLine":10,"endColumn":21,"description":"Cannot implement `Serializable` [1] with `Bar` because number [2] is incompatible with string [3] in the return value of property `serialize`. [incompatible-type]"}]','[{"startLine":10,"startColumn":16,"endLine":10,"endColumn":21,"description":"Cannot':!0,implement:!0,"`Serializable`":!0,"[1]":!0,with:!0,"`Bar`":!0,because:!0,number:!0,"[2]":!0,is:!0,incompatible:!0,string:!0,"[3]":!0,in:!0,the:!0,return:!0,value:!0,of:!0,property:!0,"`serialize`.":!0,'[incompatible-type]"}]':!0},"interface Serializable {\n  serialize(): string;\n}\n\nclass Foo implements Serializable {\n  serialize(): string { return '[Foo]'; } // Works!\n}\n\nclass Bar implements Serializable {\n  serialize(): number { return 42; } // Error!\n}\n")),(0,r.mdx)("p",null,"You can also use ",(0,r.mdx)("inlineCode",{parentName:"p"},"implements")," with multiple interfaces."),(0,r.mdx)("pre",null,(0,r.mdx)("code",{parentName:"pre",className:"language-js"},"class Foo implements Bar, Baz {\n  // ...\n}\n")),(0,r.mdx)("p",null,"Interfaces can describe both instances and objects, unlike object types which can only describe objects:"),(0,r.mdx)("pre",null,(0,r.mdx)("code",{parentName:"pre",className:"language-flow",metastring:'[{"startLine":17,"startColumn":12,"endLine":17,"endColumn":14,"description":"Cannot call `acceptsObj` with `foo` bound to `x` because `Foo` [1] is not a subtype of object type [2]. Class instances are not subtypes of object types; consider rewriting object type [2] as an interface. [class-object-subtyping]"}]','[{"startLine":17,"startColumn":12,"endLine":17,"endColumn":14,"description":"Cannot':!0,call:!0,"`acceptsObj`":!0,with:!0,"`foo`":!0,bound:!0,to:!0,"`x`":!0,because:!0,"`Foo`":!0,"[1]":!0,is:!0,not:!0,a:!0,subtype:!0,of:!0,object:!0,type:!0,"[2].":!0,Class:!0,instances:!0,are:!0,subtypes:!0,"types;":!0,consider:!0,rewriting:!0,"[2]":!0,as:!0,an:!0,"interface.":!0,'[class-object-subtyping]"}]':!0},"class Foo {\n  a: number;\n}\nconst foo = new Foo();\nconst o: {a: number} = {a: 1};\n\ninterface MyInterface {\n  a: number;\n}\n\nfunction acceptsMyInterface(x: MyInterface) { /* ... */ }\nacceptsMyInterface(o); // Works!\nacceptsMyInterface(foo); // Works!\n\nfunction acceptsObj(x: {a: number, ...}) { /* ... */ }\nacceptsObj(o); // Works!\nacceptsObj(foo); // Error!\n")),(0,r.mdx)("p",null,"Unlike objects, interfaces cannot be ",(0,r.mdx)("a",{parentName:"p",href:"../objects/#exact-and-inexact-object-types"},"exact"),", as they can always have other, unknown properties."),(0,r.mdx)("h2",{id:"toc-interface-syntax"},"Interface Syntax"),(0,r.mdx)("p",null,"Interfaces are created using the keyword ",(0,r.mdx)("inlineCode",{parentName:"p"},"interface")," followed by its name and\na block which contains the body of the type definition."),(0,r.mdx)("pre",null,(0,r.mdx)("code",{parentName:"pre",className:"language-flow",metastring:"[]","[]":!0},"interface MyInterface {\n  // ...\n}\n")),(0,r.mdx)("p",null,"The syntax of the block matches the syntax of object types."),(0,r.mdx)("h3",{id:"toc-interface-methods"},"Interface Methods"),(0,r.mdx)("p",null,"You can add methods to interfaces following the same syntax as class methods. Any ",(0,r.mdx)("a",{parentName:"p",href:"../functions/#this-parameter"},(0,r.mdx)("inlineCode",{parentName:"a"},"this")," parameters")," you\nprovide are also subject to the same restrictions as class methods."),(0,r.mdx)("pre",null,(0,r.mdx)("code",{parentName:"pre",className:"language-flow",metastring:"[]","[]":!0},"interface MyInterface {\n  method(value: string): number;\n}\n")),(0,r.mdx)("p",null,"Also like ",(0,r.mdx)("a",{parentName:"p",href:"../classes#toc-class-methods"},"class methods"),", interface methods must also remain bound to the interface on which they were defined."),(0,r.mdx)("p",null,"You can define ",(0,r.mdx)("a",{parentName:"p",href:"../intersections/#declaring-overloaded-functions"},"overloaded methods")," by declaring the same method name multiple times with different type signatures:"),(0,r.mdx)("pre",null,(0,r.mdx)("code",{parentName:"pre",className:"language-flow",metastring:'[{"startLine":10,"startColumn":22,"endLine":10,"endColumn":35,"description":"Cannot assign `a.method(...)` to `z` because string [1] is incompatible with boolean [2]. [incompatible-type]"}]','[{"startLine":10,"startColumn":22,"endLine":10,"endColumn":35,"description":"Cannot':!0,assign:!0,"`a.method(...)`":!0,to:!0,"`z`":!0,because:!0,string:!0,"[1]":!0,is:!0,incompatible:!0,with:!0,boolean:!0,"[2].":!0,'[incompatible-type]"}]':!0},"interface MyInterface {\n  method(value: string): string;\n  method(value: boolean): boolean;\n}\n\nfunction func(a: MyInterface) {\n  const x: string = a.method('hi'); // Works!\n  const y: boolean = a.method(true); // Works!\n\n  const z: boolean = a.method('hi'); // Error!\n}\n")),(0,r.mdx)("h3",{id:"toc-interface-properties"},"Interface Properties"),(0,r.mdx)("p",null,"You can add properties to interfaces following the same syntax as class\nproperties:"),(0,r.mdx)("pre",null,(0,r.mdx)("code",{parentName:"pre",className:"language-flow",metastring:"[]","[]":!0},"interface MyInterface {\n  property: string;\n}\n")),(0,r.mdx)("p",null,"Interface properties can be optional as well:"),(0,r.mdx)("pre",null,(0,r.mdx)("code",{parentName:"pre",className:"language-flow",metastring:"[]","[]":!0},"interface MyInterface {\n  property?: string;\n}\n")),(0,r.mdx)("h3",{id:"toc-interfaces-as-maps"},"Interfaces as maps"),(0,r.mdx)("p",null,"You can create ",(0,r.mdx)("a",{parentName:"p",href:"../objects#toc-objects-as-maps"},"indexer properties")," the same\nway as with objects:"),(0,r.mdx)("pre",null,(0,r.mdx)("code",{parentName:"pre",className:"language-flow",metastring:"[]","[]":!0},"interface MyInterface {\n  [key: string]: number;\n}\n")),(0,r.mdx)("h3",{id:"toc-interface-generics"},"Interface Generics"),(0,r.mdx)("p",null,"Interfaces can also have their own ",(0,r.mdx)("a",{parentName:"p",href:"../generics/"},"generics"),":"),(0,r.mdx)("pre",null,(0,r.mdx)("code",{parentName:"pre",className:"language-flow",metastring:"[]","[]":!0},"interface MyInterface<A, B, C> {\n  property: A;\n  method(val: B): C;\n}\n")),(0,r.mdx)("p",null,"Interface generics are ",(0,r.mdx)("a",{parentName:"p",href:"../generics#toc-parameterized-generics"},"parameterized"),".\nWhen you use an interface you need to pass parameters for each of its generics:"),(0,r.mdx)("pre",null,(0,r.mdx)("code",{parentName:"pre",className:"language-flow",metastring:"[]","[]":!0},"interface MyInterface<A, B, C> {\n  foo: A;\n  bar: B;\n  baz: C;\n}\n\nconst val: MyInterface<number, boolean, string> = {\n  foo: 1,\n  bar: true,\n  baz: 'three',\n};\n")),(0,r.mdx)("h2",{id:"toc-interface-property-variance-read-only-and-write-only"},"Interface property variance (read-only and write-only)"),(0,r.mdx)("p",null,"Interface properties are ",(0,r.mdx)("a",{parentName:"p",href:"../../lang/variance/"},"invariant")," by default. But you\ncan add modifiers to make them covariant (read-only) or contravariant\n(write-only)."),(0,r.mdx)("pre",null,(0,r.mdx)("code",{parentName:"pre",className:"language-flow",metastring:"[]","[]":!0},"interface MyInterface {\n  +covariant: number;     // read-only\n  -contravariant: number; // write-only\n}\n")),(0,r.mdx)("h4",{id:"toc-covariant-read-only-properties-on-interfaces"},"Covariant (read-only) properties on interfaces"),(0,r.mdx)("p",null,"You can make a property covariant by adding a plus symbol ",(0,r.mdx)("inlineCode",{parentName:"p"},"+")," in front of the\nproperty name:"),(0,r.mdx)("pre",null,(0,r.mdx)("code",{parentName:"pre",className:"language-flow",metastring:"[]","[]":!0},"interface MyInterface {\n  +readOnly: number | string;\n}\n")),(0,r.mdx)("p",null,"This allows you to pass a more specific type in place of that property:"),(0,r.mdx)("pre",null,(0,r.mdx)("code",{parentName:"pre",className:"language-flow",metastring:'[{"startLine":11,"startColumn":27,"endLine":11,"endColumn":27,"description":"Cannot assign `x` to `value1` because string [1] is incompatible with number [2] in property `property`. This property is invariantly typed. See https://flow.org/en/docs/faq/#why-cant-i-pass-a-string-to-a-function-that-takes-a-string-number. [incompatible-type]"}]','[{"startLine":11,"startColumn":27,"endLine":11,"endColumn":27,"description":"Cannot':!0,assign:!0,"`x`":!0,to:!0,"`value1`":!0,because:!0,string:!0,"[1]":!0,is:!0,incompatible:!0,with:!0,number:!0,"[2]":!0,in:!0,property:!0,"`property`.":!0,This:!0,invariantly:!0,"typed.":!0,See:!0,"https://flow.org/en/docs/faq/#why-cant-i-pass-a-string-to-a-function-that-takes-a-string-number.":!0,'[incompatible-type]"}]':!0},"interface Invariant {\n  property: number | string;\n}\ninterface Covariant {\n  +readOnly: number | string;\n}\n\nconst x: {property: number} = {property: 42};\nconst y: {readOnly: number} = {readOnly: 42};\n\nconst value1: Invariant = x; // Error!\nconst value2: Covariant = y; // Works\n")),(0,r.mdx)("p",null,"Because of how covariance works, covariant properties also become read-only\nwhen used. Which can be useful over normal properties."),(0,r.mdx)("pre",null,(0,r.mdx)("code",{parentName:"pre",className:"language-flow",metastring:'[{"startLine":15,"startColumn":9,"endLine":15,"endColumn":16,"description":"Cannot assign `3.14` to `value.readOnly` because property `readOnly` is not writable. [cannot-write]"}]','[{"startLine":15,"startColumn":9,"endLine":15,"endColumn":16,"description":"Cannot':!0,assign:!0,"`3.14`":!0,to:!0,"`value.readOnly`":!0,because:!0,property:!0,"`readOnly`":!0,is:!0,not:!0,"writable.":!0,'[cannot-write]"}]':!0},"interface Invariant {\n  property: number | string;\n}\ninterface Covariant {\n  +readOnly: number | string;\n}\n\nfunction func1(value: Invariant) {\n  value.property;        // Works!\n  value.property = 3.14; // Works!\n}\n\nfunction func2(value: Covariant) {\n  value.readOnly;        // Works!\n  value.readOnly = 3.14; // Error!\n}\n")),(0,r.mdx)("h4",{id:"toc-contravariant-write-only-properties-on-interfaces"},"Contravariant (write-only) properties on interfaces"),(0,r.mdx)("p",null,"You can make a property contravariant by adding a minus symbol - in front of\nthe property name."),(0,r.mdx)("pre",null,(0,r.mdx)("code",{parentName:"pre",className:"language-flow",metastring:"[]","[]":!0},"interface InterfaceName {\n  -writeOnly: number;\n}\n")),(0,r.mdx)("p",null,"This allows you to pass a less specific type in place of that property."),(0,r.mdx)("pre",null,(0,r.mdx)("code",{parentName:"pre",className:"language-flow",metastring:'[{"startLine":10,"startColumn":42,"endLine":10,"endColumn":55,"description":"Cannot assign object literal to `value1` because string [1] is incompatible with number [2] in property `property`. [incompatible-type]"}]','[{"startLine":10,"startColumn":42,"endLine":10,"endColumn":55,"description":"Cannot':!0,assign:!0,object:!0,literal:!0,to:!0,"`value1`":!0,because:!0,string:!0,"[1]":!0,is:!0,incompatible:!0,with:!0,number:!0,"[2]":!0,in:!0,property:!0,"`property`.":!0,'[incompatible-type]"}]':!0},"interface Invariant {\n  property: number;\n}\ninterface Contravariant {\n  -writeOnly: number;\n}\n\nconst numberOrString = Math.random() > 0.5 ? 42 : 'forty-two';\n\nconst value1: Invariant     = {property: numberOrString};  // Error!\nconst value2: Contravariant = {writeOnly: numberOrString}; // Works!\n")),(0,r.mdx)("p",null,"Because of how contravariance works, contravariant properties also become\nwrite-only when used. Which can be useful over normal properties."),(0,r.mdx)("pre",null,(0,r.mdx)("code",{parentName:"pre",className:"language-flow",metastring:'[{"startLine":14,"startColumn":9,"endLine":14,"endColumn":17,"description":"Cannot get `value.writeOnly` because property `writeOnly` is not readable. [cannot-read]"}]','[{"startLine":14,"startColumn":9,"endLine":14,"endColumn":17,"description":"Cannot':!0,get:!0,"`value.writeOnly`":!0,because:!0,property:!0,"`writeOnly`":!0,is:!0,not:!0,"readable.":!0,'[cannot-read]"}]':!0},"interface Invariant {\n  property: number;\n}\ninterface Contravariant {\n  -writeOnly: number;\n}\n\nfunction func1(value: Invariant) {\n  value.property;        // Works!\n  value.property = 3.14; // Works!\n}\n\nfunction func2(value: Contravariant) {\n  value.writeOnly;        // Error!\n  value.writeOnly = 3.14; // Works!\n}\n")))}m.isMDXComponent=!0}}]);