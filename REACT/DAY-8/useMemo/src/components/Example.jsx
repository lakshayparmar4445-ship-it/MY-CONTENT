import React, { useMemo, useState } from 'react'

function Example() {
    const [add,setAdd] = useState(0)
    const [sub,setSub] = useState(100)

    function handleAdd(){
        setAdd(add+1)
    }

    function handleSub(){
        setSub(sub-1)
    }

    // function Multiply(){
    //     console.log("hy")
    // }

    const memo1 = useMemo(function Multiply(){
        console.log("hy")
    },[add,sub])
  return (
    <>
    <h2>useMemo Example</h2>
    {/* {Multiply()} */}
    {memo1}
    <button onClick={handleAdd}>Add</button>
    <span>Add :- {add}</span>
    <button onClick={handleSub}>Sub</button>
    <span>Sub :- {sub}</span>
    </>
  )
}

export default Example
