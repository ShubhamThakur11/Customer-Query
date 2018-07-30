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
Class.forName("com.mysql.jdbc.Driver").newInstance();
java.sql.Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Accounts","root","root123");
Statement st=conn.createStatement();
ResultSet rs=st.executeQuery(("select * from complaint;"));
out.println("<table border=3 align=center>");
out.println("<tr>");
out.println("<th width=200 align=center><b>NAME</th>");
out.println("<th width=400 align=center ><b>Complaints</th>");
out.println("<th width=400 align=center ><b>Response</b></th>");
out.println("</tr>");
while(rs.next())  
{
			
		out.println("<tr>");
		out.println("<td align=center>"+rs.getString(1)+"</td>");
		out.println("<td align=center>"+rs.getString(2)+"</td>");
		out.println("<td align=center>"+rs.getString(3)+"</td>");
		out.println("</tr>");
		
}
out.println("</table>");
%>
<form name=frm action=resposer.jsp method=post >
<center>
<b>Name</b>
<input type=text name=nm />
<br><b>Response</b>
<textarea name=texts ></textarea>
<br>
<input type=submit name=sub value=Submit />
</center>
</form>

</body>
</html>