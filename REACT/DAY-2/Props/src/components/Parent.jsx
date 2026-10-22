
import React from 'react'
import Child from './Child'

function Parent() {
  let name1 = "pranjal"
  let color = "red"
  return (
    <>
    <Child name={name1} color={color}/>
    </>
  )
}

export default Parent
