<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        body {
            display: flex; /* Use flexbox for layout */
            flex-direction: column; /* Arrange items in a column */
        }
        #nav {
            /* Add styles for the navigation */
            background: #333;
            color: #fff;
            padding: 10px;
        }
        #content-container {
            display: flex; /* Use flexbox for the content and side navigation */
        }
        #sidenav {
            /* Define styles for the side navigation */
            width: 350px; /* Adjust the width as needed */
            background: #f0f0f0; /* Some background color */
            padding: 0px; /* Padding for the side navigation */
        }
        #content {
            flex: 1; /* Allow the content to take up remaining space */
            padding: 20px; /* Add some padding for better readability */
        }
          table {
            border-collapse: collapse;
            width: 100%;
            border: 2px solid black; /* Add black border to the table */
        }
        
        th, td {
            border: 1px solid black; /* Add black borders to table cells */
            padding: 8px;
            text-align: left;
        }
    
    /* Add partitions between content sections using borders */
    .content > section {
        border-top: 1px solid #ccc;
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
        .card {
            max-width: 500px;
            margin: 30px auto;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            background-color: #f8f8f8;
        }

        /* Apply Dancing Script font to h3 */
        .card h3 {
            text-align: center;
            font-family: 'Dancing Script', cursive;
        }

        .card-content {
            margin-top: 20px;
        }

        .card-content p {
            margin: 5px 0;
        }  
    }
    .content1, .content2{
float: left;

width: 39%;

height:500px ;

box-sizing: border-box;



}
    </style>
</head>
<body>

<div id="nav">
    <%@ include file="fnav.html" %>
</div>

<div id="content-container">
    <div id="sidenav">
        <%@ include file="fsidenav.jsp" %>
    </div>

    <div id="content">
     <table align=center  border=2>  
<tr bgcolor="black" style="color:white"> 
<td>ID</td> 
<td>NAME</td> 
<td>DEPARTMENT</td> 
<td>COURSE </td> 
<td>SECTION </td>  
<td>PHOTO</td> 
<td>ACTION</td>
</tr> 
 
<c:forEach items="${studata}" var="stu"> 
<tr> 
<td><c:out value="${stu.id}" /></td> 
<td><c:out value="${stu.name}" /></td> 
<td><c:out value="${stu.dept}" /></td> 
<td><c:out value="${stu.course1}" /></td> 
<td><c:out value="${stu.section1}" /></td> 
<td><img src='displaystudentimage?id=${stu.id}' width="50%" height="50%"></td>
<td>
<a href='<c:url value="view?id=${stu.id}"></c:url>'>View</a>
</td>
 
</tr> 
</c:forEach> 
 
</table>
    </div>
</div>

</body>
</html>
