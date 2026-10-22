import React, { useState } from 'react'
import axios from 'axios'
function PutData() {
    const[title,setTitle]=useState("")
    const[body,setBody]=useState("")
    const[id,setId]=useState(0)

    function handleSubmit(e){
        e.preventDefault()
        axios.put(`https://jsonplaceholder.typicode.com/posts/${id}`,{title,body,userId:10})
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
        <input type="number" placeholder='Enter Id' onChange={(e)=>setId(e.target.value)}/> <br />
        <button type='submit'>Submit</button>
    </form>
    <h2>{title}{body}</h2>
    </>
  )
}

export default PutData
