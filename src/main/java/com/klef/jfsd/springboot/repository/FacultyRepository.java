package com.klef.jfsd.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.Faculty;
import com.klef.jfsd.springboot.model.Student;

import jakarta.transaction.Transactional;

@Repository
public interface FacultyRepository extends JpaRepository<Faculty, Long>{
	@Query("select f from Faculty f where f.id=?1 and f.password=?2")
	 public Faculty checkfacultylogin(String id , String pwd);
	
	@Query("update Faculty set password=?2 where id=?1")
	@Modifying
	@Transactional
	public int updatepasswordf(String id , String pwd );
}
