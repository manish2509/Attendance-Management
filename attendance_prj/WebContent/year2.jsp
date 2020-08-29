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
height:608px; 
background-position: absolute;
background-repeat: no-repeat;
bacground-size:cover;
background-size: 100% 100%;
font-family:sans-serif;
}
#s
{
border:2px solid black;
background-color:white;
color:black;
position:absolute;
top:175px;
left:370px;
padding:5px 30px;
}
#s1
{
border:2px solid black;
background-color:white;
color:black;
position:absolute;
top:175px;
left:150px;
padding:5px 30px;
}
#s2
{
border:2px solid black;
background-color:white;
color:black;
position:absolute;
top:175px;
left:550px;
padding:5px 53px;
}
input[type=submit]
{
background-color:white;
color:black;
border:2px solid black;
border-radius:24px;
padding:2px 25px;
position:absolute;
top:180px;
left:780px;
}
</style>
<body><br><br>
<center>
<h1>SELECT THE YEAR OF STUDY AND SECTION:</h1><br><br><br><br>
<form action="admin_index.jsp" method="post">
<br><br><br>
<select name="year" id="s1">
<option value="Year of study">YEAR OF STUDY</option>
<option value="I">I</option>
<option value="II">II</option>
<option value="III">III</option>
<option value="IV">IV</option>
</select>
<br><br><br>
<select name="sem" id="s">
<option value="Semester">SEMESTER</option>
<option value="I">I</option>
<option value="II">II</option>
<option value="III">III</option>
<option value="IV">IV</option>
<option value="V">V</option>
<option value="VI">VI</option>
<option value="VII">VII</option>
<option value="VIII">VIII</option>
</select>
<select name="section" id="s2">
<option value="section">SECTION</option>
<option value="A">A</option>
<option value="B">B</option>
<option value="C">C</option>
<option value="D">D</option>
</select>
<br><br>
<input type="submit" value="GO">
</form>
</center>
<%
String department=request.getParameter("value");
session.setAttribute("dept2",department);
%>
</body>
</html>