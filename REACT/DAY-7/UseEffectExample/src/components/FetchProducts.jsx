import React, { useEffect, useState } from 'react'

function FetchProducts() {
     const [product,setProduct] = useState([]) // api data store
     const [loading,setLoading] = useState(true)

   useEffect(()=>{
        fetch("https://dummyjson.com/products")
        .then((response)=> response.json())
        .then((data)=>{
            setProduct(data.products)
            setLoading(false)
        }).catch((err)=>{
             console.log(err);
        })
   },[])

   if(loading) return <p>Loading.........</p>

  return (
     <>
         <h3>All Products Here :</h3>
         {
            product.map((product1)=>(
               <div key={product1.id} style={{border:"1px solid",padding:"10px",margin:"10px"}}>
                     <p>Title :{product1.title}</p>
                     <p>Price : ${product1.price}</p>
               </div>
            ))
         }
     </>
  )
}

export default FetchProducts