<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="TutorHomepage.css">
	<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-T8Gy5hrqNKT+hzMclPo118YTQO6cYprQmhrYwIiQ/3axmI1hQomh7Ud2hPOy8SP1" crossorigin="anonymous">
	<title> Tutor Homepage</title>
</head>
<body>
<div class = "header">
		<img src = "logo.png"/ >
		<h1>CASA TUTORS </h1>
		<p>"The future of the world is in my classroom today."</p>
	</div>
	<div class = "Split left">
		<a class = "active" href ="TutorHomepage.jsp" id="view"> View Profile </a><br>
		<a href="TutorEditProfile.jsp"> Edit Profile </a><br>
		<a href="TutorLogout.jsp"> Logout </a><br>
		
		
	</div>
	<div class = "Split right">
		<h2 > TUTOR PROFILE</h2>
		<%HttpSession hs=request.getSession(false);
	String s_mail=(String)hs.getAttribute("mail");
	if(s_mail==null)
	{
		response.sendRedirect("TutorLogin.jsp");
	}
%>
<h3><%out.print("Welcome"+" "+s_mail); %></h3>
		
	</div>

</body>
</html>