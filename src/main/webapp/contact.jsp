<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="shortcut icon" href="./images/favicon.png"
	type="image/x-icon">
<title>ENotes - Contact</title>
<%@include file="./components/cdn.jsp"%>
<link rel="stylesheet" href="./css/contact.css">
</head>
<body>
	<%@include file="./components/navbar.jsp"%>

	<section class="contact">
		<div class="container contact-container grid">

			<aside class="contact-aside">
				<div class="aside-image">
					<img src="./images/contact.svg" alt="Contact Image">
				</div>
				<h2>Contact Us</h2>
				<p>If you want to talk or have any doubt, feel free to contact
					us on below provided ways. Feedback about the product is also
					appreciated. We'll try to reach out to you as soon as possible.
					Thank you.</p>

				<ul class="contact-details">
					<li><i class="uil uil-phone-times"></i>
						<h5>+91 123 4567 789</h5></li>

					<li><i class="uil uil-envelope"></i>
						<h5>raj17ce@gmail.com</h5></li>

					<li><i class="uil uil-location-point"></i>
						<h5>Ahmedabad, India</h5></li>
				</ul>

				<ul class="contact-socials">
					<li><a href="https://www.facebook.com/"><i
							class="uil uil-facebook-f"></i></a></li>

					<li><a href="https://www.instagram.com/"><i
							class="uil uil-instagram"></i></a></li>

					<li><a href="https://twitter.com/"><i
							class="uil uil-twitter"></i></a></li>

					<li><a href="https://www.linkedin.com/"><i
							class="uil uil-linkedin-alt"></i></a></li>
				</ul>
			</aside>

			<form action="https://formspree.io/f/mqkonnkk" method="post"
				class="contact-form">
				<div class="form-name">
					<input type="text" name="firstName" placeholder="First Name"
						required> <input type="text" name="lastName"
						placeholder="Last Name" required>
				</div>
				<input type="email" name="email"
					placeholder="Your Email Address" required>
				<textarea name="message" rows="7" placeholder="Your Message"
					required></textarea>
				<button type="submit" class="btn">Send Message</button>
			</form>
		</div>
	</section>

	<%@include file="./components/footer.jsp"%>
</body>
</html>