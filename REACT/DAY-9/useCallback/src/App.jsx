import React, { useCallback, useState } from 'react'
import Navbar from './components/Navbar'

function App() {
  const[count,setCount]=useState(0)
  function handleCount(){
    setCount(count+1)
  }
  const loggedUser = useCallback(()=>{
    console.log("logged out")
  },[])
  const login = useCallback(()=>{
    console.log("login")
  },[])
  return (
    <div>
      <Navbar logout={loggedUser} login={login}/>
      <h2>Count : {count}</h2>
      <button onClick={handleCount}>Increase count</button>
    </div>
  )
}

export default App
