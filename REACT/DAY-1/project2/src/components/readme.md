ReactJS :-

ReactJS is a free, open source ,  javascript library mainly used for the building UI (user interface) components , and we use reuse this component , and we can make the single page application. Originally created by Facebook in 2013.


Features :- 
1. Virtual DOM :- 
2. Diffing :- 
3. Reconcilcation
4. Rich EcoSystem


DOM :- In Js DOM is there, Docuement Object Model.
        Tree like structure browser side , every time recreate the dom.

Virtual DOM :- It is a lightweight copy of real dom.

Diffing :- Comparison process b/w virtual dom and real dom.

Reconcilation :- After comparison , virtual dom gives the changes to the real dom ,this whole process is known as Reconcilation.

Rich Ecosystem :- Many libraries present in this.


======================================

Extension :- 
html .html 
Css .css
JS .js
ReactJS .jsx -> javascript XML 
               -> Inside this we can write html and js as well.


=========================================

npx create react-app myApp -> depreacted 

npm create vite@latest firstApp-> latest command for the project creation

=============================================


create a folder stucture :- 

1. npm create vite@latest
    -> Project Name :- firstApp 
    -> package Name :- enter 
    -> library/ framework -> react
    -> varient/language -> javascript 
    -> which linter to use -> EsLint
    -> install - Yes



Folder Structure :- 

firstApp 
   -> node modules :- installed library or modules
   -> public :- static files -> image , audio , logo , icon
   -> src :- 
       -> assets :- static files - logo , img , svg
       -> App.css -> css provide to app.jsx
       -> App.jsx -> components
       -> index.css -> css provide to main.jsx
       -> main.jsx -> main file  
    -> .gitignore -> file / folder ignore 
    -> index.html -> single page application 
    -> package.json -> project information / dependencies
    -> package-lock.json -> metadata about the data / package.json
    -> README.md
    -> vite.config.js -> configuration logic 



ReactJS code run :- 

npm run dev -> index.html -> main.jsx -> App.jsx

Extension :- ES7+


============================================================================

<></> :- empty tag / fragments 
        we can write the multiple tag inside the fragments.


        write the name of the component always starts with upperCase.
        boilerplate code