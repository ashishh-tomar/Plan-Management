package com.plan.manager.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.plan.manager.dao.UserDao;
import com.plan.manager.entities.PlanManager;
import com.plan.manager.helper.ConnectionProvider;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String mobile=request.getParameter("mobile");
		String plan=request.getParameter("plan");
		
		PlanManager p=new PlanManager(name,email,mobile,plan);
		UserDao dao=new UserDao(ConnectionProvider.getConnection());
		boolean flag=dao.setUser(p);
		if(flag==true)
		{
			RequestDispatcher r=request.getRequestDispatcher("login.jsp");
			r.forward(request, response);
		}
		else
		{
			response.sendRedirect("index.jsp");
		}
	
	}
	

}
