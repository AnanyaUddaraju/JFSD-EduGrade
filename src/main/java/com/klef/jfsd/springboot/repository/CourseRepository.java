package com.klef.jfsd.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.Course;

@Repository
public interface CourseRepository extends JpaRepository<Course,Integer> {
	
	@Query("select c.coursetitle from Course c where c.id=?1")
	public String getcor(String cor);
	

}
