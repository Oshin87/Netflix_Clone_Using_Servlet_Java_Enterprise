<%@page import="java.util.List"%>
<%@page import="com.DAO.MovieDAO"%>
<%@page import="com.Entity.Movie"%>
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
    font-family: Arial;
}

.title{
    color:white;
    text-align:center;
    margin-top:20px;
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
<%
if(session.getAttribute("user")==null){
    response.sendRedirect("login.jsp");
}
List<Movie> movies = MovieDAO.getMovies();
%>
<h2 class="title">Welcome to Netflix</h2>
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