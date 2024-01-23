package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Course;
import com.klef.jfsd.springboot.model.ExternalMarks;
import com.klef.jfsd.springboot.model.InternalMarks;
import com.klef.jfsd.springboot.model.Student;

public interface StudentService {
	   public Student checkstudentlogin(String id, String pwd);
	   public int updatestudentpasswords(String id,String  pwd);
	   public Student viewstudentbyid(long id);
	   public List<InternalMarks> getinternals(long id);
	   public List<ExternalMarks> getexternals(long id);
	   public List<Course> displaystudentcourse();
}
