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
import com.opendox.learning.dto.TutorRegistrationDTO;
import com.opendox.learning.service.StudentService;
import com.opendox.learning.serviceImpl.StudentServiceImpl;

/**
 * Servlet implementation class TutorEditProfile
 */
@WebServlet("/TutorEditProfile")
public class TutorEditProfile extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TutorEditProfile() {
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
		String oldPassword = request.getParameter("oldPwd");
		String newPassword = request.getParameter("newPwd");
		String confirmPassword = request.getParameter("confirmPwd");
		
		HttpSession httpsession =request.getSession(false);
		String Email_ID = (String) httpsession.getAttribute("mail");
		
		TutorRegistrationDTO registerdto = (TutorRegistrationDTO) httpsession.getAttribute("dto");
		if(newPassword.equals(confirmPassword))
		{
			if(oldPassword.equals(registerdto.getPassword()))
			{
				registerdto.setPassword(newPassword);
				StudentService studentService = new StudentServiceImpl();
				try {
					studentService.editProfile(registerdto);
						RequestDispatcher rd = request.getRequestDispatcher("ChangePassSuccessTutor.jsp");
						rd.include(request, response);
				} catch (Exception e) {
					e.printStackTrace();
					response.sendRedirect("Exception.jsp");
				}
			}else
			{
				RequestDispatcher req =request.getRequestDispatcher("TutorEditProfile.jsp");
				req.include(request,response);
					
			}

			
		}
		else
		{
			RequestDispatcher req =request.getRequestDispatcher("TutorEditProfile.jsp");
			req.include(request,response);
				
		}
		
		

	}

}
