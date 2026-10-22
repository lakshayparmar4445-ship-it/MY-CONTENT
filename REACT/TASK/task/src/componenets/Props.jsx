import React from 'react'

function Props({a1}) {
  return (
    <div>
      {
        a1.map((p)=>(
            <div key={p.id}>
               <p>{p.title}</p>
               <p>{p.price}</p>
            </div>
        ))
      }
    </div>
  )
}

export default Props
