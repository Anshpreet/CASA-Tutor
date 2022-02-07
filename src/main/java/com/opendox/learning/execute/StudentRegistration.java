package com.opendox.learning.execute;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.opendox.learning.dto.StudentRegistrationDTO;
import com.opendox.learning.service.StudentService;
import com.opendox.learning.serviceImpl.StudentServiceImpl;

/**
 * Servlet implementation class StudentRegistration
 */
@WebServlet("/StudentRegistration")
public class StudentRegistration extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public StudentRegistration() {
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
		PrintWriter out =response.getWriter();
		String First_Name=request.getParameter("First_Name");
		String Last_Name=request.getParameter("Last_Name");
		String Email_ID=request.getParameter("Email_ID");
		String Password=request.getParameter("Password");
		
		
		StudentRegistrationDTO  studentRegistrationDTO = new StudentRegistrationDTO();
		studentRegistrationDTO.setFirst_Name(First_Name);
		studentRegistrationDTO.setLast_Name(Last_Name);
		studentRegistrationDTO.setEmail_ID(Email_ID);
		studentRegistrationDTO.setPassword(Password);
		
		StudentService studentService = new StudentServiceImpl();
		
		studentService.getStudentRegistration(studentRegistrationDTO);
		response.sendRedirect("Payment.jsp");
	}

}
