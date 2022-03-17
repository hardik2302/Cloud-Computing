<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
	  <h1>Employee Register Form</h1>
	  <form action="register" method="post">
	   <table style="with: 80%">
	    <tr>
	     <td>FirstName</td>
	     <td><input type="text" name="first" /></td>
	    </tr>
	    <tr>
	     <td>LastName</td>
	     <td><input type="text" name="last" /></td>
	    </tr>
	   	<tr>
	     <td>MIS No.</td>
	     <td><input type="text" name="mis" /></td>
	    </tr>
	   	<tr>
	     <td>Date Of Birth</td>
	     <td><input type="text" name="birth" /></td>
	    </tr>
	    <tr>
	     <td>Contact</td>
	     <td><input type="text" name="contact" /></td>
	    </tr>
	    <tr>
	     <td>Job Role</td>
	     <td><input type="text" name="jobrole" /></td>
	    </tr>
	    <tr>
	     <td>Yearly Bonus</td>
	     <td><input type="text" name="bonus" /></td>
	    </tr>
	   </table>
	   <input type="submit" value="register" />
  </form>
 </div>
</body>
</html>