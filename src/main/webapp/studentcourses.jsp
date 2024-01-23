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
       
         .card {
            border-radius: 5px;
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
            padding: 30px; /* Increased padding */
            width: 300px; /* Increased width */
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
   
    
    

        /* Apply Dancing Script font to h3 */
        
        .content3
        {
       max-width: 30px;
   
        }
     
    .content1, .content2{
float: left;

width: 10px;

height:500px ;

box-sizing: border-box;



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

    <div id="content">
    
    
        <div class="content2">
            <div class="content3" style="margin-top: 30px; margin-left:0px">
                <div class="card" style="align-items: center;">
                    <h1>STUDENT COURSE 1</h1>
                    <div class="card-content">
                        <table class="table">
                            <tr>
                                <td>COURSE TITLE:</td>
                                <td>${s.course1}</td>
                            </tr>
                                <c:forEach var="cor" items="${c}">
                <c:if test="${s.course1 eq cor.coursetitle}">
                    <tr>
                                <td>COURSE CODE:</td>
                                <td>${cor.coursecode}</td>
                            </tr>
                            <tr>
                                <td>COURSE CREDITS</td>
                                <td>${cor.credits}</td>
                            </tr>
                </c:if>
            </c:forEach>
                            <tr>
                                <td>SECTION:</td>
                                <td>${s.section1}</td>
                            </tr>
                            
                        </table>
                    </div>
                </div>
            </div>
             </div>
             
             
             
             
                 
        <div class="content2">
            <div class="content3" style="margin-top: 30px; margin-left:320px">
                <div class="card" style="align-items: center;">
                    <h1>STUDENT COURSE 2</h1>
                    <div class="card-content">
                        <table class="table">
                            <tr>
                                <td>COURSE TITLE:</td>
                                <td>${s.course2}</td>
                            </tr>
                        <c:forEach var="cor" items="${c}">
                <c:if test="${s.course2 eq cor.coursetitle}">
                    <tr>
                                <td>COURSE CODE:</td>
                                <td>${cor.coursecode}</td>
                            </tr>
                            <tr>
                                <td>COURSE CREDITS</td>
                                <td>${cor.credits}</td>
                            </tr>
                </c:if>
            </c:forEach>
                      
                            <tr>
                                <td>SECTION:</td>
                                <td>${s.section2}</td>
                            </tr>
                            
                        </table>
                    </div>
                </div>
            </div>
             </div>
             
             
             
                 
        <div class="content2">
            <div class="content3" style="margin-top: 30px;">
                <div class="card" style="align-items: center; margin-left:640px">
                    <h1>STUDENT COURSE 3</h1>
                    <div class="card-content">
                        <table class="table">
                            <tr>
                                <td>COURSE TITLE:</td>
                                <td>${s.course3}</td>
                            </tr>
                                                          <c:forEach var="cor" items="${c}">
                <c:if test="${s.course1 eq cor.coursetitle}">
                    <tr>
                                <td>COURSE CODE:</td>
                                <td>${cor.coursecode}</td>
                            </tr>
                            <tr>
                                <td>COURSE CREDITS</td>
                                <td>${cor.credits}</td>
                            </tr>
                </c:if>
            </c:forEach>
                      
                            <tr>
                                <td>SECTION:</td>
                                <td>${s.section3}</td>
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
