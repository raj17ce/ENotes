<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="shortcut icon" href="./images/favicon.png"
	type="image/x-icon">
<title>ENotes - Help</title>
<%@include file="./components/cdn.jsp"%>
<link rel="stylesheet" href="./css/help.css">
</head>
<body>
	<%@include file="./components/navbar.jsp"%>

	<div class="container help-container">
		<div class="component">
			<h2>How does syncing work?</h2>
			<p>All notes are synced between all your devices. When you
				create, edit, or delete notes in any of the device using the same
				account, they automatically and wirelessly sync to the other devices
				through internet using our databases and servers.</p>
		</div>
		<div class="component">
			<h2>Can I search notes without a connection to the internet?</h2>
			<p>No, you can't access the notes without internet. the reason
				for that is, the notes are stored on our database servers. when you
				try to access the notes, you indirectly access our database servers
				through internet. so, accessing the notes won't be possible without
				internet</p>
		</div>
		<div class="component">
			<h2>What's the maximum length of a note?</h2>
			<p>You can create very long notes if you absolutely have to, but
				we don't recommend making notes longer than several thousand words.
				Huge notes can take a long time to process both in the web app and
				on your device.</p>
		</div>
		<div class="component">
			<h2>How many notes can I make?</h2>
			<p>You can make as many notes as you want unless you're abusing the system.</p>
		</div>
	</div>

	<%@include file="./components/footer.jsp"%>
</body>
</html>