<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="TwoStepFom.css">
	<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-T8Gy5hrqNKT+hzMclPo118YTQO6cYprQmhrYwIiQ/3axmI1hQomh7Ud2hPOy8SP1" crossorigin="anonymous">
	<title> Tutor Registration</title>
</head>
<body>
<div class = "header">
		<img src = "logo.png"/ >
		<h1>CASA TUTORS </h1>
		<p>"The future of the world is in my classroom today."</p>
	</div>
	<div class = "navbar">
		
		<a href="Homepage.jsp"><i class = "fa fa-home"></i>Home</a><div class="dropdown">
			<button class="dropbtn"><i class="fa fa-fw fa-user"></i>Login 
			<i class="fa fa-caret-down"></i>
			</button>
			<div class="dropdown-content">
				<a href="StudentLogin.jsp">Student </a>
				<a href="TutorLogin.jsp">Tutor </a>
			</div>
			
		</div>
		
		<div class="dropdown" >
			
			<button  class="dropbtn" >
		<i  class = "fa fa-user-plus"></i>Sign Up
			<i class="fa fa-caret-down"></i>
					
			</button>
	
			<div class="dropdown-content">
				<a  href="StudentRegistration.jsp">Student </a>
				<a href="TwoStep.jsp">Tutor </a>
			</div>
		
		</div>

		<a href="Help.jsp"><i class = "fa fa-question-circle"></i>Help</a>

		
	</div>

<form id="regForm" action="TwoStep" method = "post" onsubmit="return checkPassword(this)" >
  <h1>REGISTER</h1>
  <!-- One "tab" for each step in the form: -->

		<h2 id = "heading">Portal Charges Rs.50</h2>
		<center>
	<div class = "tab">
		<p id="fn"> First Name        :  <input id="fn1" type ="text"  name="First_Name" placeholder="Enter First Name" required><br><br>
		<p id="ln"> Last Name         :  <input id="ln1" type ="text"  name="Last_Name" placeholder="Enter Last Name" required><br><br>
		<p id="em"> Email ID          :  <input id="em1" type ="email"  name = "Email_ID" placeholder="Enter Email" required><br><br>
		<p id="ps"> Password          :  <input id="ps1"  type ="password"  name="Password" placeholder="Create Password" ><br><br>
		<p id="cp"> Confirm Password  :  <input id="cp1" type ="password" name="confirm_password" placeholder="Repeat Password" ><br><br>
			
	</div>
  	
	<div class = "tab">	
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
	    <p id = "cl">Upto class: <input type ="text" name="Class" placeholder="Enter Classes You Teach" >
		   <br><br>
	   <p id = "sb">Subjects you teach:  <input type="text" name="Sub" id="sb1" placeholder="Enter Subjects You Teach" ><br><br>
		
	  
	   <p id = "ec">Extra courses:<input type="text" name="c" id="sc1" placeholder="Enter Extra Courses"><br><br>
		
	   <p id = "nl">Native languages: <input type="text" id="nl1" name="n" placeholder="Enter Native Languages"><br><br>
	   

	</div>
	<div class = "tab">
		<p id = "card" > Card Number : <input type ="number" placeholder="Enter Card Number" required><br><br>
		<p id = "cvv" > CVV Number : <input type ="number" placeholder="Enter CVV Number" required><br><br>
		<p id= "amt"> Amount : Rs. 50 <br><br>
	</div>
  <div style="overflow:auto;">
    <div style="float:right;">
      <button type="button" id="prevBtn" onclick="nextPrev(-1)">Previous</button>
      <button type="button" id="nextBtn" onclick="nextPrev(1)">Next</button>
    </div>
  </div>
  <!-- Circles which indicates the steps of the form: -->
  <div style="text-align:center;margin-top:40px;">
    <span class="step"></span>
    <span class="step"></span>
    <span class="step"></span>
   
  </div>
  
</form>

<script>
var currentTab = 0; // Current tab is set to be the first tab (0)
showTab(currentTab); // Display the current tab

function showTab(n) {
  // This function will display the specified tab of the form...
  var x = document.getElementsByClassName("tab");
  x[n].style.display = "block";
  //... and fix the Previous/Next buttons:
  if (n == 0) {
    document.getElementById("prevBtn").style.display = "none";
  } else {
    document.getElementById("prevBtn").style.display = "inline";
  }
  if (n == (x.length - 1)) {
    document.getElementById("nextBtn").innerHTML = "Submit";
  } else {
    document.getElementById("nextBtn").innerHTML = "Next";
  }
  //... and run a function that will display the correct step indicator:
  fixStepIndicator(n)
}

function nextPrev(n) {
  // This function will figure out which tab to display
  var x = document.getElementsByClassName("tab");
  // Exit the function if any field in the current tab is invalid:
  if (n == 1 && !validateForm()) return false;
  // Hide the current tab:
  x[currentTab].style.display = "none";
  // Increase or decrease the current tab by 1:
  currentTab = currentTab + n;
  // if you have reached the end of the form...
  if (currentTab >= x.length) {
    // ... the form gets submitted:
    document.getElementById("regForm").submit();
    return false;
  }
  // Otherwise, display the correct tab:
  showTab(currentTab);
}

function validateForm() {
  // This function deals with validation of the form fields
  var x, y, i, valid = true;
  x = document.getElementsByClassName("tab");
  y = x[currentTab].getElementsByTagName("input");
  // A loop that checks every input field in the current tab:
  for (i = 0; i < y.length; i++) {
    // If a field is empty...
    if (y[i].value == "") {
      // add an "invalid" class to the field:
      y[i].className += " invalid";
      // and set the current valid status to false
      valid = false;
    }
  }
  // If the valid status is true, mark the step as finished and valid:
  if (valid) {
    document.getElementsByClassName("step")[currentTab].className += " finish";
  }
  return valid; // return the valid status
}

function fixStepIndicator(n) {
  // This function removes the "active" class of all steps...
  var i, x = document.getElementsByClassName("step");
  for (i = 0; i < x.length; i++) {
    x[i].className = x[i].className.replace(" active", "");
  }
  //... and adds the "active" class on the current step:
  x[n].className += " active";
}
</script>


</body>
</html>