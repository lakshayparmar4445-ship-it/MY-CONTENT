import React from 'react'

function Child({name,color}) {
  return (
    <>
    <h1 style={{color:color}}>hy my name is {name}</h1>
    </>
  )
}

export default Child

//=======================================for single word color change================================================================

// import React from 'react'

// function Child({name,color}) {
//   return (
//     <>
//     <h1 style={{color:color}}>hy my name is <span style={{color:"blue"}}>{name}</span></h1>
//     </>
//   )
// }

// export default Child