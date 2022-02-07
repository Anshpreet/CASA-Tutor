<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="Help.css">
	<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-T8Gy5hrqNKT+hzMclPo118YTQO6cYprQmhrYwIiQ/3axmI1hQomh7Ud2hPOy8SP1" crossorigin="anonymous">
<title>Help
</title>
</head>
<body>
<div class = "header">
		<img src ="logo.png"/>
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

		<a class="active"href="Help.jsp"><i class = "fa fa-question-circle"></i>Help</a>
		</div>
		<div class="Faq">
		<p><br>1. What is Casa Tutor Site ?<br>
		(A) It is an online platform helping students to find best tutors.<br><br>
			2.Can I contact the tutors in our area whose skills match my needs?<br>
			(A) Yes, you can contact to the tutor through their mail id.<br><br>
			 3.Can I post my profile for free?<br>
		(A) Yes. We offer a free membership for tutors to add their profile.<br><br>
		4. Do I need to pay any commission from my tuition fee?<br>
		(A) No. The entire fee is yours. We do not ask for any commission from tuition fee.<br><br>
		</div>
		</body>

</body>
</html>