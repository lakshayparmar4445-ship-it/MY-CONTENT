import React, { useState } from 'react'

function ListItemAddBeginEnd() {
    const [country,setCountry] = useState(["USA","UAE","UK"])
    const AddAtBegin = () =>{
        setCountry(["INDIA",...country])
    }
    const AddAtEnd = () =>{
        setCountry([...country,"PAK"])
    }
  return (
    <>
    <h3>Key and List Example</h3>

    <button onClick={AddAtBegin}>AddAtBegin</button>
    <button onClick={AddAtEnd}>AddAtEnd</button>
    {
        country.map((con,index)=>(
            <li key={index}>{con}</li>
        ))
    }
    </>
  )
}

export default ListItemAddBeginEnd
