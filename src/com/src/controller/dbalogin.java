package com.src.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.src.model.InsertQuestion;
import com.src.model.LoginModel;
import com.src.services.DbImpl;
import com.src.services.DbInterface;
import com.src.services.RegistrationFactory;


@WebServlet("/dbalogin")
public class dbalogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public dbalogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uname=request.getParameter("uname");
		String pword=request.getParameter("pword");
		LoginModel m=new LoginModel();
		m.setEmail(uname);
		m.setPassword(pword);
		DbInterface f=RegistrationFactory.getInstance();
		int r=f.verifyDba(m);
		if(r==1)
		{
			HttpSession session=request.getSession();
			session.setAttribute("uname", uname);
			session.setAttribute("pword", pword);
			request.getRequestDispatcher("WEB-INF/insertQuestion.jsp").forward(request, response);
		}
		else
		{
			request.setAttribute("fail","Login failed");
			request.getRequestDispatcher("dbalogin.jsp").forward(request, response);
		}
	}

}
