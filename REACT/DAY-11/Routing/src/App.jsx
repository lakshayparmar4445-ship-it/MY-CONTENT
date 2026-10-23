import React from 'react'
import {BrowserRouter, Route, Routes} from "react-router"
import Contact from './components/Contact'
import Blog from './components/Blog'
import Home from './components/Home'

function App() {
  return (
    <>
    <BrowserRouter>
    <Routes>
      <Route path="/" element={<Home/>}/>
      <Route path="/Blog" element={<Blog/>}/>
      <Route path="/Contact" element={<Contact/>}/>
    </Routes>
    </BrowserRouter>
    </>
  )
}

export default App
