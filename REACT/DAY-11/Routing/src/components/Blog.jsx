import React from 'react'
import { Link, useLocation } from 'react-router'

function Blog() {
    const location1 = useLocation()
    console.log(location1.state)
  return (
    <>
    <h2>Hi Blog</h2>
    <Link to="/">Home</Link>
    <Link to="/Contact">Contact</Link>
    </>
  )
}

export default Blog
