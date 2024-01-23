package com.klef.jfsd.springboot.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Course;
import com.klef.jfsd.springboot.model.ExternalMarks;
import com.klef.jfsd.springboot.model.InternalMarks;
import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.repository.CourseRepository;
import com.klef.jfsd.springboot.repository.ExternalMarksRepository;
import com.klef.jfsd.springboot.repository.InternalMarksRepository;
import com.klef.jfsd.springboot.repository.StudentRepository;

@Service
public class StudentServiceImpl implements StudentService {

	@Autowired
	private StudentRepository studentRepository;
	

	@Autowired
	private ExternalMarksRepository externalRepository;

	@Autowired
	private InternalMarksRepository internalRepository;
	

	@Autowired
	private CourseRepository courseRepository;
	
	@Override
	public Student checkstudentlogin(String id, String pwd) {
		
		return studentRepository.checkstudentlogin(id, pwd);
	}
	@Override
	public int updatestudentpasswords(String id , String pwd) {
	
		 return studentRepository.updatepasswords( id ,  pwd);    
	    
	}
	@Override
	public Student viewstudentbyid(long id) {
		Optional<Student> obj =studentRepository.findById(id);
		Student s = obj.get();
		return s;
	}
	@Override
	public List<InternalMarks> getinternals(long id) {
		return internalRepository.getinternals(id);
	}
	@Override
	public List<ExternalMarks> getexternals(long id) {
		return externalRepository.getexternals(id);
	}
	@Override
	public List<Course> displaystudentcourse() {
		// TODO Auto-generated method stub
		return courseRepository.findAll();
	}

}
