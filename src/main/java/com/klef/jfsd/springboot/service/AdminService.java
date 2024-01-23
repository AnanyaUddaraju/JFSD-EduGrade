package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Course;
import com.klef.jfsd.springboot.model.ExternalMarks;
import com.klef.jfsd.springboot.model.Faculty;
import com.klef.jfsd.springboot.model.FacultyCourseMapping;
import com.klef.jfsd.springboot.model.InternalMarks;
import com.klef.jfsd.springboot.model.Student;


public interface AdminService
{
	
    public Admin checkadminlogin(String uname , String pwd);
    public String addstudent(Student s);
    public void addexternalmarkrow(ExternalMarks e);
    public void addinternalmarkrow(InternalMarks i);
    public String addfaculty(Faculty f);
    public List<Student> viewallstudents();
    public List<Faculty> viewallfaculty();
    public String deletestudent(long sid);
    public String deletefaculty(long fid);
    public  List<ExternalMarks>  studentc1(String c1);
	public int addmarksc1(String id , String pwd , String course);
	public long checkfcoursemapping(Faculty f, Course c, int section);
	public String facultycoursemapping(FacultyCourseMapping fm);
    public   Faculty  viewfacultybyid(long id);
    public  Course findcoursebyid(int id);
    public Student viewstudentbyid(long id);
    public void deleteext(long id);
    public void deleteint(long id);
    public void deletefacultymapping(long id);
}
