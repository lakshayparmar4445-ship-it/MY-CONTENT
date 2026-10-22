// const myPromises = new Promise((res,rej)=>{
//     let ice_cream = true;
//     if(ice_cream===true){
//         res("ice cream ml yi")
//     }else{
//         rej("kon khagya ice cream")
//     }
// })

// myPromises.then((data)=>{
//     console.log(data)
// }).catch((error)=>{
//     console.log(data)
// }).finally(()=>{
//     console.log("always run")
// })


// ================================================================================

function FetchPosts(){
    return fetch("https://jsonplaceholder.typicode.com/posts")
    .then((response)=>response.json())
    .then((data)=>{
        console.log("Post data",data)
    })
    .catch((err)=>{
        console.log("FEching err",err)
    })
}

function FetchComments(){
    return fetch("https://jsonplaceholder.typicode.com/comments")
    .then((response)=>response.json())
    .then((data)=>{
        console.log("Comments data",data)
    })
    .catch((error)=>{
        console.log("FEching err",error)
    })
}

FetchPosts().then(()=>
FetchComments()
)