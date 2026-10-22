// Q1

// let a = "20"; // string  //implicit dt changed in all cases
// let b = 5; // int
// console.log(a + b); // string datatype of element converted to integer datatype in presence of concat operator used with integer operator
// console.log(a - b); // string datatype of element converted to integer datatype in presence of subtract operator used with integer operator
// console.log(a * b); string datatype of element converted to integer datatype in presence of product operator used with integer operator

// Q26

// let num=5
// let fact=1
// for(let i=1;i<=num;i++){
//     fact=fact*i
// }
// console.log(fact)

// Q23

// let n = 58392
// let b = 0
// while(n > 0){
//     let a = n % 10
//     // console.log(a)
//     b=b+1
//     n=Math.floor(n/10)
// }

// console.log(b)

// Q25
// let n = 58392
// let b = 0
// while(n > 0){
//     let a = n % 10
//     console.log(a)
//     b=b+a
//     n=Math.floor(n/10)
// }

// console.log(b)


// Q22
// let num=7
// for(let i=1;i<=10;i++){
//     console.log(i*num)
// }


// Q21

// let sum=0
// for(let i=1;i<=100;i++){
//     sum=sum+i
// }

// console.log(sum)


// Q20


// for(let i=1;i<=50;i++){
//     if(i%2==0){
//         console.log(i)
//     }
// }


// Q19


// for(let i=1;i<=10;i++){
//     console.log(i)
// }


// Q18

// let choice = 4

// switch(choice){
//     case 1:
//         console.log("pizza")
//         break
//     case 2:
//         console.log("burger")
//         break
//     case 3:
//         console.log("pasta")
//         break
//     case 4:
//         console.log("sandwitch")
//         break
//     default:
//         console.log("ye kya hai")
// }



// q17

// let choice = 7

// switch(choice){
//     case 1:
//         console.log("monday")
//         break
//     case 2:
//         console.log("tuesday")
//         break
//     case 3:
//         console.log("wednesday")
//         break
//     case 4:
//         console.log("thursday")
//         break
//     case 5:
//         console.log("friday")
//         break
//     case 6:
//         console.log("saturday")
//         break
//     case 7:
//         console.log("sunday")
//         break
//     default:
//         console.log("ye kya hai")
// }


// Q16

// let a=10
// let b=20
// let op="divide"
// if(op=="add"){
//     console.log(a+b)
// }
// else if(op=="sub"){
//     console.log(b-a)
// }
// else if(op=="divide"){
//     console.log(b/a)
// }
// else if(op=="prod"){
//     console.log(b*a)
// }
// else{
//     console.log("wrong op")
// }

// Q15
// let a=2014
// if(a%4==0 || a%400==0 || a%100!=0){
//     console.log("leap year")
// }
// else{
//     console.log("not leap year")
// }

// q14
// let mark= 783
// if(mark>=90 && mark<100){
//     console.log("A+")
// }
// else if(mark>=80 && mark<=89){
//     console.log("A")
// }
// else if(mark>=70 && mark<=79){
//     console.log("B")
// }
// else if(mark>=60 && mark<69){
//     console.log("C")
// }
// else if(mark>=50 && mark<59){
//     console.log("D")
// }
// else if(mark<50){
//     console.log("fail")
// }
// else{
//     console.log("ye konse marks hai")
// }

// q13
// a = 25
// b = 45
// c = 30
// if(a>b){
//     console.log(a)
// }else if(b>a){
//     console.log(b)
// }else if(a>c){
//     console.log(a)
// }
// else if(c>a){
//     console.log(c)
// }
// else if(b>c){
//     console.log(b)
// }
// else if(c>b){
//     console.log(c)
// }
// else{
//     console.log("koi nahi bada")
// }

// q12
// let num = 0
// if(num>0){
//     console.log("pos")
// }
// else if(num==0){
//     console.log("zero")
// }
// else{
//     console.log("neg")
// }

// q11
// age=10
// if(age>=18){
//     console.log("jao vote do")
// }
// else{
//     console.log("go play with toys lil bro")
// }

// Q24
// let num = 12345;
// let b=0
// while(num>0){
//     let digit=num%10
//     let a = (b*10) + digit
//     b=a
//     num=Math.floor(num/10)
// }

// console.log(b)

// q27
// let num = 17;
// for(let i=0;i<=num;i++){
//     if(num%2==0){
//         console.log(i)
//     }
// }


// let a = 6
// count=0
// for(let i=2;i<=a;i++){
//     if(a%i==0){
//         count=count+1
//     }
// }
// if(count==1){
//     console.log("yes prime no")
// }
// else{
//     console.log("not prime")
// }


// let num = 123;
// let c = 0
// while(num>0){
//     let a=num%10
//     c=a**3+c
//     num=Math.floor(num/10)
// }
// console.log(c)


let a=0
let b=1
for(let i=1;i<=8;i++){
    console.log(a)
    let c=a+b
    a=b
    b=c
}