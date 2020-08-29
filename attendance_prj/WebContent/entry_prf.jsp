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
background-image:url(sfbg.jpg);
height:547px; 
background-position: absolute;
background-repeat: no-repeat;
bacground-size:cover;
background-size: 100% 100%;
font-family:sans-serif;
}
#fid
{
width:200px;
heigth:200px;
padding:60px;
position:absolute;
top:200px;
left:250px;
border: 2px solid blue;
border-radius: 25px;
background-color:black;
color:white;
}
input[type=text]
{
width:200px;
border:2px solid blue ;
border-radius:2px;
text-align:center;
outline:none;
color:black;

}

input[type=submit]
{
  background-color: black; 
  border: 2px solid blue;
  border-radius:16px;
  outline:none;
  color: white;
  padding: 15px 50px;
  text-align: center;
  text-decoration: none;
  cursor:pointer;
}
</style>
<body>

<%
String year=(String)session.getAttribute("yr");
String section=(String)session.getAttribute("sec");
String semester=(String)session.getAttribute("sem");
out.print("<center>");
out.print("<div>");
out.print("<table>");
out.print("<form id='fid' action='entry.jsp' method='post'>");
out.print("<br><br>");
out.print("<tr><td>");
out.print("Year:");
out.print("</td><td>");
out.print("<input type='text' value='"+year+"'");
out.print("<br><br>");
out.print("</td></tr>");
out.print("<tr><td>");
out.print("Section:");
out.print("</td><td>");
out.print("<input type='text' value='"+section+"'");
out.print("<br><br>");
out.print("</td></tr>");
out.print("<tr><td>");
out.print("Semester:");
out.print("</td><td>");
out.print("<input type='text' value='"+semester+"'");
out.print("<br><br>");
out.print("</td></tr>");
out.print("<tr><td>");
out.print("<input type='submit' value='ADD STUDENTS'>");
out.print("</td>");
out.print("</form>");
out.print("<form action='update.jsp' method='post'>");
out.print("<td>");
out.print("<input type='submit' value='UPDATE STUDENTS'>");
out.print("</td>");
out.print("</form>");
out.print("<form action='delete.jsp' method='post'>");
out.print("<td>");
out.print("<input type='submit' value='DELETE STUDENTS'>");
out.print("</td></tr>");
out.print("</form>");
out.print("</table>");
out.print("</div>");
out.print("</center>");

%>

</body>
</html>