<%@page import="com.User.UserDetails"%>
<nav>
	<div class="container nav-container flex">
		<a href="./index.jsp" class="brand-logo"><i
			class="uil uil-clipboard-notes"></i>ENotes</a>

		<%
		UserDetails user = (UserDetails) session.getAttribute("userDe");
		%>

		<ul class="flex nav-list">

			<%
			if (user != null) {
			%>
			<li><a href="./home.jsp">Home</a></li>
			<li><a href="./addNotes.jsp">Add Notes</a></li>
			<li><a href="./showNotes.jsp">Show Notes</a></li>
			<li><a href="./contact.jsp">Contact Us</a></li>
			<li><a href="./help.jsp">Help</a></li>
			<li><a href="./about.jsp">About Us</a></li>
			<%
			} else {
			%>
			<li><a href="./contact.jsp">Contact Us</a></li>
			<li><a href="./help.jsp">Help</a></li>
			<li><a href="./about.jsp">About Us</a></li>
			<%
			}
			%>
			
			<p>|</p>

			<%
			if (user != null) {
			%>
			<div class="modal-container" id="modal-container">
				<div class="modal-header flex">
					<h4>User Details</h4>
					<div class="modal-close close-modal" title="Close">
						<i class="uil uil-times" id="close-btn-m"></i>
					</div>
				</div>

				<div class="modal-content">

					<i class="uil uil-user-circle"></i>
					<h4>
						Hello,
						<%=user.getName()%></h4>

					<table class="table">
						<tr>
							<th>User ID</th>
							<td><%=user.getUserID()%></td>
						</tr>
						<tr>
							<th>Full Name</th>
							<td><%=user.getName()%></td>
						</tr>
						<tr>
							<th>Email Id</th>
							<td><%=user.getEmail()%></td>
						</tr>
					</table>
				</div>
				<a href="./logoutServlet" class="btn modal-logout">Log Out</a>
			</div>

			<button class="user-btn" id="user-btn-m">
				<i class="uil uil-user-circle"></i>
				<%=user.getName()%>
			</button>
			<%
			} else {
			%>
			<li><a href="./login.jsp" class="btn">Log In</a></li>
			<li><a href="./signup.jsp" class="btn">Sign Up</a></li>
			<%
			}
			%>
		</ul>

		<button id="menu-open-button" class="menu-btn">
			<i class="uil uil-bars"></i>
		</button>

	</div>
</nav>

<script>
        window.addEventListener('scroll', () => {
            document.querySelector('nav').classList.toggle('window-scroll', window.scrollY > 0);
        })
        
        {
			const navbar = document.querySelector(".nav-list");
			const menuOpenBtn = document.getElementById("menu-open-button");
			const nav = document.querySelector("nav");
			
			menuOpenBtn.addEventListener('click', () => {
				
				navbar.classList.toggle('active');
				const icon = menuOpenBtn.querySelector('i');
				
				if (icon.className == "uil uil-bars") {
					icon.className = "uil uil-multiply";
				}
				else {
					icon.className = "uil uil-bars";
				}
				
				nav.classList.toggle("active");
			})
		}
        
        {
			const modal = document.getElementById("modal-container");
			const userButton = document.getElementById("user-btn-m");
			const closeButton = document.getElementById("close-btn-m");
		
			userButton.addEventListener('click', () => {
				modal.classList.toggle("active");
			})
			
			closeButton.addEventListener('click', () => {
				modal.classList.remove("active");
			})
		}
</script>