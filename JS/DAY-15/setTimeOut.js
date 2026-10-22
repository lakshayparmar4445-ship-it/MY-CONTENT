// setTimeout(() => {
//     console.log("hy i am setTimeout1");
//     setTimeout(() => {
//         console.log("hy i am setTimeout2");
//         setTimeout(() => {
//             console.log("hy i am setTimeout3");
//             setTimeout(() => {
//                 console.log("hy i am setTimeout4");
//                 setTimeout(() => {
//                     console.log("hy i am setTimeout5");
//                     setTimeout(() => {
//                         console.log("hy i am setTimeout6");
//                     }, 7000);
//                 }, 4000);
//             }, 3000);
//         }, 4000);
//     }, 3000);
// }, 2000);


let count = 0
const interval = setInterval(()=>{
    count++
    console.log(count)
    if(count===5){
        clearInterval(interval)
    }
},2000
)