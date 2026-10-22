import React, { useState } from 'react'

function ListItemAddBeginString() {
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
        country.map((item)=>(
            <li key={`item-${item}`} type="none">{item}</li>
        ))
    }
    </>
  )
}

export default ListItemAddBeginString
