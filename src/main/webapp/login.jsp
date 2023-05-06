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

		<form action="./loginServlet" method="post" class="login-form">

			<%
			String failMsg = (String) session.getAttribute("loginFail");

			if (failMsg != null) {
			%>
			<div class="failtext"><%=failMsg%></div>
			<%
			session.removeAttribute("loginFail");
			}
			%>

			<%
			String loginMsg = (String) session.getAttribute("loginError");

			if (loginMsg != null) {
			%>
			<div class="failtext"><%=loginMsg%></div>
			<%
			session.removeAttribute("loginError");
			}
			%>
			
			<%
			String logoutMsg = (String) session.getAttribute("logoutMsg");

			if (logoutMsg != null) {
			%>
			<div class="successtext"><%=logoutMsg%></div>
			<%
			session.removeAttribute("logoutMsg");
			}
			%>

			<input type="email" name="uemail" placeholder="Email Address"
				required> <input type="password" name="upassword"
				placeholder="Password" required>
			<button type="submit" class="btn">Login</button>
		</form>

	</div>

	<%@include file="./components/footer.jsp"%>
</body>
</html>