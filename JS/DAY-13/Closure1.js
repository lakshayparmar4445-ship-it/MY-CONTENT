// function Counter(){
//     let count = 10;
//     function Child(){
//         count--;
//         console.log(count);
//     }
//     return Child
// }

// const Child1 = Counter()
// Child1()
// Child1()


function Counter(){
    let count = 10;
    return function(){
        count--;
        console.log(count);
    }
}

const Child1 = Counter()
Child1()
Child1()