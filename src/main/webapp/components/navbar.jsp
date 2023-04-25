<nav>
	<div class="container nav-container flex">
		<a href="./index.jsp" class="brand-logo"><i class="uil uil-clipboard-notes"></i>ENotes</a>
		<ul class="flex nav-list">
			<li><a href="./contact.jsp">Contact Us</a></li>
			<li><a href="./help.jsp">Help</a></li>
			<li><a href="./about.jsp">About Us</a></li>
			<p>|</p>
			<li><a href="./login.jsp" class="btn">Log In</a></li>
			<li><a href="./signup.jsp" class="btn">Sign Up</a></li>
		</ul>
		<button id="menu-open-button">
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
</script>