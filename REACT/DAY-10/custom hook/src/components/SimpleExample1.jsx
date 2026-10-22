import React from 'react'
import useCounter from './useCounter'

function SimpleExample1() {
    const[count,Addition,Substraction]=useCounter(0)
  return (
    <>
    <h3>SimpleExample1</h3>
    <p>{count}</p>
    <button onClick={Addition}>Add</button>
    <button onClick={Substraction}>Sub</button>
    </>
  )
}

export default SimpleExample1
