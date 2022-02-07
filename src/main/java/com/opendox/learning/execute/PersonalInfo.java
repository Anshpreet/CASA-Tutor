package com.opendox.learning.execute;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.opendox.learning.dto.StudentRegistrationDTO;
import com.opendox.learning.dto.TutorRegistrationDTO;
import com.opendox.learning.service.StudentService;
import com.opendox.learning.serviceImpl.StudentServiceImpl;

/**
 * Servlet implementation class PersonalInfo
 */
@WebServlet("/PersonalInfo")
public class PersonalInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PersonalInfo() {
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
		String Age=request.getParameter("age");
		String Gender=request.getParameter("gender");
		String Qualification=request.getParameter("qualification");
		String Available_Timings=request.getParameter("availableTime");
		String Fees=request.getParameter("fees");
		
		String ClassInfo=request.getParameter("Class");
		
		String Subject=request.getParameter("Sub");
		String Extra_Courses=request.getParameter("c");
		String Native_Languages=request.getParameter("n");
		
		TutorRegistrationDTO  personalInfoDTO = new TutorRegistrationDTO();
		personalInfoDTO.setAge(Age);
		personalInfoDTO.setGender(Gender);
		personalInfoDTO.setQualification(Qualification);;
		personalInfoDTO.setAvailable_Timings(Available_Timings);
		personalInfoDTO.setFees(Fees);
		personalInfoDTO.setClassInfo(ClassInfo);
		personalInfoDTO.setSubject(Subject);
		personalInfoDTO.setExtra_Courses(Extra_Courses);
		personalInfoDTO.setNative_Languages(Native_Languages);
		
		StudentService studentService = new StudentServiceImpl();
		
		studentService.getPersonalInfo(personalInfoDTO);
	}

}
