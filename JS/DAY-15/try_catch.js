try{
    let a=10
    let x=100
    a=a+x
    console.log(a)
}catch(error){
    console.log(error.message)

}finally{
    console.log("always")
}