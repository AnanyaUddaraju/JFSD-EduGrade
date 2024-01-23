package com.klef.jfsd.springboot.model;

import java.sql.Blob;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="student_table")
public class Student 
{
  @Id
    @Column(name="student_id")
    private long id;
  @Column(name="student_name",nullable=false,length = 50)
  private String name;
  @Column(name="student_gender",nullable=false,length = 10)
    private String gender;
  @Column(name="student_dept",nullable=false,length = 10)
    private String dept;
  @Column(name="student_year",nullable=false,length = 10)
    private long year;
  @Column(name="student_sem",nullable=false,length = 10)
    private String sem;
  @Column(name="student_course1",nullable=false,length = 10)
    private String course1;
  @Column(name="student_section1",nullable=false)
  private int  section1;
  @Column(name="student_course2",nullable=false,length = 10)
    private String course2;
  @Column(name="student_section2",nullable=false)
  private int  section2;
  @Column(name="student_course3",nullable=false,length = 10)
    private String course3;
  @Column(name="student_section3",nullable=false)
  private int  section3;
  @Column(name="student_email",nullable=false,unique = true,length = 30)
    private String email;
    @Column(name="student_password",nullable=false,length = 30)
    private String password;
    @Column(name="student_contactno",nullable=false,unique = true)
    private String contactno;
    @Column(name="student_active",nullable=false)
  private boolean active; // true or false
    @Column(name="student_photo",nullable=false)
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
  public long getYear() {
    return year;
  }
  public void setYear(long year) {
    this.year = year;
  }
  public String getSem() {
    return sem;
  }
  public void setSem(String sem) {
    this.sem = sem;
  }
  public String getCourse1() {
    return course1;
  }
  public void setCourse1(String course1) {
    this.course1 = course1;
  }
  public String getCourse2() {
    return course2;
  }
  public void setCourse2(String course2) {
    this.course2 = course2;
  }
  public String getCourse3() {
    return course3;
  }
  public void setCourse3(String course3) {
    this.course3 = course3;
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
    return "Student [id=" + id + ", name=" + name + ", gender=" + gender + ", dept=" + dept + ", year=" + year
        + ", sem=" + sem + ", course1=" + course1 + ", course2=" + course2 + ", course3=" + course3 + ", email="
        + email + ", password=" + password + ", contactno=" + contactno + ", active=" + active + ", photo="
        + photo + "]";
  }
public int getSection1() {
	return section1;
}
public void setSection1(int section1) {
	this.section1 = section1;
}
public int getSection2() {
	return section2;
}
public void setSection2(int section2) {
	this.section2 = section2;
}
public int getSection3() {
	return section3;
}
public void setSection3(int section3) {
	this.section3 = section3;
}
  
  
}