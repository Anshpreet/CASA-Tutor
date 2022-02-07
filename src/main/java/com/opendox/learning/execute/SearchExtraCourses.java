package com.opendox.learning.execute;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.opendox.learning.dto.TutorRegistrationDTO;
import com.opendox.learning.service.StudentService;
import com.opendox.learning.serviceImpl.StudentServiceImpl;

/**
 * Servlet implementation class SearchExtraCourses
 */
@WebServlet("/SearchExtraCourses")
public class SearchExtraCourses extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchExtraCourses() {
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
		try{
			StudentService studentService = new StudentServiceImpl();
			List<TutorRegistrationDTO> TutorInfo=studentService.searchCourses();
			PrintWriter out= response.getWriter();
			out.println("<!DOCTYPE html>");
			out.println("<html>");
			out.println("<head>");
			out.println("<link rel='stylesheet' type='text/css' href='TutorInfo.css'>");
			out.println("<title>Search Home Tutor</title></head>");
			out.println("<body>");
			out.println("<h1> TUTOR INFORMATION </h1>");
			out.println("<center>");
			out.println("<table border=2>");
			out.println("<tr><th>First Name </th>\n" +"<th> Last Name </th>\n "
			+"<th> Age </th>\n "
			+"<th> Gender </th>\n "
			+"<th> Email ID </th>\n "
			+"<th> Tutor Qualification </th>\n "
			+"<th> Available Timings </th>\n "
			+"<th> Fees </th>\n "
			+"<th> Locality </th>\n "
			+"<th> Extra Courses </th>\n "
			+"<th> Place </th>\n "+"</tr>");
			
			for(TutorRegistrationDTO tu:TutorInfo){
				out.println("<tr>");
				out.println("<td>"+tu.getFirst_Name()+"</td>");
				out.println("<td>"+tu.getLast_Name()+"</td>");
				out.println("<td>"+tu.getAge()+"</td>");
				out.println("<td>"+tu.getGender()+"</td>");
				out.println("<td>"+tu.getEmail_ID()+"</td>");
				out.println("<td>"+tu.getQualification()+"</td>");
				out.println("<td>"+tu.getAvailable_Timings()+"</td>");
				out.println("<td>"+tu.getFees()+"</td>");
				out.println("<td>"+tu.getLocality()+"</td>");
				out.println("<td>"+tu.getExtra_Courses()+"</td>");
				out.println("<td>"+tu.getPlace()+"</td>");
				out.println("</tr>");
			}
		
			out.println("</table>");
			out.println("</center>");
			out.println("</body></html>");
			if(TutorInfo!=null){
				request.setAttribute("list", TutorInfo);
			}
		}catch(Exception e){
			e.printStackTrace();
		}
	
	
	}

}
