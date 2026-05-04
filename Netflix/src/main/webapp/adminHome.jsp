<%@page import="com.DAO.MovieDAO"%>
<%@page import="com.Entity.Movie"%>
<%@page import="java.util.List"%>
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
	color: white;
	display: flex;
	justify-content: space-between;
	align-items: center;
	padding-left: 10px;
	padding-right: 10px;
}
.nav a{
	background-color:red;
	color:white;
	text-decoration:none;
	padding:7px 16px;
	border-radius:4px;
	font-weight:bold;
	transition:0.3s;
}

.movie-container{
    display:flex;
    flex-wrap:wrap;
    justify-content:center;
    gap:20px;
    padding:30px;
}

.movie-card{
    width:200px;
    background:black;
    border-radius:10px;
    overflow:hidden;
    box-shadow:0px 0px 10px rgba(255,0,0,0.6);
    transition:0.3s;
}

.movie-card:hover{
    transform:scale(1.08);
}

.movie-img{
    width:100%;
    height:250px;
    object-fit:cover;
}

.movie-info{
    padding:10px;
    color:white;
    text-align:center;
}

.movie-info h3{
    margin:5px 0;
}

.movie-info p{
    color:lightgray;
}
</style>
</head>
<body>
<div class="nav">
	<h2>Welcome Admin</h2>
	<a href="adminAdd.jsp">Add Movie</a>
</div>
<%
List<Movie> movies = MovieDAO.getMovies();
%>
<div class="movie-container">
<% for(Movie m : movies){ %>
<div class="movie-card">
<img src="<%= m.getImage() %>" class="movie-img">
<div class="movie-info">
<h3><%= m.getTitle() %></h3>
<p>Genre : <%= m.getGenre() %></p>
</div>
</div>
<% } %>
</div>
</body>
</html>