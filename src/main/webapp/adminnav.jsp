<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Marks Management System</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <style>
        /* ... your existing styles ... */
        
        .content {
            
            margin-top: 30px;
            margin-left: 430px;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .card {
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            background-color: #f8f8f8;
            max-width: 400px;
            width: 100%;
        }

        .card h2 {
            text-align: center;
            text-decoration: underline;
            margin-bottom: 20px;
        }

        .card table {
            width: 100%;
        }

        .card input[type="name"],
        .card input[type="text"],
        .card input[type="text"],
        .card select,
        .card input[type="email"] {
            width: 100%;
            padding: 8px;
            margin: 4px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        .card input[type="submit"],
        .card input[type="reset"] {
            width: 50%;
            padding: 10px;
            margin-top: 10px;
            border: none;
            border-radius: 4px;
            background-color: #333;
            color: white;
            cursor: pointer;
        }

        .card input[type="submit"]:hover,
        .card input[type="reset"]:hover {
            background-color: #555;
        }
    .anu
    {
        background-color: #40a3ba;
        color:darkblue;
        font-size: medium;
    }
    
    </style>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-light  anu"> 
        <a class="navbar-brand" href="#">
          <img src="https://img.icons8.com/external-flaticons-flat-flat-icons/64/000000/external-grades-university-flaticons-flat-flat-icons.png"" width="30" height="30" class="d-inline-block align-top" alt="">
       <b style="font-size: x-large;"> EduGrade </b> 
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item">
                    <a class="nav-link" href="adminhome" style=" font-size: large; color: black;">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="addstudent" style=" font-size: large;color: black;">Add Student</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="addfaculty" style=" font-size: large;color: black;">Add Faculty</a>
                </li>
                            <li class="nav-item">
                <a class="nav-link" href="viewallfaculty" style=" font-size: large;color: black;">View Faculty</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="viewallstudents" style=" font-size: large;color: black;">View Students</a>
            </li>
                 <li class="nav-item">
                <a class="nav-link" href="deleteprofile" style=" font-size: large;color: black;">Delete Profile</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="deletefaculty" style=" font-size: large;color: black;">Delete Faculty</a>
            </li>
                <li class="nav-item">
                    <a class="nav-link" href="uploadmarks" style=" font-size: large;color: black;">Upload marks</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#" style=" font-size: large;color: black;">View marks</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="home.jsp" style=" font-size: large;color: black;">Logout</a>
                </li>
            </ul>
        </div>
    </div>
    </nav>