package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.AdminDAO;
import com.Entity.Admin;

@WebServlet("/AdminLoginServlet")
public class AdminLoginServlet extends HttpServlet {


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String email = request.getParameter("email");
		String pass = request.getParameter("pass");
		
		Admin a = new Admin(email, pass);
		if(AdminDAO.login(a)) {
			response.sendRedirect("adminHome.jsp");
		}else {
			PrintWriter out = response.getWriter();
			RequestDispatcher rd = request.getRequestDispatcher("adminIndex.jsp");
			out.println("<script>alert('Invalid Email or Password');</script>");
			rd.include(request, response);
		}
	}

}
