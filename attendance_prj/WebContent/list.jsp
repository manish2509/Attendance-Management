<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%@page import="java.sql.ResultSet"%>
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
table {
  border-collapse: collapse;
}

table, th, td {
  border: 2px solid black;
}
</style>
<body>

<%
try
{
	String db="year"+(String)session.getAttribute("ac_yr");
	String year=(String)session.getAttribute("yr");
	String section=(String)session.getAttribute("sec");
	String d1=(String)session.getAttribute("dept1");//mba
	String d2=(String)session.getAttribute("dept2");//noraml depts
	String table_name;
	String department;
	if(d1==null)
	{
		department=d2;
	}
	else
	{
		department=d1;
	}
	String sem=(String)session.getAttribute("sem");
	 table_name=department+"_"+year+"_"+sem+"_"+section;
	ResultSet rs = null;
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/"+db,"root","");
	Statement stmt=con.createStatement();
	String query="Select * from "+table_name;
	rs = stmt.executeQuery(query);
	out.print("<table cellpadding='5' cellspacing='5'>");
	out.print("<tr><td>SNO</td><td>Name</td></tr>");
	while(rs.next())
	{
		String rno=rs.getString("roll_no");
		String sname=rs.getString("name");
		out.print("<tr>");
		out.print("<td>"+rno+"</td>");
		out.print("<td>"+sname+"</td></tr>");
	}
	
}
catch(Exception e)
{
	out.print(e);
}
%>

</body>
</html>