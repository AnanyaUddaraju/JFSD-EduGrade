<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>


<style type="text/css">
    /* Reset default margin and padding for html and body elements */
    /* Top Navigation Bar */
    .top-nav {
        display: flex;
        justify-content: space-between;
        align-items: center;
        background-color: #1e2a3a;
        color: #fff;
        padding: 10px 20px;
    }
    
    /* User Icon */
    .user-icon img {
        width: 30px;
        height: 30px;
        border-radius: 50%;
    }
    
    /* Side Dashboard Navigation */
    nav ul {
        list-style: none;
        margin: 0;
        padding: 0;
    }
    
    nav li {
        display: inline;
        margin-right: 15px;
    }
    
    nav a {
        color: #fff;
        text-decoration: none;
        font-size: 16px;
        padding: 5px 10px;
        border-radius: 5px;
    }
    
    nav a:hover {
        background-color: #a6eea0;
    }
    
    /* Active link style */
    nav a.active {
        background-color: #a6eea0;
        font-weight: bold;
    }
    
    /* Main Content and Side Dashboard */
    .container {
    
    background-color: #ffffff;
      display: flex;
        height: 100%;
        margin-left: 0%;
        padding: 0px;
    
    }
    
    aside {
      
        margin-left: 0%;
        background-color: #40a3ba;
        color: #fff;
        width: 260px;
        padding: 15px;
     
    }
    
    main {
        padding: 20px;
        flex: 1;
    }
    
    /* Add partitions between content sections using borders */
    .content > section {
        border-top: 1px solid #5e1b1b;
        padding-top: 20px;
        margin-top: 20px;
    }
    
    /* Responsive Design */
    @media (max-width: 768px) {
        .container {
            flex-direction: column;
        }
        aside {
            width: 100%;
        }
    }
   
    
    </style>
   
</head>
<body>
 
<div id="base">
        <div class="container">
                <aside>
                    <header>
                            <img src="displaystudentimage?id=${sid}" width="150" height="150">
                    </header>
                    
                    <nav>
                        <ul>
                            <main>
                                <div class="content">
                                    <section>
                                        <!-- Content for the first section -->
                                        <li><a href="viewstudentbyid" class="nav-item nav-link active">My Profile</a></li>
                                    </section>
                                      <section>
                                        <!-- Content for the second section -->
                                        <li><a href="updatepasswords" class="nav-item nav-link active">Update Password</a></li>
                                    </section>      
                                    <section>
                                        <!-- Content for the second section -->
                                        <li><a href="studentcourses" class="nav-item nav-link active">My Courses</a></li>
                                    </section>
                                    <section>
                                        <!-- Content for the third section -->
                                        <li><a href="studentresults" class="nav-item nav-link active">My Results</a></li>
                                    </section>
                                   <section>
                                    <li><a href="studentreport=" class="nav-item nav-link active">Download Report</a></li>
                                   </section>
                                </div>
                            </main> 
                        </ul>
                    </nav>
                </aside>
            </div>
        </div>
</body>
</html>