import React from 'react'

function Navbar({logout,login}) {
    console.log("navbar render")
  return (
    <>
    <button onClick={logout}>Logout</button>
    <button onClick={login}>Login</button>
    </>
  )
}

export default React.memo(Navbar)
