import React, { useEffect, useState } from 'react'
import Props from './Props'



function Task(){
    const [a1,setA] = useState([])
    const [search,setSearch] = useState("")
    const [like,setLike] = useState(0)
    useEffect(()=>{
        fetch("https://dummyjson.com/products")
        .then((r)=> r.json())
        .then((d)=>setA(d.products))
        .catch((e)=> console.log(e))
    },[])
    const filtered = a1.filter((p) => {
        return p.title.toLowerCase().includes(search.toLowerCase()) 
});

    function handleLike(){
        setLike(like+1)
    }

  return (
    <>
    <h3>All Products</h3>
        {/* // a1.map((p)=>(
        //     <div key={p.id}>
        //        <p>{p.title}</p>
        //        <p>{p.price}</p>
        //     </div>
        // )) */}
       <> 
       <input type="text" placeholder='search...' 
       value={search} onChange={(e) => setSearch(e.target.value)}/>
       <button onClick={handleLike} >Like &hearts; {like}</button>
       <Props a1={filtered}/>
       </>

    
    </>
  )
}


export default Task
