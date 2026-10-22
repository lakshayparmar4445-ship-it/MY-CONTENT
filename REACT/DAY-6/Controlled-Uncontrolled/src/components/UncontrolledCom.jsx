import React, { useRef } from 'react'

function UncontrolledCom() {
    const refObject = useRef()
    console.log(refObject)
    function handleSubmit(e){
        e.preventDefault()
        console.log((refObject.current.value).length)
        e.target.reset()
        
    }
  return (
    <>
    <form action="" onSubmit={handleSubmit}>
        Name = <input type="text" ref={refObject} />
        <button type='submit'>Submit</button>
    </form>
    </>
  )
}

export default UncontrolledCom
