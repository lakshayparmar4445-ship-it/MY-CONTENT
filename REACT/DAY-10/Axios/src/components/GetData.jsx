import React, { useEffect, useState } from 'react'
import axios from 'axios'

function GetData() {
    const[products,setProducts] = useState([])

useEffect(()=>{
    axios.get("https://dummyjson.com/products")
    .then((r)=>{
        setProducts(r.data.products)
    }).catch((e)=>{
        console.log(e)
    })
})
  return (
    <>
    <h3>All Products here :</h3>
    {
        products.map((p)=>(
            <div key={p.id} style={{border:"1px solid",margin:"10px",padding:"10px"}}>
                <p>Title : {p.title}</p>
                <p>Price : {p.price}</p>
            </div>
        ))
    }
    </>
  )
}

export default GetData
