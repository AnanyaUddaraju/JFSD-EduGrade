package com.klef.jfsd.springboot.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Course;
import com.klef.jfsd.springboot.model.ExternalMarks;
import com.klef.jfsd.springboot.model.Faculty;
import com.klef.jfsd.springboot.model.FacultyCourseMapping;
import com.klef.jfsd.springboot.model.InternalMarks;
import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.repository.AdminRepository;
import com.klef.jfsd.springboot.repository.CourseRepository;
import com.klef.jfsd.springboot.repository.ExternalMarksRepository;
import com.klef.jfsd.springboot.repository.FacultyCourseMappingRepository;
import com.klef.jfsd.springboot.repository.FacultyRepository;
import com.klef.jfsd.springboot.repository.InternalMarksRepository;
import com.klef.jfsd.springboot.repository.StudentRepository;

@Service
public class AdminServiceImpl implements AdminService{

	@Autowired
	private AdminRepository adminRepository;
	
	@Autowired
	  private StudentRepository studentRepository;
	
	@Autowired
	  private FacultyRepository facultyRepository;
	@Autowired
	  private ExternalMarksRepository externalMarksRepository;
	@Autowired
	private CourseRepository courseRepository;
	@Autowired
	  private InternalMarksRepository internalMarksRepository;
	@Autowired
	  private FacultyCourseMappingRepository facultyCourseMappingRepository;
	
	@Override
	public Admin checkadminlogin(String uname, String pwd)
	{
		
		return adminRepository.checkadminlogin(uname, pwd);
	}
	@Override
	public String addstudent(Student s) {
	  studentRepository.save(s);
	  return "Student Added Successfully";
	}
	
	@Override
	public String addfaculty(Faculty f) {
	  facultyRepository.save(f);
	  return "Faculty Added Successfully";
	}
	@Override
	public List<Student> viewallstudents() {
		 return studentRepository.findAll();
	}
	@Override
	public List<Faculty> viewallfaculty() {
		 List<Faculty> faclist=facultyRepository.findAll();
		 return faclist;
	}
	@Override
	public String deletestudent(long sid) 
	{
	  Optional<Student> obj = studentRepository.findById(sid);
	    
	    String msg = null;
	    
	    if(obj.isPresent())
	    {
	      Student stu = obj.get();
	      
	      studentRepository.delete(stu);
	      
	      msg = "Student Deleted Successfully";
	    }
	    else
	    {
	      msg = "Student Not Found";
	    }
	    
	    return msg;
	}

	@Override
	public String deletefaculty(long fid) 
	{
	  Optional<Faculty> obj =  facultyRepository.findById(fid);
	    
	    String msg = null;
	    
	    if(obj.isPresent())
	    {
	      Faculty fac = obj.get();
	      
	      facultyRepository.delete(fac);
	      
	      msg = "Faculty Deleted Successfully";
	    }
	    else
	    {
	      msg = "Faculty Not Found";
	    }
	    
	    return msg;
	}
	@Override
	public List<ExternalMarks> studentc1(String c1) {
		return externalMarksRepository.studentc1(c1);
	}
	@Override
	public void addexternalmarkrow(ExternalMarks e) {
		 externalMarksRepository.save(e);
	}
	@Override
	public int addmarksc1(String id, String marks , String course) {
		return externalMarksRepository.addmarksc1(id, marks, course);
	}
	@Override
	public void addinternalmarkrow(InternalMarks i) {
		 internalMarksRepository.save(i);		
	}
	@Override
	public long checkfcoursemapping(Faculty f, Course c, int section) {
		return facultyCourseMappingRepository.checkfcoursemapping(f, c, section);
	}
	@Override
	public String facultycoursemapping(FacultyCourseMapping fm) {
		facultyCourseMappingRepository.save(fm);
		return "Mapping Done";
	}
	@Override
	public Faculty viewfacultybyid(long id) {
		Optional<Faculty> obj =facultyRepository.findById(id);
		Faculty f = obj.get();
		return f;
	}
	@Override
	public Course findcoursebyid(int id) {
		return courseRepository.findById(id).get();
	}
	@Override
	public Student viewstudentbyid(long id) {
		Optional<Student> obj =studentRepository.findById(id);
		Student f = obj.get();
		return f;
	}
	@Override
	public void deleteext(long id) {
		 
		externalMarksRepository.deletestudent(id);
	}
	@Override
	public void deleteint(long id) {
		internalMarksRepository.deletestudent(id);
		
		
	}
	@Override
	public void deletefacultymapping(long id) {
	Faculty f =facultyRepository.findById(id).get();
	 FacultyCourseMapping fm= facultyCourseMappingRepository.findmapping(f);
	facultyCourseMappingRepository.delete(fm);
		
	}
}
