package com.klef.jfsd.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.Course;
import com.klef.jfsd.springboot.model.Faculty;
import com.klef.jfsd.springboot.model.FacultyCourseMapping;

import jakarta.transaction.Transactional;


@Repository
public interface FacultyCourseMappingRepository extends JpaRepository<FacultyCourseMapping, Integer>{
	
	 @Query("SELECT COUNT(fcm) FROM FacultyCourseMapping fcm where fcm.faculty = ?1 and fcm.course = ?2 AND fcm.section = ?3")
	  public long checkfcoursemapping(Faculty faculty,Course course,int section);

	 @Query("select fm.section from FacultyCourseMapping fm where fm.faculty=?1")
	 public String getsection(Faculty f);
	
	 
	 @Query("select fm from FacultyCourseMapping fm where fm.faculty=?1")
	 public FacultyCourseMapping findmapping(Faculty f);
	 
}
