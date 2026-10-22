Prop drilling :- 

when we want to pass the data from parent component to nested child component.
no need of data to intermediater .


Parent
  |
Child1
  |
Child2
  |
Child3


Avoid prop drilling -> context API (global state manage)

===============================================


Context API :- what, why , where 

we can pass the data directly without prop drilling to nested child.

Mainly we have three types of things :- 
1. createContext  :- will create the context -> const DatContext = createContext();
2. Provider :- send 
3. Consumer  :- receive

useContext :- It is a react Hook.

========================================================


Find the largest element from the array.

let arr = [5,2,7,12,3,43]

Sort -> [5,2,7,12,3,43]