package com.opendox.learning.execute;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.opendox.learning.dto.StudentRegistrationDTO;
import com.opendox.learning.service.StudentService;
import com.opendox.learning.serviceImpl.StudentServiceImpl;

/**
 * Servlet implementation class StudentLoginController
 */
@WebServlet("/StudentLogin")
public class StudentLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StudentLogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		String Email_ID=request.getParameter("Email_ID");
		String Password=request.getParameter("Password");
		
		StudentService studentService = new StudentServiceImpl();
		StudentRegistrationDTO studentRegistrationDTO = null;
		try{
			studentRegistrationDTO=studentService.getStudentInfo(Email_ID,Password);
			
			if(studentRegistrationDTO!=null){
				if(studentRegistrationDTO.getPassword().equals(Password)){
					HttpSession hs=request.getSession();
					hs.setAttribute("mail", Email_ID);
					hs.setAttribute("dto", studentRegistrationDTO);
					
					RequestDispatcher rd=request.getRequestDispatcher("StudentHomepage.jsp");
					request.setAttribute("message", "");

					rd.include(request, response);
				}
		}else
		{
		RequestDispatcher rd = request.getRequestDispatcher("StudentLogin.jsp");
		rd.include(request, response);
			
		}
		}catch(Exception e)
		{
			e.printStackTrace();
			String Message ="Invalid UserName and Password";

			request.setAttribute("message", Message);
			request.getRequestDispatcher("StudentLogin.jsp").forward(request, response);
		}
	}

}
