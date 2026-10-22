useMemo Hook :- 

useMemo hook is a react hook , used for the memoization we can use in the expensive calculation.

where we can use :- 
1. Filtering 
2. Reterival

Filter in WebSite -> 
let product = ["jeans","gems","jar","james","jersy","banana"]

Step1 :- j
react will render 
Memoize the item :- ["jeans","jar","james","jersy"]


step2 :- je
React will render
Memoize the item :- ["jeans","jersy"]

Step3: jea
React will render 
Memoize the item :- ["jeans"]