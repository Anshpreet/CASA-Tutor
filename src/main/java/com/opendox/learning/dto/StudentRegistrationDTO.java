package com.opendox.learning.dto;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="StudentRegistration")
public class StudentRegistrationDTO {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer Student_ID;
	
	@Column(name="First_Name")
	private String First_Name;
	
	@Column(name="Last_Name")
	private String Last_Name;
	
	@Column(name="Email_ID")
	private String Email_ID;
	
	@Column(name="Password")
	private String Password;
	
	private Timestamp updatedTimeStamp;
	
	
	public Timestamp getUpdatedTimeStamp() {
		return updatedTimeStamp;
	}

	public void setUpdatedTimeStamp(Timestamp updatedTimeStamp) {
		this.updatedTimeStamp = updatedTimeStamp;
	}

	public Integer getStudent_ID() {
		return Student_ID;
	}

	public void setStudent_ID(Integer student_ID) {
		Student_ID = student_ID;
	}

	public String getFirst_Name() {
		return First_Name;
	}

	public void setFirst_Name(String first_Name) {
		First_Name = first_Name;
	}

	public String getLast_Name() {
		return Last_Name;
	}

	public void setLast_Name(String last_Name) {
		Last_Name = last_Name;
	}

	public String getEmail_ID() {
		return Email_ID;
	}

	public void setEmail_ID(String email_ID) {
		Email_ID = email_ID;
	}

	public String getPassword() {
		return Password;
	}

	public void setPassword(String password) {
		Password = password;
	}

	
	
	



}
