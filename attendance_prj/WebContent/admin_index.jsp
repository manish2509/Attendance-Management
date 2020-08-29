<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
body
{
background-image:url(index.jpg);
height:547px; 
background-position: absolute;
background-repeat: no-repeat;
bacground-size:cover;
background-size: 100% 100%;
font-family:sans-serif;
}
</style>
<frameset rows="10%,100%">
<frame src="admin.jsp" frameborder="0">
<frame src="entry_prf.jsp" name="student" frameborder="0">
</frameset>
<body>
<%
String year=request.getParameter("year");
String section=request.getParameter("section");
String semester=request.getParameter("sem");
session.setAttribute("yr",year);
session.setAttribute("sec",section);
session.setAttribute("sem",semester);
%>
</body>
</html>