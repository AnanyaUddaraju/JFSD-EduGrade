package com.klef.jfsd.springboot.controller;

import java.io.IOException;
import java.sql.Blob;
import java.sql.SQLException;
import java.util.List;

import javax.sql.rowset.serial.SerialException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Course;
import com.klef.jfsd.springboot.model.ExternalMarks;
import com.klef.jfsd.springboot.model.Faculty;
import com.klef.jfsd.springboot.model.FacultyCourseMapping;
import com.klef.jfsd.springboot.model.InternalMarks;
import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.repository.CourseRepository;
import com.klef.jfsd.springboot.service.AdminService;


import jakarta.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("admin")
public class AdminController {
	@Autowired
	private AdminService adminService;
	@Autowired
	private CourseRepository courseRepository;
	
	@GetMapping("/")
	public String main()
	{
		return "home";
	}
	@GetMapping("adminhome")
	public ModelAndView adminhome()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("adminhome");
		return mv;
	}
	   @GetMapping("adminlogin")
	   public ModelAndView adminlogin()
	   {
	     ModelAndView mv = new ModelAndView();
	     mv.setViewName("adminlogin");
	     return mv;
	   }
	  @PostMapping("checkadminlogin")
	  public ModelAndView checkadminlogin(HttpServletRequest request)
	  {
		  ModelAndView mv = new ModelAndView();
		  String uname = request.getParameter("id");
		  String pwd = request.getParameter("pwd");
		  
		 Admin a = adminService.checkadminlogin(uname, pwd);
		 if(a!=null)
		 {
			 mv.setViewName("adminhome");
			 
		 }
		 else
		 {
			 mv.setViewName("adminlogin");
			 mv.addObject("message", "Login Failed");

		 }
		 return mv;
	  }
	  
	  @PostMapping("insertstudent")
	    public ModelAndView insert(HttpServletRequest request , @RequestParam("photo") MultipartFile file) throws IOException, SerialException, SQLException
	    {
	      ModelAndView mv=new ModelAndView();
	      
	      String msg=null;
	      try
	      {
	      String id = request.getParameter("id");
	      long sid = Long.parseLong(id);
	        String name = request.getParameter("name");
	        String gender = request.getParameter("gender");
	        String dept = request.getParameter("dept");
	        String year = request.getParameter("year");
	        long syear = Long.parseLong(year);
	        String sem = request.getParameter("sem");
	        String course1 = request.getParameter("course1");
	        String course2 = request.getParameter("course2");
	        String course3 = request.getParameter("course3");
	        String email = request.getParameter("email");
	        String pwd = request.getParameter("pwd");
	        String contact = request.getParameter("contact");
	        String s1 = request.getParameter("section1");
		      int sec1 = Integer.parseInt(s1);
		   String s2 = request.getParameter("section2");
		    int sec2 = Integer.parseInt(s2);
		    String s3 = request.getParameter("section3");
		    int sec3 = Integer.parseInt(s3);
	
	        
	        ExternalMarks e = new ExternalMarks();
	        e.setId(sid);
	        e.setCourse(course1);
	        e.setName(name);
	        e.setMarks(-1);
	        adminService.addexternalmarkrow(e);
	        
	        ExternalMarks e1 = new ExternalMarks();
	        e1.setId(sid);
	        e1.setCourse(course2);
	        e1.setName(name);
	        e1.setMarks(-1);
	        adminService.addexternalmarkrow(e1);
	        
	        ExternalMarks e2 = new ExternalMarks();
	        e2.setId(sid);
	        e2.setCourse(course3);
	        e2.setName(name);
	        e2.setMarks(-1);
	        adminService.addexternalmarkrow(e2);
	        
	       InternalMarks i = new InternalMarks();
	        i.setId(sid);
	        i.setCourse(course1);
	        i.setName(name);
	        i.setMid1(-1);
	        i.setMid2(-1);
	        i.setPractical(-1);
	        i.setTotal(-1);
	        adminService.addinternalmarkrow(i);
	        
	        InternalMarks i1 = new InternalMarks();
	        i1.setId(sid);
	        i1.setCourse(course2);
	        i1.setName(name);
	        i1.setMid1(-1);
	        i1.setMid2(-1);
	        i1.setTotal(-1);
	        i1.setPractical(-1);
	        adminService.addinternalmarkrow(i1);
	        
	        InternalMarks i2 = new InternalMarks();
	        i2.setId(sid);
	        i2.setCourse(course3);
	        i2.setName(name);
	        i2.setMid1(-1);
	        i2.setMid2(-1);
	        i2.setPractical(-1);
	        i2.setTotal(-1);
	        adminService.addinternalmarkrow(i2);
	        
	        byte[] bytes = file.getBytes();
	        Blob blob = new javax.sql.rowset.serial.SerialBlob(bytes);
	        Student s=new Student();
	        s.setId(sid);
	        s.setName(name);
	        s.setGender(gender);
	        s.setDept(dept);
	        s.setYear(syear);
	        s.setSem(sem);
	        s.setCourse1(course1);
	        s.setCourse2(course2);
	        s.setCourse3(course3);
	        s.setSection1(sec1);
	        s.setSection2(sec2);
	        s.setSection3(sec3);
	        s.setEmail(email);
	        s.setPassword(pwd);
	        s.setContactno(contact);
	       	 s.setPhoto(blob);
	        
	        msg=adminService.addstudent(s);
	        
	        mv.setViewName("addstudent");
	        mv.addObject("message", msg);
	      }
	      catch(Exception e)
	      {
	        msg="Registration Failed";
	        
	        mv.setViewName("addstudent");
	        mv.addObject("message", msg);
	      }
	      return mv;
	    }
	  @PostMapping("insertfaculty")
	    public ModelAndView insertfaculty(HttpServletRequest request, @RequestParam("photo") MultipartFile file) throws IOException, SerialException, SQLException
	    {
	      ModelAndView mv=new ModelAndView();
	      String msg=null;
	      try
	      {
	      String id = request.getParameter("id");
	      long fid = Long.parseLong(id);
	        String name = request.getParameter("name");
	        String gender = request.getParameter("gender");
	        String dept = request.getParameter("dept");
	        String cor = request.getParameter("course");
	        int course = Integer.parseInt(cor);
	        String sec = request.getParameter("section");
	        int section = Integer.parseInt(sec);
	        String email = request.getParameter("email");
	        String pwd = request.getParameter("pwd");
	        String contact = request.getParameter("contact");
	       
	        byte[] bytes = file.getBytes();
	        Blob blob = new javax.sql.rowset.serial.SerialBlob(bytes);
	        
	        
	        Faculty f=new Faculty();
	        f.setId(fid);
	        f.setName(name);
	        f.setGender(gender);
	        f.setDept(dept);
	        f.setCourse(cor);
	        f.setEmail(email);
	        f.setPassword(pwd);
	        f.setContactno(contact);
	        f.setPhoto(blob);
	        
	        msg=adminService.addfaculty(f);
	            
	    long n = adminService.checkfcoursemapping(adminService.viewfacultybyid(fid), adminService.findcoursebyid(course), section);
	  	  
	  	  if(n>0)
	  	  {
	  		  msg = "Section/Course Already taken";
	  	  }
	  	  else
	  	  {
	  		 FacultyCourseMapping fm = new FacultyCourseMapping();
		        fm.setFaculty(adminService.viewfacultybyid(fid));
		        fm.setCourse(adminService.findcoursebyid(course));
		        fm.setSection(section);  
		        
				msg = adminService.facultycoursemapping(fm);
		        
	  	  }
	        mv.setViewName("addfaculty");
	        mv.addObject("message", msg);
	      }
	      catch(Exception e)
	      {
	    	  System.out.println(e);
	        msg="Registration Failed";
	        
	        mv.setViewName("addfaculty");
	        mv.addObject("message", msg);
	      }
	      return mv;
	    }
	  
	  
	  @GetMapping("viewallstudents")
	  public ModelAndView viewallstudents()
	  {
		  ModelAndView mv = new ModelAndView();
		  mv.setViewName("viewallstudents");
		  List<Student> stulist = adminService.viewallstudents();
		  mv.addObject("studata",stulist);
		  return mv;
		 
		  }
	  @GetMapping("addstudent")
	  public ModelAndView addstudents()
	  {
		  ModelAndView mv = new ModelAndView();
		  mv.setViewName("addstudent");
		  return mv;
		  }
	  @GetMapping("addfaculty")
	  public ModelAndView addfaculty()
	  {
		  ModelAndView mv = new ModelAndView();
		  mv.setViewName("addfaculty");
		  return mv;
		  }
	 
	  @GetMapping("viewallfaculty")
	  public ModelAndView viewallfaculty()
	  {
		  ModelAndView mv = new ModelAndView();
		  mv.setViewName("viewallfaculty");
		  List<Faculty> faclist = adminService.viewallfaculty();
		  mv.addObject("facdata",faclist);
		  return mv;
	  }
	   
	  @GetMapping("displaystudentimage")
	  public ResponseEntity<byte[]> displaystuimagedemo(@RequestParam("id") int id) throws IOException, SQLException
	  {
	   Student student =  adminService.viewstudentbyid(id);
	    byte [] imageBytes = null;
	    imageBytes = student.getPhoto().getBytes(1,(int) student.getPhoto().length());

	    return ResponseEntity.ok().contentType(MediaType.IMAGE_JPEG).body(imageBytes);
	  }
	  
	  
	  @GetMapping("displayfacultyimage")
	  public ResponseEntity<byte[]> displayprodimagedemo(@RequestParam("id") int id) throws IOException, SQLException
	  {
	   Faculty faculty = adminService.viewfacultybyid(id);
	    byte [] imageBytes = null;
	    imageBytes = faculty.getPhoto().getBytes(1,(int) faculty.getPhoto().length());

	    return ResponseEntity.ok().contentType(MediaType.IMAGE_JPEG).body(imageBytes);
	  }
	  @GetMapping("uploadmarks")
	    public ModelAndView uploadmarks()
	    {
	      ModelAndView mv = new ModelAndView();
	      mv.setViewName("uploadmarks");
	      
	      
	      return mv;
	    }
	  
	  
	  
	  
	  @GetMapping("deleteprofile")
	    public ModelAndView deleteprofile()
	    {
	      ModelAndView mv = new ModelAndView();
	      mv.setViewName("deleteprofile");
	      
	      List<Student> studentlist =  adminService.viewallstudents();
	      mv.addObject("studentdata", studentlist);
	      
	      return mv;
	    }
	    @GetMapping("deletefaculty")
	    public ModelAndView deletefaculty()
	    {
	      ModelAndView mv = new ModelAndView();
	      mv.setViewName("deletefaculty");
	      
	      List<Faculty> facultylist =  adminService.viewallfaculty();
	      mv.addObject("facultydata", facultylist);
	      
	      return mv;
	    }
	 
	     @GetMapping("delete/{id}")
	    public String deleteaction(@PathVariable("id") long sid)
	    {
	      adminService.deletestudent(sid);
	      adminService.deleteext(sid);
	      adminService.deleteint(sid);
	      return "redirect:/deleteprofile";
	    }
	    
	    @GetMapping("deletefaculty/{id}")
	    public String deleteactionfaculty(@PathVariable("id") long fid)
	    {
	      adminService.deletefacultymapping(fid);
	      adminService.deletefaculty(fid);
	      
	      return "redirect:/deletefaculty";
	    }
	    
	    @GetMapping("viewbyc1")
		  public ModelAndView viewbyc1()
		  {
			  ModelAndView mv = new ModelAndView();
			  mv.setViewName("viewbyc1");
			  List<ExternalMarks> stulistc1 = adminService.studentc1("MFC");
			  mv.addObject("studata",stulistc1);
			  return mv;
	    }
	    
	    @GetMapping("viewbyc2")
		  public ModelAndView viewbyc2()
		  {
			  ModelAndView mv = new ModelAndView();
			  mv.setViewName("viewbyc2");
			  List<ExternalMarks> stulistc1 = adminService.studentc1("MFE");
			  mv.addObject("studata",stulistc1);
			  return mv;
	    }

	    @GetMapping("viewbyc3")
		  public ModelAndView viewbyc3()
		  {
			  ModelAndView mv = new ModelAndView();
			  mv.setViewName("viewbyc3");
			  List<ExternalMarks> stulistc1 = adminService.studentc1("JFSD");
			  mv.addObject("studata",stulistc1);
			  return mv;
	    }
	    @GetMapping("viewbyc4")
		  public ModelAndView viewbyc4()
		  {
			  ModelAndView mv = new ModelAndView();
			  mv.setViewName("viewbyc4");
			  List<ExternalMarks> stulistc1 = adminService.studentc1("PFSD");
			  mv.addObject("studata",stulistc1);
			  return mv;
	    }
	    @GetMapping("viewbyc5")
		  public ModelAndView viewbyc5()
		  {
			  ModelAndView mv = new ModelAndView();
			  mv.setViewName("viewbyc5");
			  List<ExternalMarks> stulistc1 = adminService.studentc1("ENG");
			  mv.addObject("studata",stulistc1);
			  return mv;
	    }
	    
	    
	    @GetMapping("saveext")
	    public String savec1(@RequestParam("id") long cid,@RequestParam("marks") int cmarks, @RequestParam("course") String ccourse)
	    {
	    	String id = String.valueOf(cid);
	    	String marks = String.valueOf(cmarks);
	    	String course = String.valueOf(ccourse);
	    	adminService.addmarksc1(id,marks,course);
	    	if(course.equals("MFC"))
	        return "redirect:viewbyc1";
	    	 else if(course.equals("MFE"))
	        return "redirect:viewbyc2";
	    	 else if(course.equals("JFSD"))
	 	        return "redirect:viewbyc3";
	    	 else if(course.equals("PFSD"))
	 	       return "redirect:viewbyc4";
	    	 else
	    	 return "redirect:viewbyc5"; 
	      
	    }
}
