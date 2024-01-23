<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Marks Management System</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous">
    </script>
    <style>
        .content {
            background-image: url('st2.jpg');
            margin-left:0%;
            width:700px;
            height:500px;
        }

        .jumbotron {
            background-color: rgba(43, 122, 159, 0.8);
            padding: 2rem;
        }

        .footer {
            text-align: center;
            padding: 1rem;
            background-color: #1ea39c;
        }

        .footer-contact {
            font-size: 18px;
        }

        .content {
            padding: 20px; /* Adjust as needed */
            background-color: rgba(255, 255, 255, 0.8);
            border-radius: 10px;
            position: relative;
            z-index: 2; /* Increased z-index to overlap the background */
        }

        .anu {
            background-color: #40a3ba;
            color: darkblue;
            font-size: medium;
            margin-left: 0%;
        }
    </style>
</head>
<body>
<%@ include file="adminnav.jsp" %>
<div class="content">
    <div class="container"> <!-- Added Bootstrap class mt-4 for top margin -->
        <div class="jumbotron">
            <h1 class="display-4">Welcome to the Admin Home Page!!!</h1>
            <p class="lead">This system provides you with the tools to manage and oversee student marks, students' data, courses, and more.</p>
        </div>
    </div>
</div>
<div class="footer" style="margin-bottom: 0%;">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <p class="footer-contact">
                    Contact Email: <a href="mailto:marksadmin@gmail.com">marksadmin@gmail.com</a><br>
                    Contact No: <a href="tel:+9089768998">908-976-8998</a>
                </p>
            </div>
            <div class="col-md-6">
                <p>&copy; 2023 Student Marks Management System. All rights reserved.</p>
            </div>
        </div>
    </div>
</div>
</body>
</html>
