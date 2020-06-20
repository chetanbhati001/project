<%@ include file="connection.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
</head>
<body>


<%
        String username=request.getParameter("User_Name");
        String password=request.getParameter("psw");
                Statement st=conn.createStatement();
ResultSet rs=st.executeQuery("select * from Registration where User_Name='"+username +"'");


if(rs.next())
        {
if(rs.getString(2).equals(password))
            {%>
<jsp:forward page="home.jsp"></jsp:forward>

<%
            }
else if(rs.getString(1).equals(username))
            {

out.println("sorry! wrong password");
            }
        }  
else
       {
//out.println("ID not Registered");
       }


               %>


</body>
</html>


