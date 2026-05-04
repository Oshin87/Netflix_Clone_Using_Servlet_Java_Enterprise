package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.UserDAO;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String email = request.getParameter("email");
		String name = request.getParameter("name");
		String num = request.getParameter("num");
		long phone = Long.parseLong(num);
		String pass = request.getParameter("password");
		UserDAO.register(email,pass, phone, pass, false);
	    response.sendRedirect("login.jsp");
	}

}
