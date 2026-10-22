import React from 'react'
import Child1 from './Child1'

function Parent() {
    let name1 = "lakshay"
  return (
    <>
    <Child1 name1={name1}/>
    </>
  )
}

export default Parent
