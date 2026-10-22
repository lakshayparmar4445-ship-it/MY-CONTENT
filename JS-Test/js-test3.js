let arr = [5,2,45,12,3,88]

// let max=arr[0]
// for(let i=1;i<arr.length;i++){
//     if(max<arr[i]){
//         max=arr[i]
//     }
// }

// console.log(max)
let sort = []

for(let i=0;i<=arr.length - 1;i++){
    sort.unshift(arr[i])
}

console.log(sort)