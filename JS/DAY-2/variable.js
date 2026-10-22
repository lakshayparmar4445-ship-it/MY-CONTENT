// scope

// function Demo(){
//     var a=10;
//     console.log(a);
//     if(true){
//         console.log(a);
//     }
// }

// Demo();
// console.log(a);

// let block scope 

// if(true){
//     let a =10;
//     console.log(a);
// }
// console.log(a) // referenceerror : a is not defined


// const-block 

// if(true){
//     const a = 10;
//     console.log(a);
// }

// console.log(a); //ReferenceError: a is not defined

// ===================================================

// Declaration 

// var a;
// let b;
// const c;

// =====================================================

// Reinit :-

// var a = 100;
// a=200;
// console.log(a);


// let b = 1000;
// b=2000;
// console.log(b);

// const b = 2000;
// b=2000;
// console.log(b);  //TypeError: Assignment to constant variable.

// const person = {
//     name1 : "lokesh",
//     age : 23
// }

// console.log(person.name1)
// person.name1='pranjal'
// console.log(person.name1)
// =====================================

// redeclaration

// var a=10;
// var a=20;
// console.log(a)

// let a=10;
// let a=20;
// console.log(a) //SyntaxError: Identifier 'a' has already been declared

// const a=10
// const a=20
// console.log(a)  //SyntaxError: Identifier 'a' has already been declared

// for(let i=0;i<=10;i++){
//     let i="Hello";
//     console.log(i);
// }
