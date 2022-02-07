<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="Homepage.css">
	<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-T8Gy5hrqNKT+hzMclPo118YTQO6cYprQmhrYwIiQ/3axmI1hQomh7Ud2hPOy8SP1" crossorigin="anonymous">
	<title> Homepage</title>
</head>
<body>
<!--start of header section-->
	<div class = "header">
		<img src = "logo.png"/ >
		<h1>CASA TUTORS </h1>
		<p>"The future of the world is in my classroom today."</p>
	</div>
	
	<div class = "navbar">
		
		<a class = "active" href=""><i class = "fa fa-home"></i>Home</a>
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
	<!--end of header section-->
	<!-- Image Slider-->
	<div class = "Slideshow" style="max-width:800px">
		<img class = "slides" src = "p8e.jpg"  />
		<img class = "slides" src = "p6e.jpg"/>
		<img class = "slides" src = "p5.jpg" />
		<img class = "slides" src = "p7e.jpg" />
	</div>
	<script>
		var myIndex = 0;
		carousel();

		function carousel() {
		var i;
		var x = document.getElementsByClassName("slides");
		for (i = 0; i < x.length; i++) {
		x[i].style.display = "none";  
		}
		myIndex++;
		if (myIndex > x.length) {myIndex = 1}    
		x[myIndex-1].style.display = "block";  
		setTimeout(carousel, 3000); 
		}
	</script>
	<!--End of image slider-->
	
  
	
	<!--Start of Who We Are-->	
	<div class = "Split left">
		<div class = "AboutWebsite">
			<h1>Who We Are. <h1>
			<h2> CASA TUTORS </h2>
			<p>CASA TUTOR is a professional home tution service provider for students of classes nursery to class 12. We revolutionize the tutoring 
			industry with one to one education.Our aim is to create a tutoring hemisphere with hand picked teacher ,proper home tutor.<br> 
			With the help of “CASA Tutor” system one can easily search a perfect home tutor or a student for themselves as per their requirements
			by simply providing their essential details over the website. 
			</p>
		</div>
	</div>
	<div class ="Split right">
		<div class ="vision">
			<h2> OUR VISION </h2>
			<p>The main vision of 'CASA TUTOR' is to provide a personalized learning to the students as per their mindset.We will eliminate
			unemployment by generating jobs for the tutors by providing them students. Believe us, when we say -We can, We will.</p>
		</div>
	</div>
	<!--End of Who We Are-->
	<!--Start of courses offered-->
	<div class ="course">
			<h1>Courses We Offer</h1>
			<ul class = "c1" style ="list-style-type:circle;">
				<li>Nursery to Class 10 - All subjects available.</li>
				<li>For classes 11 and 12 (all subjects available for these streams) : </li>
					<ul style="list-style-type:circle;">
						<li>Commerce        
						<li>Science         
						<li>Arts       
						<li>Humanities 
						</li>
					</ul>
				<li>Native languages available:</li>
					<ul stle="list-style-type:circle;">
						<li>Spanish</li>
						<li>French</li>
						<li>Turkish</li>
						<li>Swedish</li>
						<li>Russian</li>
						<li>German</li>
					</ul>
			</ul>
	</div>
	<!--End of courses offered-->
	<!--Start of Working process-->
	<div class ="working">
		<h1>How We Do.</h1>
		<h3>Our working process.</h3>
	</div>
	<div class ="flow">
		<img id = "register" src = "register1.png"\>
		<h2 id ="r1">REGISTER</h2>
		<p id="r2">|<br>|<br>|</p>
		<p id = "r3">-------------------------------------------------------------------------------------------------------------------------------------------------</p>
		
		<img id = "payment" src = "payment1.png"\>
		<h2 id ="p1">PAYMENT</h2>
		<p id="p2">|<br>|<br>|</p>
		<p id = "p3">-------------------------------------------------------------------------------------------------------------------------------------------------</p>
		
		<img id = "testimonial" src = "info1.png"\>
		<h2 id ="t1">FILLING OF TESTIMONIALS</h2>
		<p id="t2">|<br>|<br>|</p>
		<p id = "t3">-------------------------------------------------------------------------------------------------------------------------------------------------</p>
		
		<img id = "search" src = "search1.png"\>
		<h2 id ="s1">SEARCH</h2>
		<p id="s2">|<br>|<br>|</p>
		<p id = "s3">-------------------------------------------------------------------------------------------------------------------------------------------------</p>
		
		<img id = "interact" src = "interact1.png"\>
		<h2 id ="i1">STUDENT TUTOR INTERACTION</h2>
		<p id="i2">|<br>|<br>|</p>
		<p id = "i3">-------------------------------------------------------------------------------------------------------------------------------------------------</p>
		
		<img id = "tutor" src = "tutor1.png"\>
		<h2 id ="b1">TUTORING BEGINS</h2>

	</div>
	<!--End of Working process-->
	<!--Start of team names-->
	<div class ="team">
		<h1>Our Team</h1>
		<h3>We Make Magic.</h3>
	</div>
	<div class ="members">
		<h2 id="ansh">Anshpreet Kaur </h2>
		<h2 id ="isha"> Isha Chawla</h2>
		<h2 id ="misha"> Misha Kodwani</h2>
		
	</div>
	<!--End of team name-->
	<!--Start of Contact Section-->
	<div class="contact">
		<h2>Get in touch</h2>
		<p>Feel free to ask</p>
		<form class ="f" method = "post">
		<input  type ="text" name = "name" placeholder="Your Name" required><br><br>
		<input type ="email" name = "email" placeholder="Your Email" required><br><br>
		<input type ="number" name = "phone" placeholder="Your Phone" required><br><br>
		<textarea type ="text"  name = "message" placeholder="Your Message" required></textarea><br><br>
		<input type = "submit" value="Send Message" name="btn">
		</form>
	</div>
	
	<div class = "details">
		<h2>CONTACT DETAILS</h2>
		<img id = "phone" src = "contact1.png"\>
		<h3 id="phone1">9856078908 | 9087456230 | 8990756732 </h3>
		<img id = "email" src = "email1.png"\>
		<h3 id ="email1">casatutors@gmail.com</h3>
	</div>
	<!--End of Contact Section-->

</body>
</html>