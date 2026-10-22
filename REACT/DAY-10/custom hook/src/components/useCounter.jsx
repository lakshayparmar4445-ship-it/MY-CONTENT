import React, { useState } from 'react'

function useCounter(initialValue=0) {
    const [count,setCount]=useState(initialValue)
    function Addition(){
        setCount(count+1)
    }
    function Substraction(){
        setCount(count-1)
    }
    function Reset(){
        setCount(initialValue)
    }
    return[count,Addition,Substraction,Reset]
}

export default useCounter
