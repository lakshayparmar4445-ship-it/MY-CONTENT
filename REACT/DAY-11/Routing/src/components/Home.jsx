import React from 'react'
import { Link, useNavigate } from 'react-router'



function Home() {

    const navigate1=useNavigate()
    const name1 = "Lakshay"

    let handleClick=()=>{
        navigate1("/Blog", {state:{myname1:name1}})
    }
  return (
    <>
    <h1>hi am home</h1>
    <Link to="/Blog">Blog</Link>
    <Link to="/Contact">Contact</Link>

    <button onClick={handleClick}>Blog</button>
    </>
  )
}

export default Home
