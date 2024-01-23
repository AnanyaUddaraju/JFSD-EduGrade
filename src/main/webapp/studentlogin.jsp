
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>JFSD Project</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

    <style>
        .anu
    {
        background-color: #40a3ba;
        color:darkblue;
        font-size: medium;
        margin-left: 0%;
    }
        /* Add custom navbar styles here */
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: white; /* Set background color to black */
        }

        .card-container {
            display: flex;
            justify-content: space-around;
            margin: 30px auto;
            max-width: 800px;
        }

        .card {
            width: 45%;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            background-color: #f8f8f8;
            height: 350px; /* Adjusted height for better appearance */
        }

        .card img {
            width: 100%;
            height: 100%; /* Make the image fill the entire card */
            object-fit: cover; /* Maintain aspect ratio */
            border-radius: 10px 10px 0 0; /* Rounded top corners */
        }

        .card h2 {
            text-align: center;
            text-decoration: underline;
            margin-bottom: 20px;
        }

        .card table {
            width: 100%;
        }

        .card input[type="text"],
        .card input[type="number"],
        .card input[type="password"],
        .card select {
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

        .registration-container {
            display: flex;
            align-items: center;
        }

        .registration-container img {
            margin-right: 20px;
        }

        .form-container {
            flex: 1;
        }


.tagline {
            text-align: center;
            font-size: 40px;
            margin-bottom: 20px;
            color: white; /* Change the color to white */
            font-family: 'Brush Script MT', cursive, 'Arial', sans-serif;
        }
    </style>
</head>
<body>
    <header>
      
    </header>
   
    <nav class="navbar navbar-expand-lg navbar-light  anu">
        <a class="navbar-brand" href="#">
          <img src="https://img.icons8.com/external-flaticons-flat-flat-icons/64/000000/external-grades-university-flaticons-flat-flat-icons.png"" width="30" height="30" class="d-inline-block align-top" alt="">
       <b style="font-size: x-large;"> EduGrade </b> 
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="Home.html" style=" font-size: x-large; color: black;">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="about.html" style=" font-size: x-large;color: black;">About Us</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="studentlogin.html" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="font-size: x-large; color: black;">
                        Login
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="studentlogin.html" style="color: black;">Student Login</a>

<a class="dropdown-item" href="facultylogin.html" style="color: black;">Faculty Login</a>
<a class="dropdown-item" href="adminlogin.html" style="color: black;">Admin Login</a>
                    </div>
                </li>
            </ul>
        </div>
    </div>
</nav>

    <p>${message}</p><br><br>
    <div  class="card-container">
        <!-- Photo Card -->
        <div class="card">
            <img src="st2.jpg" alt="pic">
        </div>

        <!-- Login Card -->
        <div class="card">
            <h2>Student Login</h2>
            <form method="post" action="checkstudentlogin">
                <table>
                    <tr>
                        <td><b>ID</b></td>
                        <td>
                            <input type="ID" name="id" >
                        </td>
                    </tr>
                    <tr>
                        <td><b>Password</b></td>
                        <td>
                            <input type="password" name="pwd" >
                        </td>
                    </tr>
                    <tr >
                        <td colspan="2">
                            <input type="submit"  value="Login" >
                            
                        </td>
                    </tr>
                    <tr >
                        <td colspan="2">
                             <a href="">Forgot Password?</a>
                        </td>
                    </tr>
                </table>
            </form>
        </div>
    </div></div>
</body>
</html>