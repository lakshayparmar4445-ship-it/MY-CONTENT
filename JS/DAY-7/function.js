
// declaration function 

// implicit
// function add(a,b){
//     console.log(a+b)
// }

// explicit
// function add2(a,b){
//     return a+b
// }

// add(10,20)
// console.log(add2(10,20))

// =================================================================== 

// expression function 
// let Parent = function(){
//     console.log("hello")
// }

// Parent()

// =================================================================== 

// practice 
// function factorial(a){
//     fact=1
//     for(let i = 1;i<=a;i++){
//         fact=fact*i
//     }
//     console.log(fact)
// }

// factorial(6)


// =================================================================== 

// arrow function 
// let child=(a)=>{
//     count=0
//     for(let i=1;i<=a;i++){
//         if(a%i==0){
//             count=count+1
//         }
//     }
//     if(count===2){
//         console.log("prime no")
//     }else{
//         console.log("no")
//     }
// }

// child(5)

// =================================================================== 

// let child=(a)=>{
//     let sum=0
//     for(let i=1;i<=a/2;i++){
//         if(a%i===0){
//             sum=sum+i
//         }
//     }
//     if(a===sum){
//         console.log("perfect")
//     }else{
//         console.log("no")
//     }
// }


// child(28)

// =================================================================== 

// nested function 
// function Parent(){
//     console.log("parent")

//     let child1=function(){
//         console.log("child1")
//     }
//     let child2 = () =>{
//         console.log("child2")
//     }
//     child1()
//     child2()
// }

// Parent()

// =================================================================== 

// high order function 

// function parent(cbf){
//     console.log("hof")
//     cbf()
// }
// function child(){
//     console.log("child")
// }
// parent(child)

// =================================================================== 
// callback function 
// function multigreet(num,cbf){
//     for(let i=1;i<=num;i++){
//         cbf()
//     }
// }
// function greet(){
//     console.log("goodmorning")
// }


// multigreet(100,greet)

// =================================================================== 

// palindrome
// let bb = (num) =>{
//     let rev=0
//     let b = num
//     while(num>0){
//         let a=num%10
//         rev=(rev*10)+a
//         num=Math.floor(num/10)
//     }
//     if(b==rev){
//         console.log("palindrome")
//     }
//     else{
//         console.log("no")
//     }
// }


// perfect 
// let bb = (num) =>{
//     let sum=0
//     let b = num
//     while(num>0){
//         let a=num%10
//         sum=sum+a*a*a
//         num=Math.floor(num/10)
//     }
//     if(b==sum){
//         console.log("perfect")
//     }
//     else{
//         console.log("no")
//     }
// }

// bb(153)


