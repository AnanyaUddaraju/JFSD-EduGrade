package com.klef.jfsd.springboot.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="internal_table")
public class InternalMarks
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
	  @Column(nullable = false)
	  private int mid1;
	  @Column(nullable = false)
	  private int mid2;
	  @Column(nullable = false)
	  private int practical;
	  @Column(nullable = false)
	  private int total;
	  
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
	public void setCourse(String course) {
		this.course = course;
	}
	public int getMid1() {
		return mid1;
	}
	public void setMid1(int mid1) {
		this.mid1 = mid1;
	}
	public int getMid2() {
		return mid2;
	}
	public void setMid2(int mid2) {
		this.mid2 = mid2;
	}
	public int getPractical() {
		return practical;
	}
	public void setPractical(int practical) {
		this.practical = practical;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	  
	  
	
	 
}
