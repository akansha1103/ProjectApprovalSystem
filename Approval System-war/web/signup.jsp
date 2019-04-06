<!DOCTYPE html>
<html lang="en" >

<head>
  <meta charset="UTF-8">
  <title>Student Login Form</title>
  
  
  <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Open+Sans:600'>

      <link rel="stylesheet" href="style.css">

</head>

<body>
<form>
  <div class="login-wrap">
	<div class="login-html">
		<input id="tab-1" type="radio" name="tab" class="sign-up" checked><label for="tab-1" class="tab">Sign Up</label>
		<input id="tab-2" type="radio" name="tab" class="sign-in"><label for="tab-2" class="tab">Sign In</label>
		<div class="login-form">
			
			<div class="sign-up-htm">
				<div class="group">
					<label for="user" class="label">UserId</label>
					<input id="user" type="number" class="input">
				</div>
                                <div class="group">
					<label for="user" class="label">Name</label>
					<input id="name" type="text" class="input">
				</div>
				<div class="group">
					<label for="pass" class="label">Password</label>
					<input id="pass" type="password" class="input" data-type="password">
				</div>
				<div class="group">
					<label for="pass" class="label">Repeat Password</label>
					<input id="rpass" type="password" class="input" data-type="password">
				</div>
                                <div class="group">
					<label for="user" class="label">Contact Number</label>
					<input id="contact" type="number" class="input">
				</div>
				<div class="group">
					<label for="pass" class="label">Email Address</label>
					<input id="email" type="text" class="input">
				</div>
				<div class="group">
					<button type="button" class="button" onclick="validate()" onclick="location.href='reg-process.jsp'" value="Sign Up">SIGN UP</button>
				</div>
                            <div class="sign-in-htm">
				<div class="group">
					<label for="user" class="label">UserId</label>
					<input id="user1" type="text" class="input">
				</div>
				<div class="group">
					<label for="pass" class="label">Password</label>
					<input id="pass1" type="password" class="input" data-type="password">
				</div>
				<div class="group">
					<input id="check" type="checkbox" class="check" checked>
					<label for="check"><span class="icon"></span> Keep me Signed in</label>
				</div>
				<div class="group">
					<input type="submit" class="button" value="Sign In">
				</div>
				<div class="hr"></div>
				<div class="foot-lnk">
					<a href="#forgot">Forgot Password?</a>
				</div>
			</div>
                            <script type="text/javascript">
function validate(){
var uid = document.getElementById("user").value;
var password = document.getElementById("pass").value;
var name=document.getElementById("name").value;
var rpassword=document.getElementById("rpass").value;
var email=document.getElementById("email").value;
var contact=document.getElementById("contact").value;

if(uid==""){
	alert("UserID can't be empty!");
	return false;
}
if(name==""){
	alert("Name field can't be empty");
	return false;
}
if(password.length<5 ){
	alert("Password length must be of atleast 5 characters");
	return false;
}
if(!(password==rpassword)){
	alert("Password mismatched!");
	return false;
    }
if( isNaN(contact) || contact=="" ||contact.length!=10 ){
	alert("Please provide a valid contact no.");
	return false;
}
if (email=="" || email.indexOf("@")<1 || email.indexOf(".")- email.indexOf("@")<2){
	alert("Please provide a valid email id");
	return false;
}

}

</script>


				<div class="hr"></div>
				<div class="foot-lnk">
					<a><label for="tab-1">Already Member?</a>
				</div>
			</div>
		</div>
	</div>
</div>
  
  
</form>
</body>

</html>