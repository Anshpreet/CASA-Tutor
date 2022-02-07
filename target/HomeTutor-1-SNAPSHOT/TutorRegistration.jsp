<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="TutorRegistration.css">
	<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet"
	 integrity="sha384-T8Gy5hrqNKT+hzMclPo118YTQO6cYprQmhrYwIiQ/3axmI1hQomh7Ud2hPOy8SP1" crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Tutor Registration</title>
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
				<a href="#">Student </a>
				<a href="#">Tutor </a>
			</div>
			
		</div>
		
		<div class="dropdown">
			
			<button  class="dropbtn">
		<i class = "fa fa-user-plus"></i>Sign Up
			<i class="fa fa-caret-down"></i>
					
			</button>
	
			<div class="dropdown-content">
				<a href="#">Student </a>
				<a href="#">Tutor </a>
			</div>
		
		</div>

		<a href=""><i class = "fa fa-question-circle"></i>Help</a>

		
	</div>
	

	<div class = "regform">
		<h2 id = "heading">Portal Charges Rs.50</h2>
		<center>
		<form  method = "post" onsubmit="return checkPassword(this)">
		
		<p id="fn"> First Name        :  <input id="fn1" type ="text" oninput="this.className=''" name="first_name" placeholder="Enter First Name" required><br><br>
		<p id="ln"> Last Name         :  <input id="ln1" type ="text" oninput="this.className=''" name="last_name" placeholder="Enter Last Name" required><br><br>
		<p id="em"> Email ID          :  <input id="em1" type ="email" oninput="this.className=''" name = "email" placeholder="Enter Email" required><br><br>
		<p id="ps"> Password          :  <input id="ps1"  type ="password" oninput="this.className=''" name="password" placeholder="Create Password" ><br><br>
		<p id="cp"> Confirm Password  :  <input id="cp1" type ="password" oninput="this.className=''" name="confirm_password" placeholder="Repeat Password" ><br><br>
		<p id = "age">Age: <input id="age1" type ="number" name="age" placeholder="Enter your age" required><br><br>
	   <p id = "gn">Gender: <input  type ="radio" name="gender" value = "male" required>Male
	     <input  type ="radio" name="gender" value = "female" required> Female<br><br>
	   
	   <p id = "ql">Qualification: <input id="ql1" type ="text" name="qualification" placeholder="Enter your qualification" required><br><br>
	   <p id = "al">Available timings: <input id="al1" type ="text" name="availableTime" placeholder="Enter Available timings" required><br><br>
	   <p id = "fe">Fees: <input id="fe11" type ="text" name="fees" placeholder="Enter Fees" required><br><br>
	   <p id = "lo">Locality: <input id="lo1" type ="text" name="locality" placeholder="Enter Locality" required><br><br>
	   <p id = "pl">Place:<input  type ="radio" name="place" value = "student_home" required>At Student Home
	     <input  type ="radio" name="place" value = "tutor_home" required>At Tutor Home
			<input  type ="radio" name="place" value = "both" required>At Both Places<br><br>
	    <p id = "cl">Upto class: <select multiple name="class"  >
		    <option>-Select Class-</option>
			<option value="Nursery">Nursery</option>
			<option value="KG 1">KG 1</option>
			<option value="KG 2">KG 2</option>
			<option value="Class 1">Class 1</option>
			<option value="Class 2">Class 2</option>
			<option value="Class 3">Class 3</option>
			<option value="Class 4">Class 4</option>
			<option value="Class 5">Class 5</option>
			<option value="Class 6">Class 6</option>
			<option value="Class 7">Class 7</option>
			<option value="Class 8">Class 8</option>
			<option value="Class 9">Class 9</option>
			<option value="Class 10">Class 10</option>
			<option value="Class 11">Class 11</option>
			<option value="Class 12">Class 12</option>
			</select><br><br>
	   <p id = "sb">Subjects you teach: <br> <input type="checkbox" name="Sub" id="eng" value="English">English<br>
		<input type="checkbox" name="Sub" id="hi" value="Hindi"> Hindi<br>
		<input type="checkbox" name="Sub" id="ma" value="Maths1" > Mathematics(Upto class 10)<br>
		<input type="checkbox" name="Sub" id="sc"value="Science"> Science(Upto class 10)<br>
		<input type="checkbox" name="Sub" id="so"value="Social"> Social Science<br>
		<input type="checkbox" name="Sub" id="sa"value="Sanskrit"> Sanskrit<br>
		<input type="checkbox" name="Sub" id="co"value="Comp"> Computer(Upto class 10)<br>
		<input type="checkbox" name="Sub" id="es"value="EVS" > Environmental Studies<br>
		<input type="checkbox" name="Sub" id="ph"value="Physics"> Physics<br>
		<input type="checkbox" name="Sub" id="ch"value="Chemistry"> Chemistry  <br>
		<input type="checkbox" name="Sub" id="bi"value="Biology" > Biology<br>
		<input type="checkbox" name="Sub" id="mat"value="Maths2"> Mathematics(For classes 11 & 12)  <br>
		<input type="checkbox" name="Sub" id="com"value="Comp1" > Computer Science(For classes 11 & 12)<br>
		<input type="checkbox" name="Sub" id="acc"value="Accounts"> Accounts  <br>
		<input type="checkbox" name="Sub"id="eco" value="Economics" > Economics<br>
		<input type="checkbox" name="Sub" id="ep" value="EP"> Entrepreneurship  <br>
		<input type="checkbox" name="Sub" id="bs" value="BS" > Business Studies<br>
	  
	   <p id = "ec">Extra courses: <br><input type="checkbox" name="c" id="pa"value="Painting">Painting<br>
		<input type="checkbox" name="c" id="dr"value="Drawing"> Drawing<br>
		<input type="checkbox" name="c" id="sk" value="Sketching" > Sketching<br>
		<input type="checkbox" name="c" id="da"value="Dancing"> Dancing<br>
		<input type="checkbox" name="c" id="ca" value="Calligraphy"> Calligraphy<br>
		<input type="checkbox" name="c" id="ac"value="Art"> Art & Craft<br>
		
	   <p id = "nl">Native languages:<br> <input type="checkbox" id="sp" name="n" value="Spanish">Spanish<br>
		<input type="checkbox" name="n" id="fr"value="French"> French<br>
		<input type="checkbox" name="n" id="tr"value="Turkish" > Turkish<br>
		<input type="checkbox" name="n" id="sw" value="Swedish"> Swedish<br>
		<input type="checkbox" name="n"id="ru" value="Russian"> Russian<br>
		<input type="checkbox" name="n" id="ge"value="German"> German<br>
	   

		<input type = "submit" value="Proceed to pay" name="btn">
		</form>
		</center>
	</div>
	
</body>
</html>