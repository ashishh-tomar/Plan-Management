package com.plan.manager.dao;
import java.sql.*;

import com.plan.manager.entities.PlanManager;
public class UserDao {
	
	private static final String Resultset = null;
	private Connection con;
	
	public UserDao(Connection con)
	{
		this.con=con;
	}

	public boolean setUser(PlanManager p)
	{
		boolean flag=false;
		try
		{
			String sql="insert into planManager values(?,?,?,?)";
			PreparedStatement pst=con.prepareStatement(sql);
			pst.setString(1,p.getName());
			pst.setString(2,p.getEmail());
			pst.setString(3,p.getMobile());
			pst.setString(4,p.getPlan());
			
			pst.executeUpdate();
			flag=true;
		}
		catch(Exception e)
		{
			
		}
		return flag;
		
	}





public PlanManager getUser(String email,String mobile)
{
	PlanManager user=null;
	try
	{
		String sql="select * from planManager where email=? and mobile=?";
		PreparedStatement pst=con.prepareStatement(sql);
		pst.setString(1,email);
		pst.setString(2,mobile);
		ResultSet rs=pst.executeQuery();
		while(rs.next())
		{
			user=new PlanManager();
			user.setEmail(rs.getString(2));
			user.setMobile(rs.getString(3));
			user.setPlan(rs.getString(4));
			user.setName(rs.getString(1));
		}
		
		return user;
		
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	return user;
}

public boolean updateUser(PlanManager p)
{
	boolean flag=false;
	String sql="update planManager set name=?,mobile=?,plan=? where email=?";
	try {
		PreparedStatement pst=con.prepareStatement(sql);
		pst.setString(1,p.getName());
		pst.setString(2,p.getMobile());
		pst.setString(3,p.getPlan());
		pst.setString(4,p.getEmail());
		
		pst.executeUpdate();
		flag=true;
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	return flag;
}
}
