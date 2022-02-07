package com.opendox.learning.daoImpl;


import java.util.Date;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

import com.opendox.learning.dao.StudentDao;

import com.opendox.learning.dto.StudentRegistrationDTO;
import com.opendox.learning.dto.TutorRegistrationDTO;

public class StudentDaoImpl implements StudentDao {
	
	private EntityManager getEntityManager()
	{
		EntityManagerFactory entityManagerFactory=Persistence.createEntityManagerFactory("Annotation");
		EntityManager entityManager = entityManagerFactory.createEntityManager();
		entityManager.getTransaction().begin();
		return entityManager;
	}

	@Override
	public void getStudentregistration(StudentRegistrationDTO studentRegistrationDTO) {
		// TODO Auto-generated method stub
		EntityManager entityManager = getEntityManager();
		
		entityManager.persist(studentRegistrationDTO);
		
		entityManager.getTransaction().commit();
		entityManager.close();
		
	}

	@Override
	public void getTutorRegistration(TutorRegistrationDTO tutorRegistrationDTO) {
		// TODO Auto-generated method stub
		EntityManager entityManager = getEntityManager();
		
		entityManager.persist(tutorRegistrationDTO);
		
		entityManager.getTransaction().commit();
		entityManager.close();
		
	}

	@Override
	public StudentRegistrationDTO getStudentInfo(String Email_ID) {
		// TODO Auto-generated method stub
		String sql = "select abc from StudentRegistrationDTO abc where abc.Email_ID=?";
		EntityManager entityManager = getEntityManager();
		Query query = entityManager.createQuery(sql);
		query.setParameter(1, Email_ID);
		StudentRegistrationDTO studentRegistrationDTO = (StudentRegistrationDTO) query.getSingleResult();
		return studentRegistrationDTO;
	}

	@Override
	public TutorRegistrationDTO getTutorInfo(String Email_ID) {
		// TODO Auto-generated method stub
		String sql = "select abc from TutorRegistrationDTO abc where abc.Email_ID=?";
		EntityManager entityManager = getEntityManager();
		Query query = entityManager.createQuery(sql);
		query.setParameter(1, Email_ID);
		TutorRegistrationDTO tutorRegistrationDTO = (TutorRegistrationDTO) query.getSingleResult();
		return tutorRegistrationDTO;
	}

	@Override
	public List<StudentRegistrationDTO> viewStudentProfile() {
		// TODO Auto-generated method stub
		String sql = "select abc from StudentRegistrationDTO abc";
		EntityManager entityManager = getEntityManager();
		Query query = entityManager.createQuery(sql);
		List<StudentRegistrationDTO> studentDTO = (List<StudentRegistrationDTO>) query.getResultList();
		return studentDTO;
	}

	@Override
	public List<TutorRegistrationDTO> searchTutor() {
		// TODO Auto-generated method stub
		String sql = "select abc from TutorRegistrationDTO abc";
		EntityManager entityManager = getEntityManager();
		Query query = entityManager.createQuery(sql);
		List<TutorRegistrationDTO> tutorInfo = (List<TutorRegistrationDTO>) query.getResultList();
		return tutorInfo;
	}

	@Override
	public List<TutorRegistrationDTO> searchLanguage() {
		// TODO Auto-generated method stub
		String sql = "select abc from TutorRegistrationDTO abc";
		EntityManager entityManager = getEntityManager();
		Query query = entityManager.createQuery(sql);
		List<TutorRegistrationDTO> tutorInfo = (List<TutorRegistrationDTO>) query.getResultList();
		return tutorInfo;
	}

	@Override
	public List<TutorRegistrationDTO> searchCourses() {
		// TODO Auto-generated method stub
		String sql = "select abc from TutorRegistrationDTO abc";
		EntityManager entityManager = getEntityManager();
		Query query = entityManager.createQuery(sql);
		List<TutorRegistrationDTO> tutorInfo = (List<TutorRegistrationDTO>) query.getResultList();
		return tutorInfo;
	}

	@Override
	public void changePasswordDetails(StudentRegistrationDTO registerdto) {
		// TODO Auto-generated method stub
		EntityManager entityManager = getEntityManager();
		java.sql.Timestamp ts = new java.sql.Timestamp(new Date().getTime());
		registerdto.setUpdatedTimeStamp(ts);
		entityManager.merge(registerdto);
		entityManager.getTransaction().commit();
		entityManager.close();
	}

	@Override
	public void editProfile(TutorRegistrationDTO registerdto) {
		// TODO Auto-generated method stub
		EntityManager entityManager = getEntityManager();
		java.sql.Timestamp ts = new java.sql.Timestamp(new Date().getTime());
		registerdto.setUpdatedTimeStamp(ts);
		entityManager.merge(registerdto);
		entityManager.getTransaction().commit();
		entityManager.close();
		
	}

	
	
	
	
	}
