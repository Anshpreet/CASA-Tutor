<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="Payment.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Payment</title>
</head>
<body>
<div class = "form">
	<center>
		<h2 id = "heading"> Fill Payment Details </h2>
	
	<form action= "Payment" method = "post">
		<p id = "card" > Card Number : <input type ="number" placeholder="Enter Card Number" required><br><br>
		<p id = "cvv" > CVV Number : <input type ="number" placeholder="Enter CVV Number" required><br><br>
		<p id= "amt"> Amount : Rs. 50 <br><br>
		<input type = "submit" value="Pay" name="btn">
	</form>
	</center>
</div>
</body>
</html>