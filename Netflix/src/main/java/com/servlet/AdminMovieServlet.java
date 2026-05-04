package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.MovieDAO;
import com.Entity.Movie;

@WebServlet("/AdminMovieServlet")
public class AdminMovieServlet extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String title = request.getParameter("title");
		String gerne = request.getParameter("gerne");
		String img = request.getParameter("img");
		
		Movie m = new Movie(title, gerne, img);
		if(MovieDAO.insert(m)) {
			response.sendRedirect("adminSucess.jsp");
		}else {
			PrintWriter out = response.getWriter();
			RequestDispatcher rd = request.getRequestDispatcher("adminHome.jsp");
			out.println("<script>alert('Movie Not Added');</script>");
			rd.include(request, response);
		}
	}

}
