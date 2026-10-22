// function pranjal(num){
//     sum=0
//     while(num>0){
//         let a = num%10
//         sum=sum+factorial(a)
//         num=Math.floor(num/10)
//     }
//     console.log(sum)
// }
// function factorial(a){
//     fact=1
//     for(let i=1;i<=a;i++){
//         fact=fact*i
//     }
//     return fact
// }

// pranjal(145)



function pranjal(num){
    let sum=0
    let a=num
    for(let i=1;i<=num/2;i++){
        if(num%i==0){
            sum=sum+i
        }
    }
    if(sum==a){
        console.log("perfect")
    }else{
        console.log("no")
    }

}


pranjal(6)