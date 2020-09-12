package com.plan.manager.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.plan.manager.dao.UserDao;
import com.plan.manager.entities.PlanManager;
import com.plan.manager.helper.ConnectionProvider;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String email=request.getParameter("email");
		String mobile=request.getParameter("mobile");
		
		
		
		UserDao dao=new UserDao(ConnectionProvider.getConnection());
		
		PlanManager user=dao.getUser(email, mobile);
		if(user!=null)
		{
			HttpSession s=request.getSession();
			s.setAttribute("currentUser",user);
			RequestDispatcher r=request.getRequestDispatcher("profile.jsp");
			r.forward(request, response);
		}
		else
		{
			response.sendRedirect("index.jsp");
		}
	}

}
