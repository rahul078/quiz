package com.src.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.src.model.Questions;
import com.src.model.User;
import com.src.services.DbInterface;
import com.src.services.RegistrationFactory;


@WebServlet("/resultController")
public class resultController extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public resultController() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			List<Questions> q=(List<Questions>) request.getSession().getAttribute("question");
			int correct=0;
			int no=q.size();
			float result=0;
			for(Questions qi:q)
			{
				//System.out.println(qi.getQuestion());
				try{
				if(request.getParameter(qi.getQuestion()).equals(Integer.toString(qi.getC_opt())))
				{
					correct+=1;
				}
				}
				catch(Exception e)
				{
					
				}
			}
			HttpSession session=request.getSession();
			result=correct/no;
			request.setAttribute("message","You have answered "+correct+" questions correctly out of "+no+" questions");
			if(result>0.5)
			{
				DbInterface f=RegistrationFactory.getInstance();
				
				User u= (User)session.getAttribute("User");
				//System.out.println("Got session user= "+u.getName() +" level= "+u.getLevel());
				u.setLevel(u.getLevel()+1);
				session.setAttribute("User", u);
				try {
					f.toNextLevel(u.getLevel(),u.getEmail());
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
				request.setAttribute("msg", "Congrats on going to next level");
				request.getRequestDispatcher("WEB-INF/success.jsp").forward(request, response);
			}
			else
			{
				request.setAttribute("msg", "Sorry, But you have failed this level");
				request.getRequestDispatcher("WEB-INF/success.jsp").forward(request, response);
			}
	}

}
