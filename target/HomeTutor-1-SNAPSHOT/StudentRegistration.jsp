<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="StudentRegistration.css">
	<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet"
	 integrity="sha384-T8Gy5hrqNKT+hzMclPo118YTQO6cYprQmhrYwIiQ/3axmI1hQomh7Ud2hPOy8SP1" crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Registration</title>
<script >
		function checkPassword(form){
			password=form.password.value;
			confirm_password=form.confirm_password.value;
			//If password not entered
			if(password=='')
				alert("Please enter Password");
			//If confirm password not entered
			else if(confirm_password=='')
				alert("Please enter Confirm Password");
			//If password and confirm password not match
			else if(password!=confirm_password){
				 alert ("Password did not match: Please try again...");
				 return false;
				 }
				 
		}
	</script>

</head>
<body>
<div class = "header">
		<img src = "logo.png"/ >
		<h1>CASA TUTORS </h1>
		<p>"The future of the world is in my classroom today."</p>
	</div>
	<div class = "navbar">
		
		<a href=""><i class = "fa fa-home"></i>Home</a><div class="dropdown">
			<button class="dropbtn"><i class="fa fa-fw fa-user"></i>Login 
			<i class="fa fa-caret-down"></i>
			</button>
			<div class="dropdown-content">
				<a href="StudentLogin.jsp">Student </a>
				<a href="TutorLogin.jsp">Tutor </a>
			</div>
			
		</div>
		
		<div class="dropdown">
			
			<button  class="dropbtn">
			<i class = "fa fa-user-plus"></i>Sign Up
			<i class="fa fa-caret-down"></i>
					
			</button>
	
			<div class="dropdown-content">
				<a href="StudentRegistration.jsp">Student </a>
				<a href="TwoStep.jsp">Tutor </a>
			</div>
		
		</div>

		<a href=""><i class = "fa fa-question-circle"></i>Help</a>

		
	</div>
	
	<div class = "regform">
		<h2 id = "heading">Portal Charges Rs.50</h2>
		<center>
		<form action="StudentRegistration" method = "post" onsubmit="return checkPassword(this)">
		
		<p id="fn"> First Name        :  <input id="fn1" type ="text" name="First_Name" placeholder="Enter First Name" required><br><br>
		<p id="ln"> Last Name         :  <input id="ln1" type ="text" name="Last_Name" placeholder="Enter Last Name" required><br><br>
		<p id="em"> Email ID          :  <input id="em1" type ="email" name = "Email_ID" placeholder="Enter Email" required><br><br>
		<p id="ps"> Password          :  <input id="ps1"  type ="password" name="Password" placeholder="Create Password" ><br><br>
		<p id="cp"> Confirm Password  :  <input id="cp1" type ="password" name="confirm_password" placeholder="Repeat Password" ><br><br>
		<input type = "submit" value="Proceed to pay" name="btn" onclick="Payment.jsp">
		</form>
		</center>
	</div>
	
</body>
</html>