package com.src.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.src.model.Questions;
import com.src.model.User;
import com.src.services.DbInterface;
import com.src.services.RegistrationFactory;

/**
 * Servlet implementation class examController
 */
@WebServlet("/examController")
public class examController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public examController() {
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
		DbInterface f=RegistrationFactory.getInstance();
		User u=(User) request.getSession().getAttribute("User");
		try {
			List q=f.getQuestions(u.getLevel());
			if(q.isEmpty())
			{
				request.setAttribute("msg", "You have reached the maximum level <br> Please wait until administrator loads new Questions");
				request.getRequestDispatcher("WEB-INF/success.jsp").forward(request, response);
			}
			request.setAttribute("q", q);
			request.getRequestDispatcher("WEB-INF/exam.jsp").forward(request, response);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
