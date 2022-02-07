package com.opendox.learning.service;



import java.util.List;

import com.opendox.learning.dto.StudentRegistrationDTO;

import com.opendox.learning.dto.TutorRegistrationDTO;

public interface StudentService {

	void getStudentRegistration(StudentRegistrationDTO studentRegistrationDTO);

	void getTutorRegistration(TutorRegistrationDTO tutorRegistrationDTO);

	StudentRegistrationDTO getStudentInfo(String Email_ID, String Password);

	TutorRegistrationDTO getTutorInfo(String Email_ID, String Password);

	List<StudentRegistrationDTO> viewStudentProfile();

	List<TutorRegistrationDTO> searchTutor();

	List<TutorRegistrationDTO> searchLanguage();

	List<TutorRegistrationDTO> searchCourses();

	void changePasswordDetails(StudentRegistrationDTO registerdto);

	void editProfile(TutorRegistrationDTO registerdto);




	
}
