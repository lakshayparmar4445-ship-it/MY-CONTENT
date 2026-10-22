let arr = [1,2,3,3,2,2]

for(let i=0;i<arr.length;i++){
    count=0
    for(let j=0;j<arr.length;j++){
        if(arr[i]==arr[j]){
            count++
        }
    }
    console.log(arr[i],"repeats this time", count)
}