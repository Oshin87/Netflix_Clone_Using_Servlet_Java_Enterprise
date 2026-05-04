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
.newMovie{
    width: 320px;
    padding: 40px;
    background-color: rgba(0, 0, 0, 0.85);
    border-radius: 12px;
    box-shadow: 0 0 20px rgba(0,0,0,0.8);
    margin: 150px 0px 50px 550px;
}
.newMovie label{
    color: white;
    font-size: 14px;
}
.newMovie input{
    width: 100%;
    padding: 10px;
    margin-top: 6px;
    border-radius: 5px;
    border: none;
    outline: none;
    font-size: 14px;
}
.newMovie button{
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
.newMovie button:hover{
    background-color: #f40612;
}
</style>
</head>
<body>
<div class="newMovie">
<form action="AdminMovieServlet" method="post">
<label>Title Of Movie : </label>
<input type="text" name="title" placeholder="Enter Title Of Movie"><br><br>
<label>Gerne Of Movie : </label>
<input type="text" name="gerne" placeholder="Enter Gerne Of Movie"><br><br>
<label>Image Path Of Movie : </label>
<input type="text" name="img" placeholder="Enter Path Of Image"><br><br>
<button type="submit">Add Movie</button>
</form>
</div>
</body>
</html>