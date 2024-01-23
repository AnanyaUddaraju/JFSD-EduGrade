package com.klef.jfsd.springboot.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Course;
import com.klef.jfsd.springboot.model.ExternalMarks;
import com.klef.jfsd.springboot.model.InternalMarks;
import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.service.StudentService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;


@Controller
@RequestMapping("student")
public class StudentController {

	@Autowired
	private StudentService studentService;
	
	@GetMapping("studentlogin")
	   public ModelAndView adminlogin()
	   {
	     ModelAndView mv = new ModelAndView();
	     mv.setViewName("studentlogin");
	     return mv;
	   }
	@GetMapping("studentcourses")
	   public ModelAndView stucourses(HttpServletRequest req)
	   {
		HttpSession session = req.getSession();
	     ModelAndView mv = new ModelAndView();
	     mv.setViewName("studentcourses");
	     long id =(long) session.getAttribute("sid");
	     Student s = studentService.viewstudentbyid(id);
	     List<Course> c= studentService.displaystudentcourse();
	     mv.addObject("s",s);
	     mv.addObject("c",c);
	     return mv;
	   }
	@GetMapping("studentreport")
	   public ModelAndView stureport(HttpServletRequest request)
	   {
		 HttpSession session = request.getSession();
	     ModelAndView mv = new ModelAndView();
	     mv.setViewName("studentreport");
	     long id=  (long) session.getAttribute("sid");
	  	 List<InternalMarks> i  = studentService.getinternals(id);
	 	 List<ExternalMarks> e = studentService.getexternals(id);
	     mv.addObject("i", i);
	     mv.addObject("e", e);
	     return mv;
	   }
	 @PostMapping("checkstudentlogin")
	   public ModelAndView checkstudentlogin(HttpServletRequest request)
	   {
	     ModelAndView mv = new ModelAndView();
	     
	     String id = request.getParameter("id");
	     String pwd = request.getParameter("pwd");
	     
	     Student emp = studentService.checkstudentlogin(id, pwd);
	       
	       if(emp!=null)
	       {
	    	   HttpSession session = request.getSession();
	    	   session.setAttribute("sid", emp.getId()); // eid is a session variable
	    	   session.setAttribute("sname", emp.getName());
	    	   mv.addObject("sid",session.getAttribute("sid"));
	    	   mv.setViewName("stuhome");
	       }
	       else
	       {
	         mv.setViewName("studentlogin");
	         mv.addObject("message", "Login Failed");
	       }
	       
	       return mv;
	   }
	  @GetMapping("updatepasswords")
	    public ModelAndView updateemp(HttpServletRequest request)
	    {
	      ModelAndView mv = new ModelAndView();
	      
	      HttpSession session = request.getSession();
	      
	      mv.setViewName("updatepasswords");
	      
	      mv.addObject("sid", session.getAttribute("sid"));
	      mv.addObject("sname", session.getAttribute("sname"));
	      
	      long id = (long) session.getAttribute("sid");
	     
	      
	      mv.addObject("s", id);
	      
	      return mv;
	    }
	    
	    @PostMapping("update")
	    public ModelAndView updateaction(HttpServletRequest request)
	    {
	    	String msg = null;
	        
	        String id = request.getParameter("id");
	        String pwd = request.getParameter("pwd");
	    	
	        int n = studentService.updatestudentpasswords(id,pwd);
	      
	        
	        ModelAndView mv = new ModelAndView();
	        mv.setViewName("updatepasswords");
	       
	        
	        if(n>0)
	        {
	          msg = "Password Updated Successfully";
	          mv.addObject("message", msg);
	        }
	        else
	        {
	          msg = "Failed to Update Password";
	          mv.addObject("message", msg);
	        }
	        
	        return mv;
	    }
	    @GetMapping("viewstudentbyid")
		   public ModelAndView viewstudentbyid(HttpServletRequest request)
		   {
	    	   HttpSession session = request.getSession();
	    	   
	   
		     ModelAndView mv = new ModelAndView();
		     mv.setViewName("viewstudentbyid");
		     long id=  (long) session.getAttribute("sid");
		  	Student s = studentService.viewstudentbyid(id);
		     mv.addObject("stu", s);
		     return mv;
		   }
	    @GetMapping("studentresults")
		   public ModelAndView studres(HttpServletRequest request)
		   {
	    	   HttpSession session = request.getSession();
		     ModelAndView mv = new ModelAndView();
		     mv.setViewName("studentresults");
		     long id=  (long) session.getAttribute("sid");
		  	 List<InternalMarks> i  = studentService.getinternals(id);
		 	 List<ExternalMarks> e = studentService.getexternals(id);
		 	List<String> course= new ArrayList<>() ;
			List<Integer> tot= new ArrayList<>() ;
		 	for(InternalMarks ie:i)
		 	{
		 		course.add(ie.getCourse());
		 	}
		 	for(InternalMarks ie:i)
		 	{
		 		for(ExternalMarks ex:e)

		 		{
		 			if(ie.getCourse()==ex.getCourse())
		 				tot.add(ie.getTotal()+ex.getMarks());
		 		}
		 	} 
		 	 List<Course> c=studentService.displaystudentcourse();
		 	
		 	mv.addObject("cor",course);
		     mv.addObject("tot", tot);
		     mv.addObject("i", i);
		     mv.addObject("e", e);
		     mv.addObject("c", c);
		     return mv;
		   }
	    
	    @GetMapping("displaystudentimage")
		  public ResponseEntity<byte[]> displayprodimagedemo(@RequestParam("id") int id) throws IOException, SQLException
		  {
		   Student student= studentService.viewstudentbyid(id);
		    byte [] imageBytes = null;
		    imageBytes = student.getPhoto().getBytes(1,(int) student.getPhoto().length());
		    return ResponseEntity.ok().contentType(MediaType.IMAGE_JPEG).body(imageBytes);
		  }
	   
		
			 
			 
			  
		 
	  
}
