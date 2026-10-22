// let num=54321
// while(num>0){
//     let a=num%10
//     console.log(a)
//     num=Math.floor((num/10))
// }

// let sum=0
// let num=34567
// while(num>0){
//     let a=num%10
//     // console.log(a)
//     sum=sum+a
//     num=Math.floor((num/10))
// }

// console.log(sum)


// Calculate the Sum of Squares of Digits of a Number
// let sum=0
// // let sq=0
// let num=5674
// while(num>0){
//     let a=num%10
//     // console.log(sq)
//     // sq=a*a
//     sum=sum+a*a
//     // console.log(sq)
//     num=Math.floor((num/10))
// }

// // console.log(sq)
// console.log(sum)


// let num = 45732
// // let s = 0
// let lar=0
// while(num>0){
//     let a = num%10
//     if(a>lar){
//         lar = a
//     }
//     // console.log(num)
//     num=Math.floor((num/10))
// }

// console.log(lar)

// let num = 34543
// let count = 0
// while(num>0){
//     let a = num%10
//     count=count+1
//     // console.log(a)
//     // count=count+a
//     num=Math.floor((num/10))
// }

// console.log(count)

// // Find the Factorial of a Number
//     let fact = 1
//     let input_num=10
//     let i = 1
//     while(i<=input_num){
//         // console.log(i)
//         fact=fact*i
//         i++
//     }

//     console.log(fact)


// // Check Whether a Number is Prime
// let num=4;
// let count = 0
// for(let i=2;i<=num;i++){
    
//     if(num%i==0){
//         count++
//     }
   
// }
//  if(count===1){
//         console.log(num,"is prime")
//     }
//     else{
//         console.log(num,"not prime")
//     }



// for(let i = 1;i<=50;i++){
// let num=i
// let count = 0
// for(let i=2;i<=num;i++){
    
//     if(num%i==0){
//         count++
//     }
   
// }
//  if(count===1){
//         console.log(num,"is prime")
//     }
//     else{
//         console.log(num,"not prime")
//     }

// }


// // Check Whether a Number is Armstrong or Not
// let sq=1
// let armstrong = 0
// let num=153
// let n = num;
// while(num>0){
//     let a = num%10
//     // console.log(a)
//     sq=a**3
//     // console.log(sq)
//     armstrong=armstrong + sq
//     num=Math.floor((num/10))
// }

// if(n==armstrong){
//     console.log(n,"number armstrong")
// }
// else{
//     console.log(n,"number is not armstrong")
// }


// // Check Whether a Number is Perfect Number
// let num=6
// let sum = 0;
// for(let i=1;i<=num/2;i++){
//     if(num%i==0){
//         sum+=i
//     }
// }
// if(sum==num){
//     console.log(num,"perfect")
// }
// else{
//     console.log(num,"no perf")
// }


// // Check Whether a Number is a Strong Number
// let num=145;
// let n=num
// let sum = 0
// while(num>0){
//     let digit = num%10
//     sum = sum + isFact(digit)
//     num = Math.floor(num/10)
// }

// function isFact(num){
//     let fact=1
//     for(let i=1;i<=num;i++){
//         fact*=i
//     }
//     return fact
// }
// if(n===sum){
//     console.log(n,"strong")
// }
// else{
//     console.log(n,"not strong")
// }

 

// let num=121;
// let n=num
// let rev = 0
// while(num>0){
//     let digit = num%10
//     rev = (rev*10) + digit
//     num = Math.floor(num/10)
// }

// if(n===rev){
//     console.log(n,"palindrom")
// }
// else{
//     console.log(n,"not plindrom")
// }



// let num = 6731;
// let b = 0
// while(num>0){
//     let a = num%10
//     if(a>b){
//         b=a
//     }
//     num=Math.floor(num/10)
// }

// console.log(b)


