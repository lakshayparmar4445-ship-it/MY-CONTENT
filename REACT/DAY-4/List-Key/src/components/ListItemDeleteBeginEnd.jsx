import React, { useState } from 'react'

function ListItemDeleteBeginEnd() {
  const [country,setCountry] = useState(["USA","UAE","UK"])
      const DeleteAtBegin = () =>{
          setCountry(country.slice(1))
      }
      const DeletAtEnd = () =>{
          setCountry(country.slice(0,-1))
      }
    return (
      <>
      <h3>Key and List Example</h3>
  
      <button onClick={DeleteAtBegin}>DelAtBegin</button>
      <button onClick={DeletAtEnd}>DelAtEnd</button>
      {
          country.map((con,index)=>(
              <li key={index}>{con}</li>
          ))
      }
      </>
    )
  }

export default ListItemDeleteBeginEnd
