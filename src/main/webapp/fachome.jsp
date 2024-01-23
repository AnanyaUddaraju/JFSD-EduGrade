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

    <div id="content">HI, ${fid}.</div>
</div>

</body>
</html>
