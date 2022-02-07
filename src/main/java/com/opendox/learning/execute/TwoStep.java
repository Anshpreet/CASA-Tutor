package com.opendox.learning.execute;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.opendox.learning.dto.TutorRegistrationDTO;
import com.opendox.learning.service.StudentService;
import com.opendox.learning.serviceImpl.StudentServiceImpl;

/**
 * Servlet implementation class TwoStep
 */
@WebServlet("/TwoStep")
public class TwoStep extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TwoStep() {
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
		PrintWriter out =response.getWriter();
		String First_Name=request.getParameter("First_Name");
		String Last_Name=request.getParameter("Last_Name");
		String Email_ID=request.getParameter("Email_ID");
		String Password=request.getParameter("Password");
		String pack=request.getParameter("pack");
		String Age=request.getParameter("age");
		String Gender=request.getParameter("gender");
		String Qualification=request.getParameter("qualification");
		String Available_Timings=request.getParameter("availableTime");
		String Fees=request.getParameter("fees");
		String Locality=request.getParameter("locality");
		String Place=request.getParameter("place");
		String ClassInfo=request.getParameter("Class");
		String Subject=request.getParameter("Sub");
		String Extra_Courses=request.getParameter("c");
		String Native_Languages=request.getParameter("n");
		
		
		TutorRegistrationDTO tutorRegistrationDTO = new TutorRegistrationDTO();
		tutorRegistrationDTO.setFirst_Name(First_Name);
		tutorRegistrationDTO.setLast_Name(Last_Name);
		tutorRegistrationDTO.setEmail_ID(Email_ID);
		tutorRegistrationDTO.setPassword(Password);
		tutorRegistrationDTO.setPack(pack);
		tutorRegistrationDTO.setAge(Age);
		tutorRegistrationDTO.setGender(Gender);
		tutorRegistrationDTO.setQualification(Qualification);
		tutorRegistrationDTO.setAvailable_Timings(Available_Timings);
		tutorRegistrationDTO.setFees(Fees);
		tutorRegistrationDTO.setLocality(Locality);
		tutorRegistrationDTO.setPlace(Place);
		tutorRegistrationDTO.setClassInfo(ClassInfo);
		tutorRegistrationDTO.setSubject(Subject);
		tutorRegistrationDTO.setExtra_Courses(Extra_Courses);
		tutorRegistrationDTO.setNative_Languages(Native_Languages);
		
		StudentService studentService = new StudentServiceImpl();
		
		studentService.getTutorRegistration(tutorRegistrationDTO);
		response.sendRedirect("TutorHomepage.jsp");
	}

}
