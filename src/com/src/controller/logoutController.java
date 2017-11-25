package com.src.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/logoutController")
public class logoutController extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public logoutController() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession(false);
		if(session!=null)
		{
			session.invalidate();
			request.setAttribute("fail", "Thanks for playing.Come again later ");
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}
		else
		{
			request.setAttribute("Login failed","fail");
		}
	}

}
