<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body{
	background-image:url('https://wallpapers.com/images/hd/netflix-background-gs7hjuwvv2g0e9fj.jpg');
	min-height:100vh;
	margin:0;
	font-family: Arial, Helvetica, sans-serif;
	background-repeat:no-repeat;
	background-size:cover;
	background-position:center;
	display:flex;
	flex-direction:column;
}

.nav{
	width:100%;
	height:100px;
	display:flex;
	justify-content:space-between;
	align-items:center;
	
}

.nav img{
	width:200px;
	height:90px;
}


.btn{
	background-color:red;
	color:white;
	text-decoration:none;
	padding:7px 16px;
	border-radius:4px;
	font-weight:bold;
	transition:0.3s;
}

.btn:hover{
	background-color:#e50914;
	transform:scale(1.05);
}


select{
	background:transparent;
	color:white;
	border:1px solid white;
	padding:6px 12px;
	border-radius:4px;
}

option{
	background:#222;
}

main{
	flex:1;
	display:flex;
	justify-content:center;
	align-items:center;
	padding-bottom: 150px;
}

.main{
	width:320px;
	padding:40px;
	background:rgba(0,0,0,0.65);
	border-radius:12px;
	box-shadow:0 0 20px rgba(0,0,0,1);
	margin-top:100px;
	text-align:center;
}

h2{
	font-size:40px;
	margin:5px 0;
	color:white;
}

p{
	color:white;
}

.footer{
	padding:40px 0;
	background-color:rgba(0,0,0,0.85);
	color:#999;
	font-size:14px;
}

.footer-container{
	max-width:1200px;
	margin:auto;
	padding:0 20px;
}


.footer-links{
	display:grid;
	grid-template-columns:repeat(4,1fr);
	margin:20px 0;
	gap:10px;
}

.footer-links a{
	color:#999;
	text-decoration:none;
	font-size:14px;
}

.footer-links a:hover{
	text-decoration:underline;
}

.footer-lang{
	margin-top:20px;
	background:transparent;
	color:white;
	border:1px solid #999;
	padding:6px 12px;
}

.copyright{
	margin-top:20px;
}

@media(max-width:768px){

	.footer-links{
		grid-template-columns:repeat(2,1fr);
	}

	.nav{
		padding:0 20px;
	}

	.main{
		width:90%;
	}
}
</style>
</head>
<body>
<header>
	<div class="nav">
	
		<div>
			<img src="https://upload.wikimedia.org/wikipedia/commons/7/7a/Logonetflix.png">
		</div>

		<div style="width:200px; display:flex; justify-content:space-between;padding-right: 10px;">
		
			<select>
				<option>English</option>
				<option>Hindi</option>
				<option>Japanese</option>
				<option>Spanish</option>
			</select>

			<a class="btn" href="login.jsp">Login</a>

		</div>
	</div>
</header>
<main>
	<div class="main">
		<h2>Unlimited movies,</h2>
		<h2>shows, and more</h2>

		<p>Starts at ₹149. Cancel at any time.</p>
		<p>Ready to watch?</p>

		<div>
			<a class="btn" href="register.jsp">Get Started</a>
		</div>
	</div>
</main>
<footer class="footer">
	<div class="footer-container">
		<p>Questions? Call 8455451245</p>

		<div class="footer-links">
			<a href="#">FAQ</a>
			<a href="#">Help Centre</a>
			<a href="adminIndex.jsp">Admin</a>
			<a href="#">Account</a>
			<a href="#">Investor Relations</a>
			<a href="#">Terms of Use</a>
			<a href="#">Privacy</a>
			<a href="#">Contact Us</a>
		</div>

		<select class="footer-lang">
			<option>English</option>
			<option>Hindi</option>
			<option>Japanese</option>
			<option>Spanish</option>
		</select>

		<p class="copyright">Netflix India</p>
	</div>
</footer>
</body>
</html>