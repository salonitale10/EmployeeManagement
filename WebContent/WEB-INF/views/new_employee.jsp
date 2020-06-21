<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New Employee</title>
<style>
body
{

background-image: url('https://media.giphy.com/media/xTiTnxpQ3ghPiB2Hp6/giphy.gif');

background-size:cover;

height: 100vh;
padding:0;
margin:0;

}

h2,table
{
text-align:center;
color:white;
}

table
{
table-layout: auto;
  width: 80%;  
}


input
{
width:80%;
font-size:20px;
padding: 12px 20px;
}


.button {
  background-color: lightblue;
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
  
  position: absolute;
    top: 50%;
    left:50%;
}

</style>

</head>
<body>
    <div align="center">
    
    <h2>New Employee</h2>
    
    <form:form action="save" method="post" modelAttribute="employee">
    
    <table border="0" cellpadding="5">
    
    <tr>
    <td>Name:</td>
    <td><form:input path="name"/></td>
    </tr>
    
    <tr>
    <td>Email:</td>
    <td><form:input path="email"/></td>
    </tr>
    
    <tr>
    <td>Address:</td>
    <td><form:input path="address"/></td>
    </tr>
    
    <tr>
   <!--  <td colspan="2"><input type="submit" value="Save"/></td> -->
    <td><button class="button">Save</button></td>
    </tr>
    
    </table>
    
    
    
    </form:form>
    </div>
</body>
</html>