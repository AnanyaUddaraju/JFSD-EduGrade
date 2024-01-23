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
        /* Styles for the form */
form {
    max-width: 400px; /* Adjust the form width as needed */
    margin: auto; /* Center the form */
    background-color: white; /* Same color as the navigation bar */
    color: black;
    padding: 70px;
    border-radius: 20px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* Add a subtle box shadow */
    margin-left: 120px;
    margin-top: 50px;
}

/* Styles for input labels */
label {
    display: block;
    margin-bottom: 8px;
    font-weight: bold;
}

/* Styles for input fields */
input {
    width: 100%;
    padding: 10px;
    margin-bottom: 25px;
    box-sizing: border-box;
    border: 1px solid #555; /* Add a border for better visibility */
    border-radius: 5px;
}

/* Style for the update button */
input[type="submit"] {
    background-color:#a6eea0 ;
    color: #fff;
    border: none;
    padding: 10px 20px;
    cursor: pointer;
    border-radius: 10px;
    margin-buttom:20px;
    
}

/* Hover effect for the update button */
input[type="submit"]:hover {
    background-color:#25dc14 ;
}
#centeredMessage {
            text-align: center;
            color: #28a745; /* Green color */
            margin-top: 50px; /* Adjust as needed */
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
        <h2 id="centeredMessage">${message}</h2> 
    
    
         <form method="post" action="update">
                <table align="center">
                    <tr>
                        <td><label>Id</label></td>
                        <td>
                            <input type="text" name="id" required="required" value="${sid}" readonly="readonly"/>
                        </td>
                    </tr>
                    <tr><td></td></tr>
                    <tr>
                        <td><label>Password</label></td>
                        <td><input type="password" name="pwd" required value="" /></td>
                    </tr>
                    <tr><td></td></tr>
                    <tr align="center">
                        <td colspan="2"><input type="submit" value="Update" class="button"></td>
                    </tr>
                </table>
            </form>
    
    </div>
</div>

</body>



</html>