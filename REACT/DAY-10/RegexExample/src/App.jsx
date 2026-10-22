import React from 'react'
import { useState } from 'react'

function App() {
  const[email,setEmail]=useState("")
  const[password,setPassword]=useState("")
  const[message,setmessage]=useState("")

  function handleSubmit(e){
    e.preventDefault()

    let regemail = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    let regpassword = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$/;
    if(!regemail.test(email)){
      setmessage('invalid email')
      return
    }
    if(!regpassword.test(password)){
      setmessage('pass must contain 8 char')
      return
    }

    let userData = {email,password}
    window.localStorage.setItem('user',JSON.stringify(userData))
    setmessage("user Data saves")

    setEmail('')
    setPassword('')
  }
  return (
    <>
    <form onSubmit={handleSubmit}>
      <input type="text" value={email} onChange={(e)=>setEmail(e.target.value)}/> <br />
      <input type="text" value={password} onChange={(e)=>setPassword(e.target.value)}/> <br />
      <button type="submit">Login</button>
    </form>
    {message}
    </>
  )
}

export default App
