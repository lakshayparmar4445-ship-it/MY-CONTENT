const form = document.getElementById("register-form")
const mainCont = document.getElementById("mainCont")

form.addEventListener("submit",(e)=>{
    e.preventDefault();

   const user_name = e.target.username.value;
    const user_email = e.target.email.value;
    const user_pass = e.target.password.value;
    
    let user_data = JSON.parse(localStorage.getItem("userDetails")) ?? [];

    user_data.push({
       "user_name" :user_name,
       "user_email" :user_email,
       "user_password" :user_pass
    })

    localStorage.setItem("userDetails",JSON.stringify(user_data))
    e.target.reset()
    displayData()
})

function  displayData(){
     let user_data = JSON.parse(localStorage.getItem("userDetails")) ?? [];
     let finalData = ""

     user_data.forEach((ele,i)=>{
               finalData += `<div>
               <button onClick="removeData(${i})">&times;</button>
               <h3>Name :</h3>
               <div>${ele.user_name}</div>

                <h3>Email :</h3>
               <div>${ele.user_email}</div>

                <h3>password :</h3>
               <div>${ele.user_password}</div>
            
               </div> `
     })
     mainCont.innerHTML = finalData;
}


function removeData(ind){
   const user_data = JSON.parse(localStorage.getItem("userDetails")) ?? [];
   user_data.splice(ind,1) // 4,1 -> 
   localStorage.setItem("userDetails",JSON.stringify(user_data))
   displayData();
}
displayData()