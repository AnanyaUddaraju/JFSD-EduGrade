package com.klef.jfsd.springboot.controller;

import java.io.IOException;
import java.sql.SQLException;
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
import com.klef.jfsd.springboot.model.Faculty;
import com.klef.jfsd.springboot.model.FacultyCourseMapping;
import com.klef.jfsd.springboot.model.InternalMarks;
import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.service.FacultyService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("faculty")
public class FacultyController {

	@Autowired
	private FacultyService facultyService;
	
	@GetMapping("facultylogin")
	   public ModelAndView adminlogin()
	   {
	     ModelAndView mv = new ModelAndView();
	     mv.setViewName("facultylogin");
	     return mv;
	   }
	
	@GetMapping("faccourses")
	   public ModelAndView faccourses(HttpServletRequest req)
	   {
	     ModelAndView mv = new ModelAndView();
	     HttpSession session = req.getSession();
	   String  course= (String) session.getAttribute("fcourse");
	   long id= (long) session.getAttribute("fid");
	   String section = facultyService.getsection(facultyService.viewfacultybyid(id));
	     mv.setViewName("faccourses");
	Course c = facultyService.getfaccourse(course);
	     mv.addObject("cor",c);
	     mv.addObject("section",section);
	     return mv;
	   }
	 @PostMapping("checkfacultylogin")
	   public ModelAndView checkstudentlogin(HttpServletRequest request)
	   {
	     ModelAndView mv = new ModelAndView();
	     
	     String id = request.getParameter("id");
	     String pwd = request.getParameter("pwd");
	     
	     Faculty emp = facultyService.checkfacultylogin(id, pwd);
	       
	       if(emp!=null)
	       {
	    	   HttpSession session = request.getSession();
	    	   session.setAttribute("fid", emp.getId()); // eid is a session variable
	    	   session.setAttribute("fname", emp.getName());
	    	   session.setAttribute("fcourse", emp.getCourse());
	    	   mv.addObject("fid",session.getAttribute("fid"));
	         mv.setViewName("fachome");
	       }
	       else
	       {
	         mv.setViewName("facultylogin");
	         mv.addObject("message", "Login Failed");
	       }
	       
	       return mv;
	   }
	  @GetMapping("updatepasswordf")
	    public ModelAndView updateemp(HttpServletRequest request)
	    {
	      ModelAndView mv = new ModelAndView();
	      
	      HttpSession session = request.getSession();
	      
	      mv.setViewName("updatepasswordf");
	      
	      mv.addObject("fid", session.getAttribute("fid"));
	      mv.addObject("fname", session.getAttribute("fname"));
	      
	      long id = (long) session.getAttribute("fid");
	     
	      
	      mv.addObject("f", id);
	      
	      return mv;
	    }
	    
	    @PostMapping("updatef")
	    public ModelAndView updateaction(HttpServletRequest request)
	    {
	    	String msg = null;
	        
	        String id = request.getParameter("id");
	        String pwd = request.getParameter("pwd");
	    	
	        int n = facultyService.updatepasswordf(id,pwd);
	      
	        
	        ModelAndView mv = new ModelAndView();
	        mv.setViewName("updatepasswordf");
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
	    
	    @GetMapping("facmarks")
		   public ModelAndView facmarks(HttpServletRequest req)
		   {
	    	 ModelAndView mv = new ModelAndView();
			  HttpSession session = req.getSession();
			  mv.setViewName("facmarks");
			  String cor = (String)session.getAttribute("fcourse");
			 long id=(long) session.getAttribute("fid");
			 Faculty f =facultyService.viewfacultybyid(id);
			  String section=facultyService.getsection(f);
			  String course=facultyService.getcourse(cor);
			  mv.addObject("course",course);
			  List<InternalMarks> internal;
			  List<ExternalMarks> external;
			 if(cor.equals("1") || cor.equals("2"))
			 {
			 internal = facultyService.addinternal1(course,section);
			 external = facultyService.viewexternal1(course,section);
			 }
			  else if(cor.equals("3") ||cor.equals("4")  )
			  {
				  internal = facultyService.addinternal2(course,section);
		    external = facultyService.viewexternal2(course,section);
			  }
			  else
			  {
		 internal = facultyService.addinternal3(course,section);
		    external = facultyService.viewexternal3(course,section);
			  }
			 List<Course> c= facultyService.displaystudentcourse();
			  mv.addObject("e",external);
			  mv.addObject("c",c);
			  mv.addObject("i",internal);
			  return mv;
		   }
	    @GetMapping("facprofile")
		   public ModelAndView viewstudentbyid(HttpServletRequest request)
		   {
	    	   HttpSession session = request.getSession();
	    	   
	   
		     ModelAndView mv = new ModelAndView();
		     mv.setViewName("facprofile");
		     long id=  (long) session.getAttribute("fid");
		  Faculty f = facultyService.viewfacultybyid(id);
		     mv.addObject("fac", f);
		     return mv;
		   }
	    @GetMapping("addinternals")
		  public ModelAndView viewbyc1(HttpServletRequest req)
		  {
	    	  ModelAndView mv = new ModelAndView();
			  HttpSession session = req.getSession();
			  mv.setViewName("addinternals");
			  String cor = (String)session.getAttribute("fcourse");
			 long id=(long) session.getAttribute("fid");
			 Faculty f =facultyService.viewfacultybyid(id);
			  String section=facultyService.getsection(f);
			  String course=facultyService.getcourse(cor);
			  mv.addObject("course",course);
			  List<InternalMarks> internal;
			 if(cor.equals("1") || cor.equals("2"))
			 {
			 internal = facultyService.addinternal1(course,section);
			 }
			  else if(cor.equals("3") ||cor.equals("4")  )
			  {
		    internal = facultyService.addinternal2(course,section);
			  }
			  else
			  {
			internal= facultyService.addinternal3(course,section);
			  }
			  mv.addObject("studata",internal);
			  return mv;
			 
	  }
	    @GetMapping("savemid1marks")
	    public String addmid1(@RequestParam("id") int cid,@RequestParam("mid1marks") int cmarks,HttpServletRequest request)
	    {
	    	 HttpSession session = request.getSession();
	     String cor = (String)session.getAttribute("fcourse");
	    	String id = String.valueOf(cid);
	    	String marks = String.valueOf(cmarks);
	    	String course=facultyService.getcourse(cor);
	    	facultyService.addmid1(id,marks,course);
	        return "redirect:addinternals";
	      
	    }
	    
	    @GetMapping("savemid2marks")
	    public String addmid2(@RequestParam("id") int cid,@RequestParam("mid2marks") int cmarks,HttpServletRequest request)
	    {
	    	  HttpSession session = request.getSession();
	    	 String cor = (String)session.getAttribute("fcourse");
	    	String id = String.valueOf(cid);
	    	String marks = String.valueOf(cmarks);
	    	String course=facultyService.getcourse(cor);
	    	facultyService.addmid2(id,marks,course);
	        return "redirect:addinternals";
	      
	    }
	    
	    @GetMapping("savepracticalmarks")
	    public String addpracticalmarks(@RequestParam("id") int cid,@RequestParam("practicalmarks") int cmarks,HttpServletRequest request)
	    {
	    	  HttpSession session = request.getSession();
	    	 String cor = (String)session.getAttribute("fcourse");
	    	String id = String.valueOf(cid);
	    	String marks = String.valueOf(cmarks);
	    	String course=facultyService.getcourse(cor);
	    	facultyService.addpractical(id,marks,course);
	        return "redirect:addinternals";
	    }
	    @GetMapping("savetotalmarks")
	    public String addtotalmarks(@RequestParam("id") int cid,@RequestParam("total") int cmarks,HttpServletRequest request)
	    {
	    	  HttpSession session = request.getSession();
	    	 String cor = (String)session.getAttribute("fcourse");
	    	String id = String.valueOf(cid);
	    	String marks = String.valueOf(cmarks);
	    	String course=facultyService.getcourse(cor);
	    	facultyService.addtotal(id,marks,course);
	        return "redirect:addinternals";
	    }
	    @GetMapping("facstudentsdata")
		  public ModelAndView viewbycourse(HttpServletRequest req)
		  {
			  ModelAndView mv = new ModelAndView();
			  HttpSession session = req.getSession();
			  mv.setViewName("facstudentsdata");
			  String cor = (String)session.getAttribute("fcourse");
			 long id=(long) session.getAttribute("fid");
			 Faculty f =facultyService.viewfacultybyid(id);
			  String section=facultyService.getsection(f);
			  String course=facultyService.getcourse(cor);
			  List<Student> stulist;
			 if(cor.equals("1") || cor.equals("2"))
			 stulist = facultyService.viewbycourse1(course,section);
			  else if(cor.equals("3") ||cor.equals("4")  )
		    stulist = facultyService.viewbycourse2(course,section);
			  else
			stulist= facultyService.viewbycourse3(course,section);
		
		
			 
			  mv.addObject("studata",stulist);
			  return mv;
	  }
	    @GetMapping("displayfacultyimage")
		  public ResponseEntity<byte[]> displayprodimagedemo(@RequestParam("id") int id) throws IOException, SQLException
		  {
		   Faculty faculty = facultyService.viewfacultybyid(id);
		    byte [] imageBytes = null;
		    imageBytes = faculty.getPhoto().getBytes(1,(int) faculty.getPhoto().length());

		    return ResponseEntity.ok().contentType(MediaType.IMAGE_JPEG).body(imageBytes);
		  }
		  @GetMapping("displaystudentimage")
		  public ResponseEntity<byte[]> displaystuimagedemo(@RequestParam("id") int id) throws IOException, SQLException
		  {
		   Student student= facultyService.viewstudentbyid(id);
		    byte [] imageBytes = null;
		    imageBytes = student.getPhoto().getBytes(1,(int) student.getPhoto().length());
		    return ResponseEntity.ok().contentType(MediaType.IMAGE_JPEG).body(imageBytes);
		  }
	   
	
}
