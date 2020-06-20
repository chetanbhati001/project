<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>registration page</title>
<style>
<bady bgcolor="red">
body{

background-size:cover;

}
label{
color:black;
font-family:arial roundedmt bold;
}
p
{
color:white;
}
h1,h2
{
color:brown;
font-family:arial black;
}
.register
{
background-color: #4CAF50;
  color: white;
  padding: 10px 20px;
  border: none;
 
  width: 500%;
  opacity: 0.9;

.registerbtn:hover {
  opacity: 1;
}
</style>
</head>
<body bgcolor="red">


<center><b><h1> USER REGISTRATION FORM</h1></b></center>
<form  action="registrationaction.jsp" >
<table align='center' style="with: 50%">

<tr>
<td> <br>  <label for="User_Name">User_Name</label></td>
  <td><br>   <input type="text" placeholder="User_Name" name="User_Name" size="70" required></td>

</tr><tr>
<td> <br>  <label for="password">password</label></td>
  <td><br>   <input type="password" placeholder="Password" name="Password" size="70" required></td>

</tr>
<tr>
<td> <br>  <label for="First_Name">First Name</label></td>
  <td><br>  <input type="text" placeholder="Enter First_Name" name="First_Name" size="70" required></td>


</tr>
<tr>
<td> <br>  <label for="Last_Name">Last Name</label></td>
  <td><br>   <input type="text" placeholder="Enter Last_Name" name="Last_Name" size="70" required></td>

</tr>

<tr>
<td> <br>  <label for="Address">Address</label></td>
  <td> <br>  <input type="text" placeholder="Enter Address" name="Address" size="70" required></td>

</tr>
<tr>
<td> <br>  <label for="Email_Address">Email Adress</label></td>
  <td> <br>  <input type="text" placeholder="Enter Email_Id" name="Email_Id" size="70" required></td>

</tr>

<tr>
<td> <br>  <label for="Country">Country</label></td>
  <td> <br>  <input type="text" placeholder="Enter Country" name="Country" size="70" required></td>

</tr>
<tr>
<td> <br>  <label for="City">City</label></td>
  <td> <br>  <input type="text" placeholder="enter City" name="City" size="70" required></td>

</tr>

<tr>
<td> <br>  <label for="Contact_No">Contact Number</label></td>
  <td> <br>  <input type="text" placeholder="Enter Contact_No" name="Contact_No" size="70" required></td>
</tr></table>
<tr><br>
<td><br><div class="container signin"></td>

</table>
<table align='center'>
<tr>  
<td><br><div class="container"> <button type="submit" class="register">Register</button></div></td>
</tr>


<tr>
<td><br><div class="container signin"></td>
             <td><br><p>Already have an account? <a href="login.jsp">login</a></p> </div></td>
              </tr>

</table>


</form>
</body>
</html>

