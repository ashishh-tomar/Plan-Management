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
 * Servlet implementation class UpdateServlet
 */
@WebServlet("/UpdateServlet")
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String name=request.getParameter("name");
		String plan=request.getParameter("plan");
		String mobile=request.getParameter("mobile");
		String email=request.getParameter("email");
		
		PlanManager p=new PlanManager(name,email,mobile,plan);
		UserDao dao=new UserDao(ConnectionProvider.getConnection());
		boolean flag=dao.updateUser(p);
		if(flag==true)
		{
			RequestDispatcher r=request.getRequestDispatcher("login.jsp");
			r.forward(request, response);
		}
		else
		{
			response.sendRedirect("profile.jsp");
		}
		
		
	}

}
