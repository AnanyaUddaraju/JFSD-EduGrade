package com.klef.jfsd.springboot.model;

import java.sql.Blob;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="faculty_table")
public class Faculty 
{
  @Id
    @Column(name="faculty_id")
    private long id;
  @Column(name="faculty_name",nullable=false,length = 50)
  private String name;
  @Column(name="faculty_gender",nullable=false,length = 10)
    private String gender;
  @Column(name="faculty_dept",nullable=false,length = 10)
    private String dept;
  @Column(name="faculty_course",nullable=false,length = 10)
    private String course;
  @Column(name="faculty_email",nullable=false,unique = true,length = 30)
    private String email;
    @Column(name="faculty_password",nullable=false,length = 30)
    private String password;
    @Column(name="faculty_contactno",nullable=false,unique = true)
    private String contactno;
    @Column(name="faculty_active",nullable=false)
  private boolean active; // true or false
    @Column(name="faculty_photo",nullable=false)
  private Blob photo;
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getDept() {
		return dept;
	}
	public void setDept(String dept) {
		this.dept = dept;
	}
	public String getCourse() {
		return course;
	}
	public void setCourse(String course) {
		this.course = course;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getContactno() {
		return contactno;
	}
	public void setContactno(String contactno) {
		this.contactno = contactno;
	}
	public boolean isActive() {
		return active;
	}
	public void setActive(boolean active) {
		this.active = active;
	}
	public Blob getPhoto() {
		return photo;
	}
	public void setPhoto(Blob photo) {
		this.photo = photo;
	}
	@Override
	public String toString() {
		return "Faculty [id=" + id + ", name=" + name + ", gender=" + gender + ", dept=" + dept + ", course=" + course
				+ ", email=" + email + ", password=" + password + ", contactno=" + contactno + ", active=" + active
				+ ", photo=" + photo + "]";
	}
    
 
  
  
}