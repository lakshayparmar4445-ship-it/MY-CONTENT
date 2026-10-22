import React from 'react'
import useCounter from './useCounter'

function SimpleExample2() {
  const[count,Addition,Substraction,Reset]=useCounter(0)
  return (
    <>
    <h3>SimpleExample1</h3>
    <p>{count}</p>
    <button onClick={Addition}>Add</button>
    <button onClick={Reset}>Sub</button>
    </>
  )
}

export default SimpleExample2
