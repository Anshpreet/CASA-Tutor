<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<link rel="stylesheet" type="text/css" href="SearchHomeTutor.css">
	<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-T8Gy5hrqNKT+hzMclPo118YTQO6cYprQmhrYwIiQ/3axmI1hQomh7Ud2hPOy8SP1" crossorigin="anonymous">
	<title> Search Native Languages</title>
</head>
<body>
<form action="SearchNativeSpeech" method="Post">
<div class = "header">
		<img src = "logo.png"/ >
		<h1>CASA TUTORS </h1>
		<p>"The future of the world is in my classroom today."</p>
	</div>
	<div class = "Split left">
		<a  href ="StudentHomepage.jsp" id="view"> View Profile </a><br>
		<a href="EditProfile.jsp"> Edit Profile </a><br>
		<a  href="SearchHomeTutor.jsp"> Search Home Tutor </a><br>
		<a href="SearchOnlineCourses.jsp"> Search Online Courses </a><br>
		<a href="SearchExtraCourses.jsp"> Search Extra Courses </a><br>
		<a class = "active" href="SearchNativeSpeech.jsp"> Search Native Speech </a><br>
		<a href="Logout.jsp"> Logout </a><br>
		
	</div>
	<div class = "Split right">
	<center>
		<input type="submit" value="View Tutor Info">
	</center>
	</div>
	</form>
	
	

</body>
</html>