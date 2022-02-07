package com.opendox.learning.serviceImpl;

import java.util.List;

import com.opendox.learning.dao.StudentDao;
import com.opendox.learning.daoImpl.StudentDaoImpl;

import com.opendox.learning.dto.StudentRegistrationDTO;

import com.opendox.learning.dto.TutorRegistrationDTO;
import com.opendox.learning.service.StudentService;

public class StudentServiceImpl implements StudentService {

	@Override
	public void getStudentRegistration(StudentRegistrationDTO studentRegistrationDTO) {
		// TODO Auto-generated method stub
		StudentDao studentDao = new StudentDaoImpl();
		studentDao.getStudentregistration(studentRegistrationDTO);
		
	}

@Override
	public void getTutorRegistration(TutorRegistrationDTO tutorRegistrationDTO) {
		// TODO Auto-generated method stub
		StudentDao studentDao = new StudentDaoImpl();
		studentDao.getTutorRegistration(tutorRegistrationDTO);
		
	}

	@Override
	public StudentRegistrationDTO getStudentInfo(String Email_ID, String Password) {
		// TODO Auto-generated method stub
		StudentDao studentDao = new StudentDaoImpl();
		StudentRegistrationDTO studentRegistrationDTO=studentDao.getStudentInfo(Email_ID);
		if (studentRegistrationDTO != null) {
			if (studentRegistrationDTO.getPassword().equals(Password)) {
				System.out.println("Login Success");
			} else {
				System.out.println("Password and User Id is invalid");
			}
		}
		return studentRegistrationDTO;
	}

	@Override
	public TutorRegistrationDTO getTutorInfo(String Email_ID, String Password) {
		// TODO Auto-generated method stub
		StudentDao studentDao = new StudentDaoImpl();
		TutorRegistrationDTO tutorRegistrationDTO=studentDao.getTutorInfo(Email_ID);
		if (tutorRegistrationDTO != null) {
			if (tutorRegistrationDTO.getPassword().equals(Password)) {
				System.out.println("Login Success");
			} else {
				System.out.println("Password and User Id is invalid");
			}
		}
		return tutorRegistrationDTO;
	}

	@Override
	public List<StudentRegistrationDTO> viewStudentProfile() {
		// TODO Auto-generated method stub
		StudentDao studentDao = new StudentDaoImpl();
		List<StudentRegistrationDTO> studentDTO=studentDao.viewStudentProfile();
		return studentDTO;
	}

	@Override
	public List<TutorRegistrationDTO> searchTutor() {
		// TODO Auto-generated method stub
		StudentDao studentDao = new StudentDaoImpl();
		List<TutorRegistrationDTO> tutorInfo=studentDao.searchTutor();
		return tutorInfo;
	}

	@Override
	public List<TutorRegistrationDTO> searchLanguage() {
		// TODO Auto-generated method stub
		StudentDao studentDao = new StudentDaoImpl();
		List<TutorRegistrationDTO> tutorInfo=studentDao.searchLanguage();
		return tutorInfo;
	}

	@Override
	public List<TutorRegistrationDTO> searchCourses() {
		// TODO Auto-generated method stub
		StudentDao studentDao = new StudentDaoImpl();
		List<TutorRegistrationDTO> tutorInfo=studentDao.searchCourses();
		return tutorInfo;
	}

	@Override
	public void changePasswordDetails(StudentRegistrationDTO registerdto) {
		// TODO Auto-generated method stub
		if(registerdto!=null){
			StudentDao studentDao = new StudentDaoImpl();
			studentDao.changePasswordDetails(registerdto);
		}
		
		
	}

	@Override
	public void editProfile(TutorRegistrationDTO registerdto) {
		// TODO Auto-generated method stub
		if(registerdto!=null){
			StudentDao studentDao = new StudentDaoImpl();
			studentDao.editProfile(registerdto);
		}
		
		
	}

	

	
	}
