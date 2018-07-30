<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ page import = "java.sql.*" %>
<%@ page import = "javax.sql.*" %>
<%
	Class.forName("com.mysql.jdbc.Driver"); 
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Accounts","root","root123");
	String complaint=request.getParameter("complaint");
	String username=request.getParameter("txt");
	Statement stmt=con.createStatement(); 
	int i=stmt.executeUpdate("insert into complaint values('"+username+"','"+complaint+"','"+""+"');");
	%>
	<font size=5 color=blue face=vivaldi>Your Complaints has been registered</font>
	<br/>
	<br/>
	<a href="login.html" align=bottom >logout</a>
</body>
</html>