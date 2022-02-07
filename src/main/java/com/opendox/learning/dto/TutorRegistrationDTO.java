package com.opendox.learning.dto;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="TutorRegistration")
public class TutorRegistrationDTO {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer Tutor_ID;
	
	@Column(name="First_Name")
	private String First_Name;
	
	@Column(name="Last_Name")
	private String Last_Name;
	
	@Column(name="Email_ID")
	private String Email_ID;
	
	@Column(name="Password")
	private String Password;
	
	@Column(name="Package")
	private String pack;
	
	@Column(name="Age")
	private String Age;
	
	@Column(name="Gender")
	private String Gender;
	
	@Column(name="Qualification")
	private String Qualification;
	
	@Column(name="Available_Timings")
	private String Available_Timings;
	
	@Column(name="Fees")
	private String Fees;
	
	@Column(name="Classes_you_teach")
	private String ClassInfo;
	
	@Column(name="Subjects_You_Teach")
	private String Subject;
	
	@Column(name="Extra_Courses")
	private String Extra_Courses;
	
	@Column(name="Native_Languages")
	private String Native_Languages;
	
	@Column(name="Locality")
	private String Locality;
	
	@Column(name="Place")
	private String Place;
	
	private Timestamp updatedTimeStamp;

	public Timestamp getUpdatedTimeStamp() {
		return updatedTimeStamp;
	}

	public void setUpdatedTimeStamp(Timestamp updatedTimeStamp) {
		this.updatedTimeStamp = updatedTimeStamp;
	}

	public Integer getTutor_ID() {
		return Tutor_ID;
	}

	public void setTutor_ID(Integer tutor_ID) {
		Tutor_ID = tutor_ID;
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

	public String getPack() {
		return pack;
	}

	public void setPack(String pack) {
		this.pack = pack;
	}

	public String getAge() {
		return Age;
	}

	public void setAge(String age) {
		Age = age;
	}

	public String getGender() {
		return Gender;
	}

	public void setGender(String gender) {
		Gender = gender;
	}

	public String getQualification() {
		return Qualification;
	}

	public void setQualification(String qualification) {
		Qualification = qualification;
	}

	public String getAvailable_Timings() {
		return Available_Timings;
	}

	public void setAvailable_Timings(String available_Timings) {
		Available_Timings = available_Timings;
	}

	public String getFees() {
		return Fees;
	}

	public void setFees(String fees) {
		Fees = fees;
	}

	public String getClassInfo() {
		return ClassInfo;
	}

	public void setClassInfo(String classInfo) {
		ClassInfo = classInfo;
	}

	public String getSubject() {
		return Subject;
	}

	public void setSubject(String subject) {
		Subject = subject;
	}

	public String getExtra_Courses() {
		return Extra_Courses;
	}

	public void setExtra_Courses(String extra_Courses) {
		Extra_Courses = extra_Courses;
	}

	public String getNative_Languages() {
		return Native_Languages;
	}

	public void setNative_Languages(String native_Languages) {
		Native_Languages = native_Languages;
	}

	public String getLocality() {
		return Locality;
	}

	public void setLocality(String locality) {
		Locality = locality;
	}

	public String getPlace() {
		return Place;
	}

	public void setPlace(String place) {
		Place = place;
	}
	
	

}
