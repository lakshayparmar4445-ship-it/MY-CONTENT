// const person = {
//     name : "jayesh",
//     age : 23
// }

// console.log(person)
// console.log(person.name)
// console.log(person.age)

// // we can modify obj 
// // add key obj 
// person.address="indore"
// console.log(person)

// // update 
// person.name="jay"
// console.log(person)

// // delete 
// delete person.age;
// console.log(person)


// object method 
// console.log(Object.keys(person))
// console.log(Object.values(person))
// console.log(Object.entries(person))

// Object.freeze(person)
// person.age=34;
// console.log(person)

// ========================================================


// const person = {
//     name : "jayesh",
//     age : 23
// }

// blueprint 
// this keyword = point to the current obj 
// new = obj create 

// function Person(name,age){
//     this.name=name,
//     this.age=age
// }

// let p = new Person("jayesh",23)
// console.log(p.name)
// let p1=new Person("jay",100)
// console.log(p1.name)


// class = name of the program 
// constructor = when obj is created using new keyword constructor called automatically 
// this = point to the current obj 

// class Car{
//     constructor(name,color,price){
//         this.name = name
//         this.color = color
//         this.price - price
//     }
// }

// let a = new Car("BMW","red",2300000)
// let b = new Car("Farari","black",6773647)

// console.log(a.name)
// console.log(b.name)



// let d = [
//     {name:"raja",id:1,address:"Indore"},
//     {name:"jayesh",id:2,address:"rau"},
//     {name:"khushi",id:3,address:"Bhopal"}

// ]

// console.log(d[1].name)

// let result = d.find(person => person.name === "jayesh")
// console.log(result.address)



// 2. Find All Employees from Indore

// An HR system stores employee details. Display all employees whose city is "Indore".

// let employees = [
//   { id: 101, name: "Raj", city: "Indore" },
//   { id: 102, name: "Ankit", city: "Bhopal" },
//   { id: 103, name: "Priya", city: "Indore" },
//   { id: 104, name: "Neha", city: "Delhi" }
// ];

// let result = employees.filter(p => p.city === "Indore")
// console.log(result)

// 3. Increase Salary by 10%
// A company wants to give every employee a 10% salary hike. Update the salary of every employee.

// let employees = [
//   { id: 1, name: "Raj", salary: 30000 },
//   { id: 2, name: "Aman", salary: 45000 },
//   { id: 3, name: "Priya", salary: 50000 }
// ];

// let result = employees.map(pranjal => {
//     return {
//         ...pranjal,
//         salary:pranjal.salary+pranjal.salary*0.10
//     }
// })
// console.log(result)

// 4. Find the Most Expensive Product

// An e-commerce website stores product details. Find the product with the highest price.

let products = [
  { id: 1, name: "Laptop", price: 60000 }, // max
  { id: 2, name: "Mouse", price: 800 },
  { id: 3, name: "Mobile", price: 25000 },
  { id: 4, name: "TV", price: 70000 }
];


// let expensiveproduct = products.reduce((max,product)=>{
//     return max.price>product.price ? max.price : product.price;
// })
// console.log(expensiveproduct)



// let expensiveproduct = products[0]
// let max=0
// for(let i=1;i<products.length;i++){
//     if(products[i].price>expensiveproduct.price){
//         expensiveproduct = products[i]
//         max=expensiveproduct.price
//     }
// }
// console.log(max)

// 5. Find Pending Tasks

// A task management application stores task details. Display only the tasks that are not completed.

let tasks = [
  { id: 1, title: "Learn JavaScript", completed: true },
  { id: 2, title: "Build Todo App", completed: false },
  { id: 3, title: "Practice Arrays", completed: false },
  { id: 4, title: "Learn React", completed: true }
];


// let result = tasks.filter(p => p.completed === true)
// console.log(result)

// for(let i=0;i<tasks.length;i++){
//     if(tasks[i].completed===true){
//         console.log(tasks[i])
//     }
// }



// 6. Total Amount Spent by Rahul
// Question :- 

let orders = [
  { id: 1, customer: "Rahul", amount: 1200 },
  { id: 2, customer: "Aman", amount: 800 },
  { id: 3, customer: "Rahul", amount: 2500 },
  { id: 4, customer: "Neha", amount: 1500 },
  { id: 5, customer: "Rahul", amount: 1000 }
];

// let t_s = orders.filter(order => order.customer === 'Rahul').reduce((sum,order) =>
// {return sum+order.amount},0)
// console.log(t_s)

// let sum = 0
// for(let i=0;i<orders.length;i++){
//     if(orders[i].customer==="Rahul"){
//         sum=sum + orders[i].amount
//     }
// }

// console.log(sum)


