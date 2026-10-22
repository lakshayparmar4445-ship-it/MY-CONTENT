DOM :- Document Object Model 

we can make the page from static to dynamic page.

It create a tree structure on the browser side.


DOM methods :- 
1. document.getElementById("idName")
2. document.getElementByClassName("className")
3. document.getElementByTagName("p")
4. document.getElementByName("xyz")

css Methods :- 
1. docuement.querySelector("") -> #demo , .className , p 
2. docuement.querySelectorAll("")


===============================

Events :- perform on the specific trigger.

onclick = button 
onchange = input field 
onSubmit = form 

Mouse event :- 
onMouseClick()
onMouseleave()
onMouseOver()

Key Events :- 
onKeyPress
onKeyUp
onKeyDown

Event Listerner

:- 

addEventlistener:- 
The addEventListener() method in JavaScript attaches an event handler to a specified DOM element without overwriting existing event handlers. It is the standard and most flexible way to handle user interactions—such as clicks, keyboard inputs, or page scrolls—in modern web development.



btn1.addEventListner("eventName", function)

event Name :- click , dbclick , keypress