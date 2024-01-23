<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="x" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="z" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
     table {
      border-collapse: collapse;
      width: 80%;
      margin: auto;
      margin-top: 20px;
    }
    th, td {
      border: 1px solid #ccc;
      padding: 8px;
      text-align: center;
    }
    th {
      background-color: #f2f2f2;
    }
    /* Main Content and Side Dashboard */
    .container {
        display: flex;
        height: 100%;
        margin-left: 0%;
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
       

        /* Apply Dancing Script font to h3 */
       
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

#page-container {
 position: relative;
  min-height: 100vh;
}

#content-wrap {
  padding-bottom: 2.5rem;    /* Footer height */
}  
body {
      font-family: Arial, sans-serif;
    }
    .report-card {
      width: 600px;
      margin: auto;
      border: 1px solid #ccc;
      padding: 20px;
      box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
    }
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
    <table>
    <tr>
        <th >Student ID</th>
        <th>Course</th>
        <th >Course Code</th>
        <th >Internal</th>
        <th >External</th>
        <th >Total</th>
        <th>Grade</th>
      <th >Pass/Fail</th>
    </tr>

    <c:forEach items="${i}" var="stu">
     <c:set var="main" value="${stu.course == course}" />
    <c:choose>
    <c:when test="${main}">
        <tr>
            <td><c:out value="${stu.id}" /></td>
            <td><c:out value="${stu.course}" /></td>
              <z:forEach var="c" items="${c}">
                <c:if test="${stu.course eq c.coursetitle}">
                    <td><c:out value="${c.coursecode}" /></td>
                </c:if>
            </z:forEach>
            <td><c:out value="${stu.total}" /></td>
             <x:forEach var="e" items="${e}">
                <c:if test="${stu.id eq e.id and stu.course eq e.course}">
                    <td><c:out value="${e.marks}" /></td>
                    <c:set var="extmarks" value="${e.marks}"/>
                </c:if>
            </x:forEach>
            
  
     <c:set var="myCondition" value="${stu.total != -1 and extmarks!= -1}"/>
    <c:choose>
    <c:when test="${myCondition}">
      <td>
      <c:out value="${stu.total+extmarks}"/>
       </td>
    </c:when>
    <c:otherwise>
              <td>
        <c:out value="Yet to Upload"/>
      </td>
    </c:otherwise>
</c:choose>


 <c:choose>
       <c:when test="${!myCondition}">
               <td>
                   <c:out value="Yet to Upload"></c:out>
                </td>
            </c:when>
            <c:when test="${stu.total + extmarks >= 90}">
                <td>
                    <c:out value="O"></c:out>
                </td>
            </c:when>
            <c:when test="${stu.total + extmarks >= 80 and stu.total + extmarks <= 89}">
                <td>
                    <c:out value="A+"></c:out>
                </td>
                </c:when>
                <c:when test="${stu.total + extmarks >= 70 and stu.total + extmarks <= 79}">
                <td>
                    <c:out value="A"></c:out>
                </td>
                </c:when>
                 <c:when test="${stu.total + extmarks >= 50 and stu.total + extmarks <= 69}">
                <td>
                    <c:out value="B"></c:out>
                </td>
                </c:when>
                 <c:when test="${stu.total + extmarks <50}">
                <td>
                    <c:out value="C"></c:out>
                </td>
                </c:when>  
        </c:choose>
    
    <c:choose>
       <c:when test="${!myCondition}">
               <td>
                   <c:out value="Yet to Upload"></c:out>
                </td>
            </c:when>
              <c:when test="${stu.total + extmarks >= 50}">
               <td>
                   <c:out value="PASS"></c:out>
                </td>
            </c:when>
            <c:otherwise>
           <td>
                   <c:out value="FAIL"></c:out>
                </td>
            </c:otherwise>
    
    
    
    </c:choose>  
        
            </tr>
            </c:when>
            </c:choose>
            </c:forEach>

</table>
    
    </div>
</div>

</body>
</html>
