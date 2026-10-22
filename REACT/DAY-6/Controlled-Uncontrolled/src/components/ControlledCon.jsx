// import React, { useState } from 'react'

// function ControlledCon() {
//     const[name,setName] = useState("")
//     const[password,setPassword] = useState("")

//     function handleName(e){
//         const capName = e.target.value.toUpperCase()
//         setName(capName)
//     }
//     function handlePass(e){
//         const len = e.target.value.toLowerCase()
//         setPassword(len)
//     }
//   return (
//     <>
//     <form action="">
//         <div>
//             <label htmlFor="">Name :</label>
//             <input type="text" value={name} onChange={handleName} />
//         </div>
//         <div>
//             <label htmlFor="">Password :</label>
//             <input type="password" value={password} onChange={handlePass} />
//         </div>
//     </form>
//     {name}
//     {password}
//     </>
//   )
// }

// export default ControlledCon
import React, { useState } from 'react'

function ControlledCon() {
    const[name,setName] = useState("")
    const[password,setPassword] = useState("")
    const[email,setEmail] = useState("")

    function handleChange(e){
        if(e.target.name==='name'){
            const capName = e.target.value.toUpperCase()
            setName(capName)
        }
        else if(e.target.name ==='password'){
            const capPass = e.target.value.toUpperCase()
            setPassword(capPass)
        }else{
            const capEmail = e.target.value.toUpperCase()
            setEmail(capEmail)
        }
    }
  return (
    <>
    <form action="">
        <div>
            <label htmlFor="">Name :</label>
            <input type="text" value={name} name='name' onChange={handleChange} />
        </div><br />
        <div>
            <label htmlFor="">Password :</label>
            <input type="password" value={password} name='password' onChange={handleChange} />
        </div><br />
        <div>
            <label htmlFor="">Email :</label>
            <input type="email" value={email} name='email' onChange={handleChange} />
        </div><br />
    </form>
    {name} <br />
    {password} <br />
    {email} <br />
    </>
  )
}

export default ControlledCon