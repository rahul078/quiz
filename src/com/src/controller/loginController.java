package com.src.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.src.model.LoginModel;
import com.src.model.Questions;
import com.src.model.User;
import com.src.services.*;


@WebServlet("/loginController")
public class loginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public loginController() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException {
		doPost(request,response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException{
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		LoginModel l=new LoginModel();
		l.setEmail(email);
		l.setPassword(password);
		DbInterface f=RegistrationFactory.getInstance();
		User u=f.loginVerify(l);
		if(u!=null)
		{
			
			HttpSession session = request.getSession();
			session.setAttribute("User", u);
			request.getRequestDispatcher("WEB-INF/success.jsp").forward(request, response);
		}
		else
		{
			request.setAttribute("fail", "Invalid username or password");
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
		
	}

}

