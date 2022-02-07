<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="Login.css">
	<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-T8Gy5hrqNKT+hzMclPo118YTQO6cYprQmhrYwIiQ/3axmI1hQomh7Ud2hPOy8SP1" crossorigin="anonymous">
<title>Login
</title>
</head>
<body>
<div class = "header">
		<img src = "logo.png"/ >
		<h1>CASA TUTORS </h1>
		<p>"The future of the world is in my classroom today."</p>
	</div>
	<div class = "navbar">
		
		<a href="Homepage.jsp"><i class = "fa fa-home"></i>Home</a>
		<div class="dropdown">
			<button class="dropbtn"><i class="fa fa-fw fa-user"></i>Login 
			<i class="fa fa-caret-down"></i>
			</button>
			<div class="dropdown-content">
				<a href="StudentLogin.jsp">Student </a>
				<a href="TutorLogin.jsp">Tutor </a>
			</div>
			
		</div>
		<div class="dropdown">
			<button class="dropbtn"><i class = "fa fa-user-plus"></i>Sign Up
			<i class="fa fa-caret-down"></i>
			</button>
			<div class="dropdown-content">
				<a href="StudentRegistration.jsp">Student </a>
				<a href="TwoStep.jsp">Tutor </a>
			</div>
			
		</div>

		<a href=""><i class = "fa fa-question-circle"></i>Help</a>
		
	</div>
	<div class = "login_form">
		<center>
		<form action="StudentLogin" method="post">
		<p id = "un">Username:	<input id="username" type = "email"   name ="Email_ID" placeholder="Enter Email Id ." required><br><br>
		<p id = "ps">Password:  <input id="password" type ="password" name ="Password" placeholder="Enter Password" required><br><br>
		<input type = "submit" value="Login" name="btn">
		</form>
		</center>
	</div>

</body>
</html>