package com.src.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.src.model.InsertQuestion;
import com.src.services.DbInterface;
import com.src.services.RegistrationFactory;

/**
 * Servlet implementation class insertQuestion
 */
@WebServlet("/insertQuestion")
public class insertQuestion extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public insertQuestion() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		InsertQuestion q=new InsertQuestion();
		q.setQuestion(request.getParameter("question"));
		q.setChoice1(request.getParameter("choice1"));
		q.setChoice2(request.getParameter("choice1"));
		q.setChoice3(request.getParameter("choice1"));
		q.setChoice4(request.getParameter("choice1"));
		q.setC_opt(Integer.parseInt(request.getParameter("c_opt")));
		q.setLevel(Integer.parseInt(request.getParameter("level")));
		DbInterface f=RegistrationFactory.getInstance();
		try {
			int r=f.setQueston(q);
			if(r==0)
			{
				request.setAttribute("msg", "Unable to insert Question");
				request.getRequestDispatcher("WEB-INF/insertQuestion.jsp").forward(request, response);
			}
			else
			{
				request.setAttribute("msg", "Successfully Inserted Question");
				request.getRequestDispatcher("WEB-INF/insertQuestion.jsp").forward(request, response);
			}
		} catch (SQLException e) {
			
		}
	}

}
