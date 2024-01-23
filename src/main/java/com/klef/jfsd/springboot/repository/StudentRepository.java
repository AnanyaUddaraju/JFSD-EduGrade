package com.klef.jfsd.springboot.repository;

import java.sql.ResultSet;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.Student;

import jakarta.transaction.Transactional;

@Repository
public interface StudentRepository extends JpaRepository<Student,Long>
{
		
	@Query("select s from Student s where s.course1=?1 or s.course2=?1 or s.course3=?1")
	 public List<Student> studentc1(String c1);
	
	@Query("select s from Student s where s.id=?1 and s.password=?2")
	 public Student checkstudentlogin(String id , String pwd);

	@Query("update Student set password=?2 where id=?1")
	@Modifying
	@Transactional
	public int updatepasswords(String id , String pwd );
	
	@Query("select s from Student s where s.course1=?1   and s.section1=?2 ")
	public List<Student> viewbycourse1(String course,String section);
	
	@Query("select s from Student s where s.course2=?1   and s.section2=?2 ")
	public List<Student> viewbycourse2(String course,String section);
	
	@Query("select s from Student s where s.course3=?1   and s.section3=?2 ")
	public List<Student> viewbycourse3(String course,String section);

}