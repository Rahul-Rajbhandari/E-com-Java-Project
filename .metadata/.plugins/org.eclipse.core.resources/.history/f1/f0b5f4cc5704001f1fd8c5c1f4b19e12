package com.company.servlet;

import jakarta.servlet.ServletException;
import com.company.dao.UserDao;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import com.company.dao.UserDaoImpl;

public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static UserDao userDao = new UserDaoImpl();
    
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		if(userDao.isValidUser(email,password)) {
			HttpSession session = request.getSession();
			session.setAttribute("username", email);
			response.sendRedirect("welcome.jsp");
		} else {
			response.sendRedirect("login.jsp?error=1");
			System.out.println("Error");
		}
	}

}
