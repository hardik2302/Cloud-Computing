<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	
	response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
	response.setHeader("Pragma","no-cache");
	response.setHeader("Expires","0");
		if(session.getAttribute("first")==null)
		{
			response.sendRedirect("login.jsp");
		}
		
		
		
	%>
	<%@page import="java.sql.DriverManager"%>
	<%@page import="java.sql.ResultSet"%>
	<%@page import="java.sql.Statement"%>
	<%@page import="java.sql.Connection"%>
<%
	String mis = request.getParameter("mis");
	String driver = "com.mysql.jdbc.Driver";
	String connectionUrl = "jdbc:mysql://localhost:3306/";
	String database = "employees";
	String userid = "root";
	String password = "000000000";
	try {
	Class.forName(driver);
	} catch (ClassNotFoundException e) {
	e.printStackTrace();
	}
	Connection connection = null;
	Statement statement = null;
	ResultSet resultSet = null;
%>
	

<table border="1">
<tr>
<td>MIS</td>
<td>First Name</td>
<td>Last name</td>
<td>Date Of Birth</td>
<td>Contact</td>
<td>Job Role</td>
<td>Yearly Bonus</td>	

</tr>
<%
try{
	connection = DriverManager.getConnection(connectionUrl+database, userid, password);
	statement=connection.createStatement();
	String sql ="select * from employee";
	resultSet = statement.executeQuery(sql);
	while(resultSet.next()){
	%>
	<tr>
	<td><%=resultSet.getString("mis") %></td>
	<td><%=resultSet.getString("first") %></td>
	<td><%=resultSet.getString("last") %></td>
	<td><%=resultSet.getString("birth") %></td>
	<td><%=resultSet.getString("contact") %></td>
	<td><%=resultSet.getString("jobrole") %></td>
	<td><%=resultSet.getString("bonus") %></td>
	</tr>
	<%
	}
	connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</body>
</html>