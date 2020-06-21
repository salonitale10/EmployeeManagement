<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Manager</title>

<style>
body
{

background-image: url('https://media.giphy.com/media/xTiTnxpQ3ghPiB2Hp6/giphy.gif');

background-size:cover;

height: 100vh;
padding:0;
margin:0;

}
th,td
{
height:60%;
padding: 15px;
font-size:20px;
}
h1,h3,table,a
{
color:white;

}


table {
  table-layout: auto;
  width: 100%;  
  text-align:center;
}


</style>



</head>
<body>
<div align="center">


    <h1>Employee Management</h1>
    <h3><a href="/AssignmentEmployeeApp/new">New Employee</a></h3>
    <table border="1" padding="5">
    
    <tr>
    
    <th>Id</th>
    <th>Name</th>
    <th>Email</th>
    <th>Address</th>
    <th>Action</th>
    </tr>
    
    <c:forEach items="${listEmployee}" var="employee">
    
    <tr>
    
    <td>${employee.id}</td>
    <td>${employee.name}</td>
    <td>${employee.email}</td>
    <td>${employee.address}</td>
    <td>
    <a href="edit?id=${employee.id}">Edit</a>
    &nbsp;&nbsp;&nbsp;
    <a href="delete?id=${employee.id}">Delete</a>
    </td>
    </tr>
    
    </c:forEach>
    
    
    
    </table>




</div>
</body>
</html>