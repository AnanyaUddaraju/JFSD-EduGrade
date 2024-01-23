<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
            max-width: 1000px;
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

<%@ include file="adminnav.jsp" %>
    <p>${message}</p><br><br>
    <div class="content">
        <div class="card">
            <h2>Insert Student Details</h2>
            <form method="post" action="insertstudent" enctype="multipart/form-data">
                <table>
                    <tr>
                        <td><b>ID</b></td>
                        <td>
                            <input type="text" name="id" required>
                        </td>
                    </tr>
                    <tr>
                        <td><b>Name</b></td>
                        <td>
                            <input type="text" name="name" required>
                        </td>
                    </tr>
                    
                    <tr>
<td><label>Gender</label></td>
<td>
<input type="radio" name="gender" value="MALE" required/>Male
<input type="radio" name="gender" value="FEMALE" required/>Female
</td>
</tr>
                    
<tr>
<td><label>Department</label></td>
<td>
<select name="dept" required>
<option value="">---Select---</option>
<option value="CSE">CSE</option>
<option value="ECE">ECE</option>
<option value="MECHANICAL">MECHANICAL</option>
</select>
</td>
</tr>
                    
                        <td><b>Year</b></td>
                        <td>
                            <input type="number" name="year" required>
                        </td>
                    </tr>
                    <tr>
                    
                       <td><label>Semester</label></td>
<td>
<input type="radio" name="sem" value="ODD" required/>Odd
<input type="radio" name="sem" value="EVEN" required/>Even
</td>
</tr>




                                <tr>
      <td><label>Select Course</label></td>
      <td>
        <select name="course1" required>
        
        <option value="">--Select--</option>
        <option value="MFC">MFC--20MF2101</option>
        <option value="MFE">MFE--21MF2102</option> 
        </select>
      </td>
      <td>
        <select name="section1" required>
        
        <option value="">--Select--</option>
        <option value="1">Section 1</option>
        <option value="2">Section 2</option> 
        <option value="3">Section 3</option> 
        </select>
      </td>
    </tr>
      

                                <tr>
      <td><label>Select Course</label></td>
      <td>
        <select name="course2" required>
        
        <option value="">--Select--</option>
        <option value="JFSD">JFSD--20CS2101</option>
        <option value="PFSD">PFSD--21CS2102</option> 
        </select>
      </td>
      <td>
        <select name="section2" required>
        
        <option value="">--Select--</option>
        <option value="1">Section 1</option>
        <option value="2">Section 2</option> 
        <option value="3">Section 3</option> 
        </select>
      </td>
    </tr>
                       
          

                                <tr>
      <td><label>Select Course</label></td>
      <td>
        <select name="course3" required>
        
        <option value="">--Select--</option>
        <option value="ENG">ENG--20EN2101</option>
        </select>
      </td>
      <td>
        <select name="section3" required>
        
        <option value="">--Select--</option>
        <option value="1">Section 1</option>
        <option value="2">Section 2</option> 
        <option value="3">Section 3</option> 
        </select>
      </td>
    </tr>
                                 
                    <tr>
<td><label>Email ID</label></td>
<td><input type="email" name="email" required/></td>
</tr>

<tr>
<td><label>Password</label></td>
<td><input type="password" name="pwd" required/></td>
</tr>

<tr>
<td><label>Contact No</label></td>
<td><input type="text" name="contact" pattern="[6789][0-9]{9}"  placeholder="Must be 10 digits" required/></td>
</tr>

<tr>
<td><label>Photo</label></td>
<td><input type="file" name="photo" required/></td>
</tr>

                    <tr align="center">
                        <td colspan="2">
                            <input type="submit" value="Insert" required>
                            <input type="reset" value="Clear" required>
                        </td>
                    </tr>
                </table>
            </form>
        </div>
    </div>
</body>
</html>