useEffect :- 

It is a react hook used for the handing the side effect.

why we use it ? 
1. Api data fetch 
2. page title update 

Mainly we have three type of things :- 
1. No Array  :- Every time render 

useEffect(()=>{

})

2. Empty Array  :-  It render only once first time when application load.

useEffect(()=>{

},[])


3. Dependency Array :- When dependecy changed it will render.

useEffect(()=>{

},[like])