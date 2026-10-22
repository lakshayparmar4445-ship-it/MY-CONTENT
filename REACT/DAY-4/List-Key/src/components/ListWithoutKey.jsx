import React from 'react'

function ListWithoutKey() {
    const items = [1,2,3,4,5]
    const listItems = items.map((item)=> <li>{item}</li>)
  return (
    <>
      <ul type="none">
        {listItems}
       </ul>
    </>
  )
}

export default ListWithoutKey
