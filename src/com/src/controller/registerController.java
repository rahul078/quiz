package com.src.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.regex.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.src.model.User;
import com.src.services.DbInterface;
import com.src.services.RegistrationFactory;

@WebServlet("/registerController")
public class registerController extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public registerController() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email=request.getParameter("email");
		String name=request.getParameter("name");
		String age=request.getParameter("age");
		String pword=request.getParameter("password");
		String cpword=request.getParameter("cpassword");
		String qualification=request.getParameter("qualification");
		
		HashMap<String,String> error=new HashMap<>();
		HashMap<String,String> details=new HashMap<>();
		
		Pattern emailpattern=Pattern.compile(".+@.+.com");
		Matcher emailmatch=emailpattern.matcher(email);
		
		
		if(!emailmatch.matches())
		{
			error.put("email", "Enter a valid E mail");
		}
		else
		{
			details.put("email", email);		
		}
		if(age==null|age.length()==0)
		{
			error.put("age", "Enter age");
		}
		else
		{
			try{
			int agei=Integer.parseInt(age);
			if(agei>10 && agei<100)
			{
				details.put("age", age);
			}
			else
			{
				error.put("age", "Enter age between 10 and 100");
			}
			}
			catch(Exception e)
			{
				error.put("age", "Enter valid numeric age");
			}
		}
		
		if(name==null|name.length()==0)
		{
			error.put("name", "Enter name");
		}
		else
		{
			details.put("name", name);
		}
		if(qualification==null|qualification.length()==0)
		{
			error.put("qualification", "Enter qualification");
		}
		else
		{
			details.put("qualification", qualification);
		}
		if(pword==null|pword.length()<=5)
		{
			error.put("pword", "Enter a valid password");
			
		}
		else if(!pword.equals(cpword))
		{
			error.put("password", "password and confirm password must be same");
		}
		User r=new User();
		if(error.isEmpty())
		{
			r.setEmail(email);
			r.setName(name);
			r.setPassword(pword);
			r.setQualification(qualification);
			r.setAge(Integer.parseInt(age));
			r.setLevel(1);
			try{
			DbInterface f=RegistrationFactory.getInstance();
			f.registerUser(r);
			request.getRequestDispatcher("login.jsp").forward(request,response);
			}
			catch (Exception e) {
				e.printStackTrace();
				request.setAttribute("fail","Registration failed");
				request.getRequestDispatcher("register.jsp").forward(request,response);
			}
		}
		else
		{
			{
				request.setAttribute("error", error);
				request.setAttribute("details",details);
				request.getRequestDispatcher("register.jsp").forward(request,response);
			}
		}
	
	}

}
