<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@page import="java.sql.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
String id =request.getParameter("id");
int num = Integer.parseInt(id);

String fname=request.getParameter("fname");
String lname=request.getParameter("lname");
String email=request.getParameter("email");
String phone=request.getParameter("phone");
String location=request.getParameter("location");

if (!email.matches("^[\\w-_\\.+]*[\\w-_\\.]\\@([\\w]+\\.)+[\\w]+[\\w]$"))
{
	out.print("Invalid email");
}
else if (!phone.matches("[789]{1}\\d{9}"))
{
	out.print("Invalid Phone Number");
}

else if (!fname.matches("[A-Z][a-zA-Z]*"))
{
	out.print(" Firstname Invalid");
}

else if (!lname.matches("[A-Z][a-zA-Z]*"))
{
	out.print("Lastname Invalid");
}
else{
	int flag =0;
try{
Connection conn = null;
Class.forName("com.mysql.jdbc.Driver").newInstance();
conn = DriverManager.getConnection("jdbc:mysql://localhost/register", "root", "");
Statement st=null;
st=conn.createStatement();
flag = st.executeUpdate("update users set fname='"+fname+"',lname='"+lname+"',email='"+email+"',phone='"+phone+"',location='"+location+"'where id='" +num+"'");


if(flag==1) {
	out.print("You have been updated records successfully. ");
	response.sendRedirect("Viewtable.jsp");
}
else{
	out.print("Please enter your data correctly");
	response.sendRedirect("edit.jsp");
}
}
	
catch(Exception e){
System.out.println(e);
}
}
%>
</body>
</html>