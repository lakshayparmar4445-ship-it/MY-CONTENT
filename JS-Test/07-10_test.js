// let arr = [1,7,3,4,9]
// let lar = arr[0]
// for(let i=0;i<arr.length;i++){
//     // console.log(arr[i])
//     if(lar<arr[i]){
//         lar=arr[i]
//     }
// }

// console.log(lar)


// let fact=1

// let a = (num) =>{
//     for(let i=1;i<num;i++){
//         fact=fact*i
//     }
//     console.log(fact)
// }

// a(10)


function factorial(num){
    for(let i=1;i<=num;i++){
        if(num%i===0){
            console.log(i)
        }
    }
}

factorial(100)