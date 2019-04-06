<!DOCTYPE html>
<html lang="en">
<head>
	<title>Registration</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="assets/images1/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="assets/vendor1/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="assets/fonts1/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="assets/fonts1/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="assets/fonts1/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="assets/vendor1/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="assets/vendor1/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="assets/vendor1/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="assets/vendor1/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="assets/vendor1/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="assets/css1/util.css">
	<link rel="stylesheet" type="text/css" href="assets/css1/main.css">
<!--===============================================================================================-->
</head>

<body style="background-color: #999999;">
    <form action="incharge_db.jsp" onSubmit="return validate();">
	
	<div class="limiter">
		<div class="container-login100">
			<div class="login100-more" style="background-image: url('assets/images1/bg-01.jpg');"></div>

			<div class="wrap-login100 p-l-50 p-r-50 p-t-72 p-b-50">
				<form class="login100-form validate-form">
					<span class="login100-form-title p-b-59">
						Sign Up
					</span>

					<div class="wrap-input100 validate-input" data-validate="UserId is required">
						<span class="label-input100">User Id</span>
						<input class="input100" type="text" name="user" placeholder="UserId">
						<span class="focus-input100"></span>
					</div>
                                    <div class="wrap-input100 validate-input" data-validate="Name is required">
						<span class="label-input100">Name</span>
						<input class="input100" type="text" name="name" placeholder="Name">
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
						<span class="label-input100">Email</span>
						<input class="input100" type="text" name="email" placeholder="Email addess">
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate="Contact is required">
						<span class="label-input100">Contact Number</span>
						<input class="input100" type="text" name="contact" placeholder="Contact Number">
						<span class="focus-input100"></span>
					</div>
                                        

					<div class="wrap-input100 validate-input" data-validate = "Password is required">
						<span class="label-input100">Password</span>
						<input class="input100" type="password" name="pass" placeholder="*************">
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate = "Confirm Password is required">
						<span class="label-input100">Confirm Password</span>
						<input class="input100" type="password" name="repeat-pass" placeholder="*************">
						<span class="focus-input100"></span>
					</div>

					<div class="flex-m w-full p-b-33">
						<div class="contact100-form-checkbox">
							<input class="input-checkbox100" id="ckb1" type="checkbox" name="remember-me">
							<label class="label-checkbox100" for="ckb1">
								<span class="txt1">
									I agree to the
									<a href="#" class="txt2 hov1">
										Terms of User
									</a>
								</span>
							</label>
						</div>

						
					</div>

					<div class="container-login100-form-btn">
						<div class="wrap-login100-form-btn">
							<div class="login100-form-bgbtn"></div>
							<button class="login100-form-btn">
								Sign Up
							</button>
						</div>

						<a href="incharge_signin.jsp" class="dis-block txt3 hov1 p-r-30 p-t-10 p-b-10 p-l-30">
							Sign in
							<i class="fa fa-long-arrow-right m-l-5"></i>
						</a>
					</div>
				</form>
			</div>
		</div>
	</div>
	
<!--===============================================================================================-->
	<script src="assets/vendor1/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="assets/vendor1/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="assets/vendor1/bootstrap/js/popper.js"></script>
	<script src="assets/vendor1/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="assets/vendor1/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="assets/vendor1/daterangepicker/moment.min.js"></script>
	<script src="assets/vendor1/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="assets/vendor1/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="assets/js1/main.js"></script>
         <script type="text/javascript">
function validate(){
var uid = document.forms["myForm"]["user"].value;
var name = document.forms["myForm"]["name"].value;
var email=document.forms["myForm"]["email"].value;
var contact=document.forms["myForm"]["contact"].value;
var pass=document.forms["myForm"]["pass"].value;
var rpass =document.forms["myForm"]["repeat-pass"].value;

if(uid==""){
	alert("UserID can't be empty!");
	return false;
}
if(name==""){
	alert("Name field can't be empty");
	return false;
}
if (contact.length!=10 || isNaN(contact) || contact==""){
	alert("Please provide a valid contact no.");
	return false;
}
if (email=="" || email.indexOf("@")<1 || email.indexOf(".")- email.indexOf("@")<2){
	alert("Please provide a valid email id");
	return false;
}
if(pass.length<5  ){
	alert("Password length must be of atleast 5 characters");
	return false;
}
if(!(rpass==pass)){
	alert("Password mismatched!");
	return false;
}
}
</script>
</form>
</body>
</html>