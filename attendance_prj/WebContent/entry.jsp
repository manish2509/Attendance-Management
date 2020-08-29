<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="javax.swing.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
body
{
background-image:url(entry.jpg);
height:1700px; 
background-position: absolute;
background-repeat: no-repeat;
bacground-size:cover;
background-size: 100% 100%;
font-family:sans-serif;
}
input[type=submit]
{
  background-color: black; 
  border: 2px solid blue;
  border-radius:16px;
  outline:none;
  color: white;
  padding: 10px 50px;
  text-align: center;
  text-decoration: none;
  cursor:pointer;
}
input[type=text]
{
width:200px;
border:2px solid black;
outline:none;
color:black;
text-align:center;
}

</style>
<body>

<%
String n=JOptionPane.showInputDialog(null,"Enter your class strength:");
 if(n==null)
{
	response.sendRedirect("entry_prf.jsp");
}
 else if(n.equals(""))
{
	JFrame f3;
	f3=new JFrame();  
	JOptionPane.showMessageDialog(f3,"Enter the required values!","Alert",JOptionPane.WARNING_MESSAGE);
	response.sendRedirect("entry.jsp");
}
else
{
int num=Integer.parseInt(n);
out.print("<form action='add.jsp' method='post'>");
out.print("<table>");
for(int i=1;i<=num;i++)
{
	out.print("<tr><td>"+i+"</td><td><input type='text' name='text'");
	out.print("</td><tr>");
}
out.print("<input type='submit' value='ADD'>");
out.print("</table>");
out.print("</form>");
}
 session.setAttribute("num",n);
%>

</body>
</html>