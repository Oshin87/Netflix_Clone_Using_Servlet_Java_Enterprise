<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body{
	background-image: url('https://wallpapers.com/images/hd/netflix-background-gs7hjuwvv2g0e9fj.jpg');
	width: 100%;
	height:100vh;
	background-repeat: no-repeat;
	background-size: cover;
	background-position: center;
}
label {
	color:white;
}
.register{
    width: 320px;
    padding: 40px;
    background-color: rgba(0, 0, 0, 0.85);
    border-radius: 12px;
    box-shadow: 0 0 20px rgba(0,0,0,0.8);
}
.register label{
    color: white;
    font-size: 14px;
}
.register input{
    width: 100%;
    padding: 10px;
    margin-top: 6px;
    border-radius: 5px;
    border: none;
    outline: none;
    font-size: 14px;
}
.register button{
    width: 100%;
    padding: 10px;
    background-color: #e50914;
    color: white;
    border: none;
    border-radius: 5px;
    font-size: 16px;
    cursor: pointer;
    margin-top: 10px;
}
.register button:hover{
    background-color: #f40612;
}
</style>
</head>
<body>
<div style="display: flex;justify-content: center;align-items: center;height: 100vh;">
		<div class="register">
		<h3 style="color: white;font-size: 20px">REGISTER</h3>
			<form action="RegisterServlet" method="post">
				<label>Enter Your Email : </label>
				<input type="email" name="email" placeholder="Enter your email"><br><br>
				<label>Enter Your Name : </label>
				<input type="text" name="name" placeholder="Enter your name"><br><br>
				<label>Enter Your Phone Number : </label>
				<input type="number" name="num" placeholder="Enter your phone.no"><br><br>
				<label>Enter Your Password : </label>
				<input type="password" name="password" placeholder="Enter your password"><br><br>
				<button type="submit">register</button>
			</form>
			<p style="color: white;">Don't have account?  <a href="register.jsp">Register</a></p>
		</div>
	</div>
</body>
</html>