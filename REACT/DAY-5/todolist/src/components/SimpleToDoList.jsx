import React from 'react'
import { useState } from 'react'

function SimpleToDoList() {
   const [activity,setActivity]= useState("");
   const [listData,setListData] = useState([]);
   
   function addActivity(){
        setListData((listData)=>{
           const updatedList = [...listData,activity]
           setActivity("")
           return updatedList
        })
   }

   function removeActivity(i){// 0
        const updateListData = listData.filter((element,id)=>{
              return i != id; // 0!=0
         })
         setListData(updateListData)
   }

    function removeAll(){
        setListData([])
    }
  return (
    <>
       <div>TODO List </div>

       <input type="text" placeholder='Add a to-do item' value={activity} onChange={(e)=> setActivity(e.target.value)}  />

       <button onClick={addActivity}>Add item</button>


       <p>Your List :</p>
       { listData!=[] &&
       listData.map((data,index)=>(
          <h2 key={index}>
            <span>{data}</span>
            <button onClick={()=> removeActivity(index)}>Remove</button>
          </h2>
       ))
       }

       {listData.length >0 && 
       <span><button onClick={removeAll}>RemoveAll</button></span> }
    </>
  )
}

export default SimpleToDoList