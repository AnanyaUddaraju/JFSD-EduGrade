package com.klef.jfsd.springboot.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="external_table")
public class ExternalMarks
{
	 @Id
	  @GeneratedValue(strategy = GenerationType.IDENTITY)
	  private int sno;
	  @Column(nullable = false)
	  private String name;
	  @Column(nullable = false)
	  private long id;
	  @Column(nullable = false)
	  private String course;
	  @Column(nullable = true)
	  private int marks;
	  
	public int getSno() {
		return sno;
	}
	public void setSno(int sno) {
		this.sno = sno;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getCourse() {
		return course;
	}
	public void setCourse(String course_name) {
		this.course = course_name;
	}
	@Override
	public String toString() {
		return "ExternalMarks [sno=" + sno + ", name=" + name + ", id=" + id + ", course_name=" + course + "]";
	}
	public int getMarks() {
		return marks;
	}
	public void setMarks(int marks) {
		this.marks = marks;
	}
	  
	 
}
