<%@page import="dal.JDBCExample2"%>
<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
JDBCExample2.connect();
ResultSet res =JDBCExample2.viewImage();
while(res.next())
{

%>
<img src="upload/<%= res.getString(2) %>" width="100" height="100" /> <img src="upload/<%= res.getString(3) %>" width="100" height="100" /> <img src="upload/<%= res.getString(4) %>" width="100" height="100" />
<hr>
<%
}
%>
</body>
</html>