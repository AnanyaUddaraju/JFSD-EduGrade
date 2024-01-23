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
         .card {
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
    }

        /* Apply Dancing Script font to h3 */
     
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
    
    
        <div class="content2">
            <div class="content" style="margin-top: 30px;">
                <div class="card" style="align-items: center;">
                    <h1>FACULTY'S PROFILE</h1>
                    <div class="card-content">
                        <table class="table">
                            <tr>
                                <td>NAME:</td>
                                <td>${fac.name}</td>
                            </tr>
                            <tr>
                                <td>ID:</td>
                                <td>${fac.id}</td>
                            </tr>
                            <tr>
                                <td>Department:</td>
                                <td>${fac.dept}</td>
                            </tr>
                            <tr>
                                <td>GENDER:</td>
                                <td>${fac.gender}</td>
                            </tr>
                            <tr>
                                <td>COURSE 1:</td>
                                <td>${fac.course}</td>
                            </tr>
                            <tr>
                                <td>CONTACT NO</td>
                                <td>${fac.contactno}</td>
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
