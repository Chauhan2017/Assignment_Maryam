<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<%@page import="java.io.*" %>
<%@page import="java.sql.*"%>

<%
String username = request.getParameter("username");
String password = request.getParameter("password");
String confirm_paasword = request.getParameter("confirm_paasword");
String firstname = request.getParameter("firstname");
String lastname = request.getParameter("lastname");
String email = request.getParameter("email");
String phone = request.getParameter("phone");
String location = request.getParameter("location");


%>




<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration Form</title>
</head>
<body>

<%

if (username == null || password == null || confirm_paasword == null || firstname == null || lastname == null ||email == null ||phone == null ||location == null   ) {
	out.print("All fields are required");
}

else if (!password.equals(confirm_paasword)){
	out.print("password does not match");
}
else if (!email.matches("^[\\w-_\\.+]*[\\w-_\\.]\\@([\\w]+\\.)+[\\w]+[\\w]$"))
{
	out.print("Invalid email");
}
else if (!phone.matches("[789]{1}\\d{9}"))
{
	out.print("Invalid Phone Number");
}

else if (!firstname.matches("[A-Z][a-zA-Z]*"))
{
	out.print(" Firstname Invalid");
}

else if (!lastname.matches("[A-Z][a-zA-Z]*"))
{
	out.print("Lastname Invalid");
}%>

<%
int flag=0;

try{
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost/register", "root", "");
Statement statement = con.createStatement();
String query = "insert into users(username,password,fname,lname,email,phone,location) VALUES ('"+username+"','"+password+"','"+firstname+"','"+lastname+"','"+email+"','"+phone+"','"+location+"');";

flag = statement.executeUpdate(query);

}

catch(Exception e){
	out.println("Unable to register");
}

if(flag==1) {
	out.print("You have been registered successfully. ");
%>

 <a href="Viewtable.jsp">Click here to view users</a>;

 <% }
 else{ %>
 
<BR /><a href="register.jsp">Back</a>

<%} %>

</body>
</html>