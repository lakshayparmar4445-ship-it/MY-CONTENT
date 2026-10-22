import React from 'react'

function ListWithKey() {
    const items = [1,2,3,4,5]
    const listItems = items.map((item,index)=> <li key={index}>{item}</li>)
  return (
    <>
      <ul type="none">
        {listItems}
       </ul>
    </>
  )
}

export default ListWithKey