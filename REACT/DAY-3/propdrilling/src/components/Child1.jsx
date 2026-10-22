import React from 'react'
import Child2 from './Child2'

function Child1({name1}) {
  return (
    <>
    <Child2 name1={name1}/>
    </>
  )
}

export default Child1
