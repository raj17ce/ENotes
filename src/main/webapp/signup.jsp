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
		
		<form action="./UserServlet" method="post"
			class="signup-form">
			
			
			<%
				String successMsg = (String) session.getAttribute("signupSuccess");
				if(successMsg != null) {
			%>
			<div class="successtext"><%=successMsg%> To login <a href="./login.jsp">Click Here</a>.</div>
			<%
				session.removeAttribute("signupSuccess");
				}
			%>
			
			<%
				String failMsg = (String) session.getAttribute("signupFail");
				if(failMsg != null) {
			%>
			<div class="failtext"><%=failMsg%></div>
			<%
				session.removeAttribute("signupFail");
				}
			%>
			
			<div class="form-name">
				<input type="text" name="fname" placeholder="Full Name"
					required>
			</div>
			<input type="email" name="uemail" placeholder="Email Address"
				required> <input type="password" name="upassword"
				placeholder="Password" required>
			<button type="submit" class="btn">Sign Up</button>
		</form>

	</div>

	<%@include file="./components/footer.jsp"%>
</body>
</html>