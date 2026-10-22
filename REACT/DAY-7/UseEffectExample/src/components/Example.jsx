
// No array 


// import React, { useEffect, useState } from 'react'

// function Example() {
//     const [like,setLike] = useState(0)
//     useEffect(()=>{
//         console.log("every time render...")
//     })

//     function handleClick(){
//         setLike(like+1)
//     }
//   return (
//     <>
//     <h1>&hearts; {like}</h1>
//     <button onClick={handleClick}>Like</button>
//     </>
//   )
// }

// export default Example





// empty array 

// import React, { useEffect, useState } from 'react'

// function Example() {
//     const [like,setLike] = useState(0)
//     useEffect(()=>{
//         console.log("every time render...")
//     },[])

//     function handleClick(){
//         setLike(like+1)
//     }
//   return (
//     <>
//     <h1>&hearts; {like}</h1>
//     <button onClick={handleClick}>Like</button>
//     </>
//   )
// }

// export default Example


// dependency array 
import React, { useEffect, useState } from 'react'

function Example() {
    const [like,setLike] = useState(0)
    useEffect(()=>{
        console.log("every time render...")
    },[like])

    function handleClick(){
        setLike(like+1)
    }
  return (
    <>
    <h1>&hearts; {like}</h1>
    <button onClick={handleClick}>Like</button>
    </>
  )
}

export default Example