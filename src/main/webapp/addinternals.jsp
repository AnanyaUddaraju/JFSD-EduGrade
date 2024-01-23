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
    <h3 align="center"><u>Add Internals</u></h3>
<table align="center" border="2">
  <tr bgcolor="black" style="color:white">
    <td  style="width: 10%;">ID</td>
    <td>NAME</td>
    <td>COURSE</td>
    <td  style="width: 5%;">Mid-1 Marks</td>
    <td>ACTION</td>
    <td>Mid-2 Marks</td>
    <td>ACTION</td>
    <td>Practical</td>
    <td>ACTION</td>
    <td>TOTAL INTERNAL</td>
     <td>ACTION</td>
    
  </tr>
  <c:forEach items="${studata}" var="stu">
  
   <c:set var="main" value="${stu.course == course}" />
    <c:choose>
    <c:when test="${main}">
  
    <tr>
      <td><c:out value="${stu.id}" /></td>
      <td><c:out value="${stu.name}" /></td>
      <td><c:out value="${stu.course}" /></td>
      <c:set var="myCondition" value="${stu.mid1!= -1}" />
    <c:choose>
    <c:when test="${myCondition}">
      <td>
      <input type="number" name="mid1marks" id="mid1marks_${stu.id}" placeholder="${stu.mid1}" readonly="readonly" />
       </td>
    </c:when>
    <c:otherwise>
              <td>
        <input type="number" name="mid1marks" id="mid1marks_${stu.id}" placeholder="Enter Marks" />
      </td>
    </c:otherwise>
</c:choose>
 <c:choose>
    <c:when test="${myCondition}">
      <td>
 <input type="text" placeholder="Saved" readonly="readonly" >
       </td>
    </c:when>
    <c:otherwise>
              <td>
                <a href='<c:url value="savemid1marks">
          <c:param name="id" value="${stu.id}" />
          <c:param name="mid1marks" value="" />
        </c:url>'
        onclick="addmid1marks(${stu.id})">Save</a>
        
      </td>
    </c:otherwise>
</c:choose>
   
     
      <c:set var="myCondition2" value="${stu.mid2!= -1}" />
    <c:choose>
    <c:when test="${myCondition2}">
      <td>
      <input type="number" name="mid2marks" id="mid2marks_${stu.id}" placeholder="${stu.mid2}" readonly="readonly" />
       </td>
    </c:when>
    <c:otherwise>
              <td>
        <input type="number" name="mid2marks" id="mid2marks_${stu.id}" placeholder="Enter Marks" />
      </td>
    </c:otherwise>
</c:choose>

 <c:choose>
    <c:when test="${myCondition2}">
      <td>
 <input type="text" placeholder="Saved" readonly="readonly" >
       </td>
    </c:when>
    <c:otherwise>
              <td>
                <a href='<c:url value="savemid2marks">
          <c:param name="id" value="${stu.id}" />
          <c:param name="mid2marks" value="" />
        </c:url>'
        onclick="addmid2marks(${stu.id})">Save</a>
        
      </td>
    </c:otherwise>
</c:choose>


 <c:set var="myCondition3" value="${stu.practical!= -1}" />
    <c:choose>
    <c:when test="${myCondition3}">
      <td>
      <input type="number" name="practicalmarks" id="practicalmarks_${stu.id}" placeholder="${stu.practical}" readonly="readonly" />
       </td>
    </c:when>
    <c:otherwise>
              <td>
        <input type="number" name="practicalmarks" id="practicalmarks_${stu.id}" placeholder="Enter Marks" />
      </td>
    </c:otherwise>
</c:choose>

 <c:choose>
    <c:when test="${myCondition3}">
      <td>
 <input type="text" placeholder="Saved" readonly="readonly" >
       </td>
    </c:when>
    <c:otherwise>
              <td>
                <a href='<c:url value="savepracticalmarks">
          <c:param name="id" value="${stu.id}" />
          <c:param name="practicalmarks" value="" />
        </c:url>'
        onclick="addpracticalmarks(${stu.id})">Save</a>
        
      </td>
    </c:otherwise>
</c:choose>
 <c:set var="myCondition4" value="${stu.practical!= -1 && stu.mid1!= -1 && stu.mid2!= -1}" />
    <c:choose>
    <c:when test="${myCondition4}">
      <td>
      <input type="number" name="total" id="total_${stu.id}" placeholder="${stu.practical+stu.mid1+stu.mid2}"  value="${stu.practical+stu.mid1+stu.mid2}" readonly="readonly" />
       </td>
    </c:when>
    <c:otherwise>
              <td>
        <input type="number" name="total" id="total_${stu.id}" placeholder="-1" readonly="readonly" />
      </td>
    </c:otherwise>
</c:choose>


  <c:set var="myCondition5" value="${stu.total!=-1}" />
 <c:choose>
    <c:when test="${myCondition5}">
      <td>
 <input type="text" placeholder="Saved" readonly="readonly" >
       </td>
    </c:when>
    <c:otherwise>
              <td>
                <a href='<c:url value="savetotalmarks">
          <c:param name="id" value="${stu.id}" />
          <c:param name="total" value="" />
        </c:url>'
        onclick="addtotalmarks(${stu.id})">Save</a>
        
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



<script>

function addmid1marks(studentId) {
    var marksInput = document.getElementById("mid1marks_" + studentId).value;
    var saveLink = document.querySelector('[onclick="addmid1marks(' + studentId + ')"]');

    // Update the 'marks' parameter in the URL
    var url = saveLink.href.replace('mid1marks=', 'mid1marks=' + marksInput);
    saveLink.href = url;
  }

function addmid2marks(studentId) {
    var marksInput = document.getElementById("mid2marks_" + studentId).value;
    var saveLink = document.querySelector('[onclick="addmid2marks(' + studentId + ')"]');
    
    // Update the 'marks' parameter in the URL
    var url = saveLink.href.replace('mid2marks=', 'mid2marks=' + marksInput);
    saveLink.href = url;
  }
 
function addpracticalmarks(studentId) {
    var marksInput = document.getElementById("practicalmarks_" + studentId).value;
    var saveLink = document.querySelector('[onclick="addpracticalmarks(' + studentId + ')"]');
    
    // Update the 'marks' parameter in the URL
    var url = saveLink.href.replace('practicalmarks=', 'practicalmarks=' + marksInput);
    saveLink.href = url;
  }
function addtotalmarks(studentId) {
    var marksInput = document.getElementById("total_" + studentId).value;
    var saveLink = document.querySelector('[onclick="addtotalmarks(' + studentId + ')"]');
    
    // Update the 'marks' parameter in the URL
    var url = saveLink.href.replace('total=', 'total=' + marksInput);
    saveLink.href = url;
  }
 
</script>

</html>
