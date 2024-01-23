package com.klef.jfsd.springboot.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Course;
import com.klef.jfsd.springboot.model.ExternalMarks;
import com.klef.jfsd.springboot.model.Faculty;
import com.klef.jfsd.springboot.model.FacultyCourseMapping;
import com.klef.jfsd.springboot.model.InternalMarks;
import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.repository.CourseRepository;
import com.klef.jfsd.springboot.repository.ExternalMarksRepository;
import com.klef.jfsd.springboot.repository.FacultyCourseMappingRepository;
import com.klef.jfsd.springboot.repository.FacultyRepository;
import com.klef.jfsd.springboot.repository.InternalMarksRepository;
import com.klef.jfsd.springboot.repository.StudentRepository;

@Service
public class FacultyServiceImpl implements FacultyService {
	@Autowired
	private FacultyRepository facultyRepository;
	@Autowired
	private InternalMarksRepository internalRepository;
	@Autowired
	private ExternalMarksRepository externalRepository;
	@Autowired
	private StudentRepository studentRepository;
	@Autowired
	private CourseRepository courseRepository;
	@Autowired
	private  FacultyCourseMappingRepository  facultycourseMappingRepository;
	
	@Override
	public Faculty checkfacultylogin(String id,String pwd) {
		
		return facultyRepository.checkfacultylogin(id, pwd);
	}
	@Override
	public int updatepasswordf(String id, String pwd) {
		return facultyRepository.updatepasswordf( id ,  pwd);  
	}
	@Override
	public List<InternalMarks> viewallinternals(String k ) {
		return internalRepository.findinternalsbyid(k);
	}
	@Override
	public Faculty viewfacultybyid(long id) {
		Optional<Faculty> obj =facultyRepository.findById(id);
		Faculty f = obj.get();
		return f;
	}
	@Override
	public int addmid1(String id, String marks , String course) {
		return internalRepository.addmid1(id, marks, course);

	}
	@Override
	public int addmid2(String id, String marks, String course) {
		return internalRepository.addmid2(id, marks, course);
	}
	@Override
	public int addpractical(String id, String marks, String course) {
		return internalRepository.addpractical(id, marks, course);
	}
	@Override
	public int addtotal(String id, String marks, String course) {
		return internalRepository.addtotal(id, marks, course);
	}
	@Override
	public List<Student> viewbycourse1(String course ,String section) {
	
		return studentRepository.viewbycourse1(course,section);
	}
	@Override
	public String getcourse(String cor) {
       return courseRepository.getcor(cor);
	}
	@Override
	public String getsection(Faculty f) {
	    return facultycourseMappingRepository.getsection(f);
	}

	@Override
	public List<Student> viewbycourse2(String course, String section) {
		return studentRepository.viewbycourse2(course,section);
	}
	@Override
	public List<Student> viewbycourse3(String course, String section) {
		return studentRepository.viewbycourse3(course,section);
	}
	@Override
	public List<InternalMarks> addinternal1(String course, String section) {
		return internalRepository.addinternal1(course,section);
	}
	@Override
	public List<InternalMarks> addinternal2(String course, String section) {
	  return internalRepository.addinternal2(course,section);
	}
	@Override
	public List<InternalMarks> addinternal3(String course, String section) {
		return internalRepository.addinternal3(course,section);
	}
	@Override
	public List<ExternalMarks> viewexternal1(String course, String section) {
		return externalRepository.viewexternal1(course,section);
	}
	@Override
	public List<ExternalMarks> viewexternal2(String course, String section) {
		return externalRepository.viewexternal2(course,section);
	}
	@Override
	public List<ExternalMarks> viewexternal3(String course, String section) {
		return externalRepository.viewexternal3(course,section);
	}
	@Override
	public Student viewstudentbyid(long id) {
		Optional<Student> obj =studentRepository.findById(id);
		Student s = obj.get();
		return s;
	}
	@Override
	public List<Course> displaystudentcourse() {
		return courseRepository.findAll();
	}
	@Override
	public Course getfaccourse(String course) {
		return courseRepository.findByCourse(course);
	}
}
