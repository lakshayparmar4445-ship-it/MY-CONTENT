import React from 'react'
import { useState } from 'react'

function ControlledComponents() {
    const[name,setName] = useState("")
    const[password,setPassword] = useState("")
    const[email,setEmail] = useState("")
    const[confirmpassword,setConfirmPassword] = useState("")

    function ChaljaSabpe(e){
        
        if(e.target.name === 'name'){
            const Name = 
        }
    }
  return (
    <>
    name = <input type="text" name='name' value={name}/>
    password = <input type="password" name='password' value={password}/>
    email = <input type="email" name='email' value={email}/>
    confirm-password = <input type="password" name='confirmpassword' value={confirmpassword}/>
    <button type='submit' onSubmit={}>Submit</button>
    </>
  )
}

export default ControlledComponents
