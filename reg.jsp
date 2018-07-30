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
		 
		String user=request.getParameter("userid");
		String passwd=request.getParameter("pwd");
		String fname=request.getParameter("fname");
		String lname=request.getParameter("lname");
		String email=request.getParameter("email");
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		java.sql.Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Accounts","root","root123");
		Statement st=conn.createStatement();
		ResultSet rs;
		int i=st.executeUpdate("insert into users values('"+user+"','"+passwd+"','"+fname+"','"+lname+"','"+email+"');");
		out.println("congrats!!!you are registered");
	%>
	<br/>
	<a href="login.html">login page</a><br/>
	
</body>
</html>