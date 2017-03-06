<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration Form</title>
</head>
<body>
<h2 align="center"> Registration Form</h2>

<form name="form1" action="validate.jsp" method="post">

<table frame="border" cellpadding="1" title="Registration Form" align="center">

<tr> <td>User name</td> <td><input type ="text" name ="username"  /></td></tr>
<tr> <td> Password</td> <td> <input type = "password" name ="password" size="20"/></td></tr>
<tr> <td>Confirm Password</td> <td> <input type ="password" name ="confirm_paasword" size="20" /></td></tr>
 
 <tr> <td>FirstName</td> <td> <input type ="text" name = "firstname" size="20"/></td></tr>
 <tr> <td>LastName</td> <td> <input type ="text" name = "lastname" size="20"/></td></tr>
 <tr> <td>Email</td> <td> <input type = "text" name = "email"/></td></tr>
 <tr> <td>Phone No</td> <td> <input type ="text" name =  "phone" /></td></tr>
 <tr> <td>Location</td> <td> <input type  ="text" name = "location" /></td></tr>
 
 <tr> <td align="char"> <input type= "reset" value="Reset"/>  <input type ="submit" value="Save"/></td></tr>
 </table>
</form>
</body>
</html>