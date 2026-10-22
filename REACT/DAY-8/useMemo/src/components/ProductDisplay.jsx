import React, { useEffect, useMemo, useState } from "react";

function ProductDisplay() {
  const [data, setData] = useState([]);
  const [category, setCategory] = useState("all");
  const [search, setSearch] = useState("");

  useEffect(() => {
    fetch("https://dummyjson.com/products")
      .then((response) => response.json())
      .then((data) => {
        setData(data.products);
      });
  },[]);

  const filteredProducts = useMemo(() => {
    console.log("filtering products.....");
    return data.filter((p) => {
      const mathchesCategory = category === "all" || category === p.category;
      const matchesSearch = p.title
        .toLowerCase()
        .includes(search.toLowerCase());
      return mathchesCategory && matchesSearch;
    });
  }, [data,category, search]);
  return (
    <>
      <h2>ALL PRODUCTS</h2>
      <input type="text" placeholder="search product....." value={search} 
      onChange={(e) => setSearch(e.target.value)}/>
      <select value={category} onChange={(e) => setCategory(e.target.value)}>
        <option value="all">All</option>
        <option value="beauty">Beauty</option>
        <option value="fragrances">Fragrences</option>
        <option value="furniture">Furniture</option>
      </select>{
        filteredProducts.map((p)=>(
            <div key={p.id} style={{border:"1px solid",padding:"10px",margin:"10px"}}>
                <p>Title : {p.title}</p>
                <p>Price : ${p.price}</p>
                <p>category : {p.category}</p>
            </div>
        ))
      }
    </>
  );
}

export default ProductDisplay;
