// let arr=[1,"p",true,1.7]
// console.log(arr[3])

// for(let i=0;i<arr.length;i++){
//     console.log(arr[i])
// }


// arr.push(60)
// console.log(arr)


// arr.pop()
// console.log(arr)

// let arr2=[1,2,3,'hy',true,100]
// console.log(arr2.shift())
// let arr3=arr2.shift()
// console.log(arr2)

// let arr2=[1,2,3,'hy',true,100]
// arr2.unshift(100,200,300)
// console.log(arr2)

// let arr2=[1,2,3,'hy',true,100]
// console.log(arr2.slice(1,4))



// let arr2=[1,2,3,'hy',true,100]
// arr2.splice(1,3,1000,2000)
// console.log(arr2)


// let arr2=[1,2,3,'hy',true,100]
// console.log(arr2.indexOf(3))


// let arr2=[1,2,3,'hy',true,100]
// console.log(arr2.includes(100))


// let arr2=[1,2,3,'hy',true,100]
// arr2.forEach((value,index,array)=>{
//     console.log(value)
//     console.log(index)
//     console.log(array)
// })


// let arr2=[1,2,3,'hy',true,100]
// for(let value of arr2){
//     console.log(value)
// }

// let str="abcdefgh"
// for(value of str){
//     console.log(value)
// }

// let person={
//     age:23,
//     address:"indore"
// }

// for(let keys in person){
//     console.log(values)
// }

// console.log(Object.values(person))

// map := it will return the element who satisfied the condition 
// let arr9=[1,2,3,4,5,6]
// let map1=arr9.map((value)=>{
//     return value*2
// })

// console.log(map1)

// filter := it will return the Element who satisfied the condition 

// let arr10=[1,2,3,4,5,6]
// let filter=arr10.filter((value)=>{
//     return value%2==0
// })

// console.log(filter)

// find := it returns the first occurence who satisfied the condition 
// let arr11=[1,2,3,4,5,6]
// let find=arr9.find((value)=>{
//     return value%2==0
// })

// console.log(find)

// let arr16=[1,2,3,4,5,6]
// let findindex=arr16.findIndex((value)=>{
//     return value%2==0
// })

// console.log(findindex)


// reduce = it will return single value 
// let arr9=[1,2,3,4,5,6]
// let reduce=arr9.reduce((sum,value)=>{
//     return sum+value
// },0)

// console.log(reduce)
// some := 
// let arr9=[1,2,3,4,5,6]
// let some=arr9.some((value)=>{
//     return value%2==0
// })

// console.log(some)

// every 
// let arr9=[1,2,3,4,5,6]
// let every=arr9.every((value)=>{
//     return value%2==0
// })

// console.log(every)

// flat method 
// reverse 
// sort 
// fill

// let arr9=[1,2,3,4,5,6]
// console.log(arr9.reverse())

// sort method 
// let arr9=[1,2,3,4,5,6]
// let s=arr9.sort((a,b)=>{
//      return a-b       // asc
//     //  return b-a    //dsc
// })

// console.log(s)
// posi=swap 
// negi=no swap


// flat : nested array 
// let arr9=[1,2,3,4,[100,200],5,6]
// let some=arr9.flat(Infinity)
// console.log(some)

// fill method :- syntax :- (value,start,end) - end exclude 
// let arr9=[1,2,3,4,5,6]
// let some=arr9.fill(100,1,3)
// console.log(some)


// let arr=[1,2,3,4]
// let ar=[]
// for(let i=0;i<=arr.length - 1;i++){
//     // console.log(arr[i])
//     ar.unshift(arr[i])

// }

// console.log(ar)


// bubble sort :- 
// let arr=[4,3,2,1]

// for(let i=0;i<arr.length;i++){
//     for(let j=0;j<arr.length-1;j++){
//         if(arr[j]>arr[j+1]){
//             let temp=arr[j];
//             arr[j]=arr[j+1];
//             arr[j+1]= temp
//         }
//     }
// }

// console.log(arr)

// let arr=[1,3,4,2,2,4,2,1,7]

// for(let i=0;i<arr.length;i++){
//     count=0
//     for(let j=0;j<arr.length;j++){
//         if(arr[i]==arr[j] && i>j){
//             break
//         }
//         if(arr[i]==arr[j]){
//             count++
//         }
//     }
//     if(count>0){
//         console.log(arr[i] +" itni baar " + count)
//     }
// }



// let arr2=[1,3,4,2,2,4,2,1,7]

// for(let i=0;i<arr2.length;i++){
//     count=0
//     for(let j=0;j<arr2.length;j++){
//         if(arr2[i]==arr2[j] && i>j){
//             break
//         }
//         if(arr2[i]==arr2[j]){
//             count++
//         }
//     }
//     if(count>1){
//         console.log(arr2[i] +" itni baar " )
//     }
// }


// let arr=[1,5,3,2,8]
// let max=arr[0]
// for(let i=1;i<arr.length;i++){
//     if(arr[i]>max){
//         max=arr[i]
//     }
// }


// console.log(max)


// let arr=[1,5,3,2,8]
// let min=arr[0]
// for(let i=1;i<arr.length;i++){
//     if(arr[i]<min){
//         min=arr[i]
//     }
// }


// console.log(min)


let arr2=[1,3,4,2,2,4,2,1,7]
let arr3=[]
for(let i=0;i<arr2.length;i++){
    count=0
    for(let j=0;j<arr2.length;j++){
        if(arr2[i]==arr2[j] && i>j){
            break
        }
        if(arr2[i]==arr2[j]){
            count++
        }
    }
    if(count>1){
        arr3.push(arr2[i]) 
    }   
}

console.log(arr3)