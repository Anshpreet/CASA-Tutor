<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Personal Information</title>
</head>
<body>
<form action="PersonalInfo" method="post">
		
	   <p id = "age">Age: <input id="age1" type ="number" name="age" placeholder="Enter your age" required><br><br>
	   <p id = "gn">Gender: <input id="gn1" type ="radio" name="gender" value = "male" required>Male
	     <input id="gn1" type ="radio" name="gender" value = "female" required>Female<br><br>
	   
	   <p id = "ql">Qualification: <input id="ql1" type ="text" name="qualification" placeholder="Enter your qualification" required><br><br>
	   <p id = "sb">Available timings: <input id="sb1" type ="text" name="availableTime" placeholder="Enter Available timings" required><br><br>
	   <p id = "sb">Fees: <input id="sb1" type ="text" name="fees" placeholder="Enter Fees" required><br><br>
	    <p id = "cl">Upto class: <select multiple name="class"  >
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
	   <p id = "sb">Subjects you teach: <input type="checkbox" name="Sub" value="English">English<br>
		<input type="checkbox" name="Sub" value="Hindi"> Hindi<br>
		<input type="checkbox" name="Sub" value="Maths1" > Mathematics(Upto class 10)<br>
		<input type="checkbox" name="Sub" value="Science"> Science(Upto class 10)<br>
		<input type="checkbox" name="Sub" value="Social"> Social Science<br>
		<input type="checkbox" name="Sub" value="Sanskrit"> Sanskrit<br>
		<input type="checkbox" name="Sub" value="Comp"> Computer(Upto class 10)<br>
		<input type="checkbox" name="Sub" value="EVS" > Environmental Studies<br>
		<input type="checkbox" name="Sub" value="Physics"> Physics<br>
		<input type="checkbox" name="Sub" value="Chemistry"> Chemistry  <br>
		<input type="checkbox" name="Sub" value="Biology" > Biology<br>
		<input type="checkbox" name="Sub" value="Maths2"> Mathematics(For classes 11 & 12)  <br>
		<input type="checkbox" name="Sub" value="Comp1" > Computer Science(For classes 11 & 12)<br>
		<input type="checkbox" name="Sub" value="Accounts"> Accounts  <br>
		<input type="checkbox" name="Sub" value="Economics" > Economics<br>
		<input type="checkbox" name="Sub" value="EP"> Entrepreneurship  <br>
		<input type="checkbox" name="Sub" value="BS" > Business Studies<br>
	  
	   <p id = "sb">Extra courses: <input type="checkbox" name="c" value="Painting">Painting<br>
		<input type="checkbox" name="c" value="Drawing"> Drawing<br>
		<input type="checkbox" name="c" value="Sketching" > Sketching<br>
		<input type="checkbox" name="c" value="Dancing"> Dancing<br>
		<input type="checkbox" name="c" value="Calligraphy"> Calligraphy<br>
		<input type="checkbox" name="c" value="Art"> Art & Craft<br>
		
	   <p id = "sb">Native languages: <input type="checkbox" name="n" value="Spanish">Spanish<br>
		<input type="checkbox" name="n" value="French"> French<br>
		<input type="checkbox" name="n" value="Turkish" > Turkish<br>
		<input type="checkbox" name="n" value="Swedish"> Swedish<br>
		<input type="checkbox" name="n" value="Russian"> Russian<br>
		<input type="checkbox" name="n" value="German"> German<br>
	   <input type = "submit" value="Submit" name="btn">
	   
	</form>

</body>
</html>