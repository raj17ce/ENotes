<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="shortcut icon" href="./images/favicon.png" type="image/x-icon">
<title>ENotes - Save your notes online</title>
<%@include file="./components/cdn.jsp" %>
<link rel="stylesheet" href="./css/index.css">
</head>
<body>
<%@include file="./components/navbar.jsp"%>

<div class="container header-container flex">
	<h1>A simple way, to keep notes</h1>
	<p>Take notes in your browser, synced on all your devices automatically.</p>
	<a href="./signup.jsp" class="btn">Sign Up</a>
</div>

<div class="container hero-container">
	<h1>Why to use ENotes?</h1>
	<div class="hero-section flex">
		<div class="hero-card">
			<h3><i class="uil uil-info-circle"></i>Free to use</h3>
			<p>Our app is free to use</p>
		</div>
		<div class="hero-card">
			<h3><i class="uil uil-mobile-android"></i>Accessibility</h3>
			<p>It can be used on any device.</p>
		</div>
		<div class="hero-card">
			<h3><i class="uil uil-clipboard-notes"></i>Easy to use</h3>
			<p>Our app has a user friendly UI.</p>
		</div>
	</div>
</div>

<%@include file="./components/footer.jsp"%>

</body>
</html>