<%@ include file="connection.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>registration</title>
</head>
<body>
<%
String User_Name=request.getParameter("User_Name");
String Password=request.getParameter("Password");    
String First_Name=request.getParameter("First_Name");
String Last_Name=request.getParameter("Last_Name");
String address=request.getParameter("Address");
String Email_Id=request.getParameter("Email_Id");
String country=request.getParameter("Country");
String city=request.getParameter("city");
String Contact_No=request.getParameter("Contact_No");
try{
PreparedStatement ps=conn.prepareStatement("INSERT INTO Registration VALUES(?,?,?,?,?,?,?,?,?)");
ps.setString(1,User_Name);
ps.setString(2,Password);
ps.setString(3,First_Name);
ps.setString(4,Last_Name);
ps.setString(5,address);
ps.setString(6,Email_Id);
ps.setString(7,country);
ps.setString(8,city);
ps.setString(9,Contact_No);
ps.executeUpdate();

}
 catch (Exception e){
e.printStackTrace();
 }       %>
 <% String site = "login.jsp" ;
response.setStatus(response.SC_MOVED_TEMPORARILY);
response.setHeader("Location", site);
%>
</body>
</html>