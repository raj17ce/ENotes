<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="shortcut icon" href="./images/favicon.png"
	type="image/x-icon">
<title>ENotes - Sign Up</title>
<%@include file="./components/cdn.jsp"%>
<link rel="stylesheet" href="./css/signup.css">
</head>
<body>
	<%@include file="./components/navbar.jsp"%>
	
	<div class="container signup-container">
		
		<h2 class="signup-title">Sign Up</h2>
		
		<form action="https://formspree.io/f/xvonkjkd" method="post"
			class="signup-form">
			<div class="form-name">
				<input type="text" name="firstName" placeholder="First Name"
					required> <input type="text" name="lastName"
					placeholder="Last Name" required>
			</div>
			<input type="email" name="email" placeholder="Email Address"
				required> <input type="password" name="password"
				placeholder="Password" required>
			<button type="submit" class="btn">Sign Up</button>
		</form>

	</div>

	<%@include file="./components/footer.jsp"%>
</body>
</html>