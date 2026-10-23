import React, { useState } from 'react'

function EmployeManagement() {
    const[employee,setEmployee]=useState([])
    const[formData,setFormData]=useState({name:"",username:"",phone:"",city:""})
    const[editId,setEditId]=useState(null)

    function handleChange(e){
        const{name,value}=e.target
        setFormData({
            ...formData,
            [name]:value,
        })
    }
    function handleSubmit(e){
        e.preventDefault()
        if (!formData.name.trim() || !formData.username.trim() || !formData.phone.trim() || !formData.city.trim()){
            alert("saari bhariye bhaiya")
            return
        } 
        if(!/^\d{10}$/.test(formData.phone)){
            alert("konsa phone hai bhai, 10 number hote thhe india main toh!")
            return
        }
        const usernameExists = employee.some((emp)=> emp.username.trim().toLowerCase()===formData.username.trim().toLowerCase() &&
        emp.id!==editId)
        if(usernameExists){
            alert("pehle se kiskika hai")
            return
        }
        if(editId!==null){
            setEmployee(
                employee.map((emp)=>emp.id==editId
                ? {...formData,id:editId}
                : emp
            )
            )
            setEditId(null);
        }else{
            const newEmployee={
                ...formData,
                id: Date.now(),
            }
            setEmployee([...employee,newEmployee])
        }
        
    }

  return (
    <div>
      
    </div>
  )
}

export default EmployeManagement
