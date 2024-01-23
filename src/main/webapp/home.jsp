
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
          .content {
            /* ... your existing content styles ... */
            margin-top: 0%;
            background-image: url('st2.jpg');
            background-size: cover; /* Adjust as needed */
            background-repeat: no-repeat;
            position: relative;
           
        }
        .navbar {
            margin-bottom: 20px;
            background-color: #1ea39c;
        }
        .navbar-brand img {
            width: 50px;
            height: 50px;
            margin-right: 10px;
        }
        .navbar-brand {
            display: flex;
            align-items: center;
        }
        .navbar-nav li {
            margin-right: 20px;
        }
        .jumbotron {
            background-color:#d6e172c8;
            padding: 2rem;
        }
        .footer {
            text-align: center;
            padding: 1rem;
    background-color:#0d0d0d;
    color:aliceblue;
    position: relative;
    margin-bottom: 0%;

        }
        .footer-contact {
            font-size: 18px;
        }
        
        .login-box {
            background-color:#d6e172c8;
            border-radius: 10px;
            padding: 20px;
            margin-bottom: 20px;
        }
        .anu
    {
        background-color: #40a3ba;
        color:darkblue;
        font-size: medium;
        margin-left: 0%;
    }
    </style>
</head>
<body>
    <%@ include file="homenav.jsp" %>
  <div class="content" style="margin-top: 0%;" >
    <div class="container">
        <div class="jumbotron">
            <h1 class="display-4">Welcome to the Student Marks Management System</h1>
            <p class="lead">Get a sneak peek of your marks</p>
        </div>
        <div class="row">
            <div class="col-md-4">
                <div class="login-box">
                    <h2>Student Login</h2>
                    <p>Access your grades and information as a student.</p>
                    <a href="studentlogin.jsp" class="btn btn-primary">Login</a>
                </div>
            </div>
            <div class="col-md-4">
                <div class="login-box">
                    <h2>Faculty Login</h2>
                    <p>Access your  student information and marks as a faculty member.</p>
                    <a href="facultylogin.jsp" class="btn btn-primary">Login</a>
                </div>
            </div>
            <div class="col-md-4">
                <div class="login-box">
                    <h2>Admin Login</h2>
                    <p>Access administrative features and manage the system.</p>
                    <a href="adminlogin.jsp" class="btn btn-primary">Login</a>
                </div>
            </div>
        </div>
    </div>
</div>

<footer class="footer">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <p class="footer-contact">
                    Contact Email: <a href="mail to:marksadmin@gmail.com">marksadmin@gmail.com</a><br>
                    Contact No: <a href="tel:+9089768998">888-88-88888</a>
                </p>
            </div>
            <div class="col-md-6">
                <p>&copy; 2023 Student Marks Management System. All rights reserved.</p>
            </div>
        </div>
    </div>
</footer>


</body>
</html>