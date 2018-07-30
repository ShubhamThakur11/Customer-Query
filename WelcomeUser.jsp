<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action=Mycomplaint.jsp method=post name=frm >
<%
String name=request.getParameter("uname");
String pwd=request.getParameter("pwd");
if(name.equals("admin")&&pwd.equals("admin123"))
{
	out.print("<input type=submit value='check complaints' name=sub />");
}
else
{
	out.print("<b>Invalid login</b>");
}
%>
</form>

</body>
</html>