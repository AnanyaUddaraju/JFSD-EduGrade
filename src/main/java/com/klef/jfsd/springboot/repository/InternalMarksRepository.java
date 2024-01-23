package com.klef.jfsd.springboot.repository;

import java.util.List;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.InternalMarks;

import jakarta.transaction.Transactional;


@Repository
public interface InternalMarksRepository extends JpaRepository<InternalMarks,Integer> {

	
	@Query("select s from InternalMarks s where s.course=?1")
	public List<InternalMarks> findinternalsbyid(String k);
	@Query("update InternalMarks set mid1=?2 where id=?1 and course=?3")
	@Modifying
	@Transactional
	public int addmid1(String id ,String marks,String course);
	@Query("update InternalMarks set mid2=?2 where id=?1 and course=?3")
	@Modifying
	@Transactional
	public int addmid2(String id ,String marks,String course);
	@Query("update InternalMarks set practical=?2 where id=?1 and course=?3")
	@Modifying
	@Transactional
	public int addpractical(String id ,String marks,String course);
	@Query("update InternalMarks set total=?2 where id=?1 and course=?3")
	@Modifying
	@Transactional
	public int addtotal(String id ,String marks,String course);
    @Query("SELECT im FROM InternalMarks im JOIN Student s ON s.id = im.id WHERE s.course1 = ?1 AND s.section1 = ?2")
	public List<InternalMarks> addinternal1(String course, String section);
    @Query("SELECT im FROM InternalMarks im JOIN Student s ON s.id = im.id WHERE s.course2= ?1 AND s.section2 = ?2")
 	public List<InternalMarks> addinternal2(String course, String section);
    @Query("SELECT im FROM InternalMarks im JOIN Student s ON s.id = im.id WHERE s.course3 = ?1 AND s.section3 = ?2")
 	public List<InternalMarks> addinternal3(String course, String section);
	
	@Query("select s from InternalMarks s where s.id=?1")
	public List<InternalMarks> getinternals(long id);
	
	 @Query("delete from InternalMarks where id=?1")
	 @Modifying
		@Transactional
	    public void deletestudent(long id);
    
}
