<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="red">
<center>
<h2 style="font-family:Algerian;"> <br><br><br><br>STUDENT PLACEMENT CELL </h2>
<H3 STYLE="font-family:Algerian;"><text="white">LOGIN PAGE</text></H3>  
</center>
<center><form action="Loginaction.jsp">
 <center><div class="container">
    <label for="uname"><b>Username</b></label>
    <input type="text" placeholder="Enter Username" name="uname" required size="25"><br><br>
   <label for="psw"><b>Password</b></label>&nbsp;&nbsp;
    <input type="password" placeholder="Enter Password" name="psw" required size="25"><br><br>
    <a href="college.jsp">
     
    <button type="submit">Login</button></a>
    <font><a><button type="cancel">Cancel</button></a></font><br><br>
    <label>
      <input type="checkbox"  name="remember"> Remember password &nbsp;&nbsp;&nbsp;
      <span class="psw"> <a href="registration.jsp">Create Account</a></span>
    </label>
  </div></center>
</form></center>
</body>
</html>