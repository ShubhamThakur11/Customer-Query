<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Register Complaint here</title>
</head>
<body>
<form name=frm method=post action=complain.jsp >
<br><br><br>
<hr/>
<br><br><br><center>
<font face="chiller" size=7 color=blue >welcome ${username}</font>
<br><br><br>
											<hr/>
<input type=text name=txt value=${username} />											
<br><br><br>
<font face="chiller" size=7 color=red >Enter complaint here</font>
<br><br><br>
<textarea width=80% align=center name=complaint ></textarea>
<br><br><br>
</hr></center>
<center><input type=submit name=sub value=proceed /></center>

</form>
</body>
</html>