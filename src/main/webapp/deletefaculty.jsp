<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%> 
<%@ taglib uri="jakarta.tags.core" prefix="c"%> 
 
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
            background-image: url('st2.jpg');
            background-size: cover; /* Adjust as needed */
            background-repeat: no-repeat;
            position: relative;
            z-index: 1;
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
            padding: 100px; /* Adjust as needed */
            background-color: rgba(255, 255, 255, 0.8);
            border-radius: 10px;
            position: relative;
            z-index: 1;
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
 <%@ include file="adminnav.jsp" %> 
<br> 
 
<h3 align="center"><u>Delete</u></h3> 
 
<table align=center  border=2>  
<tr bgcolor="black" style="color:white"> 
<td>ID</td>
            <td>NAME</td>
            <td>DEPARTMENT</td>
            <td>EMAIL ID</td>
            <td>CONTACT NO</td>
            <td>ACTION</td>
</tr> 
 
<c:forEach items="${facultydata}"  var="faculty"> 
<tr> 
             <td><c:out value="${faculty.id}" /></td>
                <td><c:out value="${faculty.name}" /></td>
                <td><c:out value="${faculty.dept}" /></td>
                <td><c:out value="${faculty.email}" /></td>
                <td><c:out value="${faculty.contactno}" /></td>
<td>
<a href='<c:url value="deletefaculty/${faculty.id}"></c:url>'>Delete</a>

</td>
 
</tr> 
</c:forEach> 
 
</table> 
 
</body> 
</html>