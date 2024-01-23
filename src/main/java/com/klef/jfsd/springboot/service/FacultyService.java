package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Course;
import com.klef.jfsd.springboot.model.ExternalMarks;
import com.klef.jfsd.springboot.model.Faculty;
import com.klef.jfsd.springboot.model.FacultyCourseMapping;
import com.klef.jfsd.springboot.model.InternalMarks;
import com.klef.jfsd.springboot.model.Student;

public interface FacultyService {
	 public Faculty checkfacultylogin(String id, String pwd);
	   public int updatepasswordf(String id,String  pwd);
	   public List<InternalMarks> viewallinternals(String k);
	   public Faculty viewfacultybyid(long id);
	   public int addmid1(String id , String marks , String course);
	   public int addmid2(String id , String marks , String course);
	   public int addpractical(String id , String marks , String course);
	   public int addtotal(String id , String marks , String course);
	   public List<Student> viewbycourse1(String course,String section);
	   public List<Student> viewbycourse2(String course,String section);
	   public List<Student> viewbycourse3(String course,String section);
	   public String getcourse(String cor);
	   public String getsection(Faculty f);
	   public List<InternalMarks> addinternal1(String course,String section);
	   public List<InternalMarks> addinternal2(String course,String section);
	   public List<InternalMarks> addinternal3(String course,String section);
	   public List<ExternalMarks> viewexternal1(String course,String section);
	   public List<ExternalMarks> viewexternal2(String course,String section);
	   public List<ExternalMarks> viewexternal3(String course,String section);
	   public Student viewstudentbyid(long id);
	   public List<Course> displaystudentcourse();
	   public Course getfaccourse(String course);
	   
	   
}

