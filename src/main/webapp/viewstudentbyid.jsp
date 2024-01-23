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
          /* Responsive Design */
    @media (max-width: 768px) {
        .container {
            flex-direction: column;
        }
        aside {
            width: 100%;
        }
    }
    .content2{
margin-left: 50 px;

width: 39%;

height:500px ;

box-sizing: border-box;



}
.footer {
    position: absolute;
  bottom: 0;
  width: 100%;
  height: 2.5rem;            /* Footer height */
}
#page-container {
 position: relative;
  min-height: 100vh;
}

#content-wrap {
  padding-bottom: 2.5rem;    /* Footer height */
}  
.card-content {
            border-radius: 10px;
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
            padding: 30px; /* Increased padding */
            width: 400px; /* Increased width */
            background-color: #f7f7f7;
            margin: auto;
        }
        
        .table {
            width: 100%;
            text-align: left;
            border-collapse: collapse;
        }
        
        .table td {
            padding: 8px;
            border-bottom: 1px solid #ddd;
        }
        
        .table tr:last-child td {
            border-bottom: none;
        }
        
        .table td:first-child {
            font-weight: bold;
            color: #333;
            width: 40%;
        }

        .table td:last-child {
            width: 60%;
        }

        /* Beautiful Colors */
        .table tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        
        .table tr:nth-child(odd) {
            background-color: #a6eea0;
            color: white;
        }
    </style>
</head>
<body>

<div id="nav">
    <%@ include file="nav.html" %>
</div>

<div id="content-container">
    <div id="sidenav">
        <%@ include file="sidenav.jsp" %>
    </div>

    <div id="content" style="margin-left: 200px">
    
      <div class="content2" >
            <div class="content" style="margin-top: 30px;">
                <div class="card" style="align-items: center;">
                    <h1>STUDENT'S PROFILE</h1>
                    <div class="card-content">
                        <table class="table">
                            <tr>
                                <td>NAME:</td>
                                <td>${stu.name}</td>
                            </tr>
                            <tr>
                                <td>ID:</td>
                                <td>${stu.id}</td>
                            </tr>
                            <tr>
                                <td>BRANCH:</td>
                                <td>${stu.dept}</td>
                            </tr>
                            <tr>
                                <td>GENDER:</td>
                                <td>${stu.gender}</td>
                            </tr>
                            <tr>
                                <td>COURSE 1:</td>
                                <td>${stu.course1}</td>
                            </tr>
                            <tr>
                                <td>COURSE 2:</td>
                                <td>${stu.course2}</td>
                            </tr>
                            <tr>
                                <td>COURSE 3:</td>
                                <td>${stu.course3}</td>
                            </tr>
                       
                        </table>
                    </div>
                </div>
            </div>
             </div>
    
    
    </div>
</div>

</body>
</html>
