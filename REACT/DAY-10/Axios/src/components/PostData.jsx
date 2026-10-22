import React, { useState } from 'react'
import axios from 'axios'
function PostData() {
    const[title,setTitle]=useState("")
    const[body,setBody]=useState("")

    function handleSubmit(e){
        e.preventDefault()
        axios.post("https://jsonplaceholder.typicode.com/posts",{title,body,userId:10})
        .then((response)=>{
            console.log(response.data)
            // alert('post added')
            setTitle("")
            setBody("")
        }).catch((e)=>{
            console.log(e)
        })

    }
  return (
    <>
    <form onSubmit={handleSubmit}>
        <input type="text" placeholder='Enter title' onChange={(e)=>setTitle(e.target.value)}/> <br />
        <input type="text" placeholder='Enter body' onChange={(e)=>setBody(e.target.value)}/> <br />
        <button type='submit'>Submit</button>
    </form>
    <h2>{title}{body}</h2>
    </>
  )
}

export default PostData
