import React, { useState } from "react";
import Simple2 from "./Simple2";

function Simple() {
  const [name, setName] = useState("");
  const [like, setLike] = useState(0);

  const handleLike = () =>{
    setLike(like+1)
  }

  const handleDislike = () =>{
    if(like>0){
        setLike(like-1)
    }
  }
  const resetLike = () =>{
    setLike(0)
  }
  return (
    <>
      <input
        type="text"
        placeholder="Enter Name"
        value={name}
        onChange={(event) => setName(event.target.value)}
      />
      <button onClick={handleLike}>Like</button>
      <button onClick={handleDislike}>Dislike</button>
      <button onClick={resetLike}>Reset</button>

      {/* <h2>My name is {name} likes are {like}</h2> */}
      <Simple2 name={name} like={like}/>
    </>
  );
}

export default Simple;
