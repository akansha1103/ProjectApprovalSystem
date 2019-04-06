
function validate(){
var uid = document.getElementById("user").value;
var name= document.getElementById("name").value;
var email=document.getElementById("email").value;
var contact=document.getElementById("contact").value;
var password=document.getElementById("pass").value;
var rpassword=document.getElementById("repeat-pass").value;
var a=false;
if(uid==""){
	alert("UserID can't be empty!");
        a=false;
	return false;
}
if(name==""){
	alert("Name field can't be empty");
        a=false;
	return false;
}
if (email=="" || email.indexOf("@")<1 || email.indexOf(".")- email.indexOf("@")<2){
	alert("Please provide a valid email id");
        a=false;
	return false;
}
if (contact.length!=10 || isNaN(contact) || contact==""){
	alert("Please provide a valid contact no.");
        a=false;
	return false;
}

if(password.length<5  ){
	alert("Password length must be of atleast 5 characters");
        a=false;
	return false;
}
if(!(rpassword==pass)){
	alert("Password mismatched!");
        a=false;
	return false;
}
if(a==true)
{
    location.href("registration.jsp");
}
}
       



