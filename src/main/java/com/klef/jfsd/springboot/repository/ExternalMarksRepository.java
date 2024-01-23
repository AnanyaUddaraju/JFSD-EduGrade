package com.klef.jfsd.springboot.repository;

import java.util.List;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.ExternalMarks;
import com.klef.jfsd.springboot.model.InternalMarks;
import com.klef.jfsd.springboot.model.Student;

import jakarta.transaction.Transactional;

@Repository
public interface ExternalMarksRepository extends JpaRepository<ExternalMarks,Integer>{
	@Query("select s from ExternalMarks s where s.course=?1")
	 public List<ExternalMarks> studentc1(String c1);
	@Query("update ExternalMarks set marks=?2 where id=?1 and course=?3")
	@Modifying
	@Transactional
	public int addmarksc1(String id , String marks , String course );

	@Query("select s from ExternalMarks s where s.id=?1")
	public List<ExternalMarks> getexternals(long id);
	
    @Query("SELECT e FROM ExternalMarks e JOIN Student s ON s.id = e.id WHERE s.course3 = ?1 AND s.section3 = ?2")
 	public List<ExternalMarks> viewexternal3(String course, String section);
    
    @Query("SELECT e FROM ExternalMarks e JOIN Student s ON s.id = e.id WHERE s.course2 = ?1 AND s.section2 = ?2")
 	public List<ExternalMarks> viewexternal2(String course, String section);
    
    @Query("SELECT e FROM ExternalMarks e JOIN Student s ON s.id = e.id WHERE s.course1 = ?1 AND s.section1 = ?2")
 	public List<ExternalMarks> viewexternal1(String course, String section);
    
    @Query("delete  from ExternalMarks  where id=?1")
    @Modifying
	@Transactional
    public void deletestudent(long id);
	
}
