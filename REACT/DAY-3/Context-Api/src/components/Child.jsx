import React from 'react'
import { DataContext } from './Parent'

function Child() {
  return (
    <>
    <DataContext.Consumer>
        {
            (name1) =>(
                <h1>hy my name is {name1}</h1>
            )
        }
    </DataContext.Consumer>
    </>
  )
}

export default Child

// =====================================

// import React from 'react'
// import { DataContext } from './Parent'
// import { useContext } from 'react'

// function Child() {
//     const name10 = useContext(DataContext)
//   return (
//     <>
//     <h1>hy my name is{name10}</h1>
//     </>
//   )
// }

// export default Child
