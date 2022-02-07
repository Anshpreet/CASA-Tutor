package com.opendox.learning.dao;


import java.util.List;

import com.opendox.learning.dto.StudentRegistrationDTO;

import com.opendox.learning.dto.TutorRegistrationDTO;

public interface StudentDao {

	void getStudentregistration(StudentRegistrationDTO studentRegistrationDTO);

	void getTutorRegistration(TutorRegistrationDTO tutorRegistrationDTO);

	StudentRegistrationDTO getStudentInfo(String Email_ID);

	TutorRegistrationDTO getTutorInfo(String Email_ID);

	List<StudentRegistrationDTO> viewStudentProfile();

	List<TutorRegistrationDTO> searchTutor();

	List<TutorRegistrationDTO> searchLanguage();

	List<TutorRegistrationDTO> searchCourses();

	void changePasswordDetails(StudentRegistrationDTO registerdto);

	void editProfile(TutorRegistrationDTO registerdto);

}
