// shallow copy  and deep copy
const obj1 = {
    name1 : "pranjal",
    age : 22,
    address : {
        city : "indore"
    }
}
// const obj2 = {...obj1}; //shallowcopy
// console.log(obj1.name1)
// console.log(obj2.name1)
const obj2 = JSON.parse(JSON.stringify(obj1)) //deep copy

console.log(obj2.name1)
// console.log(obj1.address.city)
obj1.address.city = "bhopal"
console.log(obj2.address.city)

