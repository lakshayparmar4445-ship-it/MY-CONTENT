import React from 'react'
import Child from './Child'
import { createContext } from 'react'
const DataContext = createContext()

function Parent(){
    let name1 = "pranjal"
    return (
        <>
        <DataContext.Provider value={name1}>
            <Child />
        </DataContext.Provider>
        </>      
    )
}

export default Parent
export {DataContext}