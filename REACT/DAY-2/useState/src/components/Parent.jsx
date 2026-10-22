import React, { useState } from 'react'
import Child from './Child'

function Parent() {
    // const [name,setName] = useState("")
    const [name,setName] = useState("")
    const [color,setColor] = useState("")
  return (
    <>
    <input type="text"
    placeholder='Enter Name'
    value={name}
    onChange={(e)=> setName(e.target.value)} />
    <input type="text"
    placeholder='Enter Color'
    value={color}
    onChange={(e)=> setColor(e.target.value)} />
    <Child color1={color} name1={name}/>
    </>
    
  )
}

export default Parent
