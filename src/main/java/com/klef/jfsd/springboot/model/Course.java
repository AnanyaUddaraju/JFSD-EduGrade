package com.klef.jfsd.springboot.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="course_table")
public class Course
{
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private int id;
  
  @Column(unique = true,nullable = false)
  private String coursecode;
  
  @Column(nullable = false)
  private String coursetitle;
  
  @Column(nullable = false)
  private double credits;

public int getId() {
  return id;
}

public void setId(int id) {
  this.id = id;
}

public String getCoursecode() {
  return coursecode;
}

public void setCoursecode(String coursecode) {
  this.coursecode = coursecode;
}

public String getCoursetitle() {
  return coursetitle;
}

public void setCoursetitle(String coursetitle) {
  this.coursetitle = coursetitle;
}

public double getCredits() {
  return credits;
}

public void setCredits(double credits) {
  this.credits = credits;
}

@Override
public String toString() {
  return "Course [id=" + id + ", coursecode=" + coursecode + ", coursetitle=" + coursetitle +  ", credits=" + credits + "]";
}
}