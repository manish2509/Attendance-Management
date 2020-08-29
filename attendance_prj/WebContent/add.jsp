<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.sql.*" %>
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
background-image:url(sfbg.jpg);
height:700px; 
background-position: absolute;
background-repeat: no-repeat;
bacground-size:cover;
background-size: 100% 100%;
font-family:sans-serif;

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
String n=(String)session.getAttribute("num");
int num=Integer.parseInt(n);
out.print(n);
int i;
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
String table_name=department+"_"+year+"_"+sem+"_"+section;
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/"+db,"root","");
Statement stmt=con.createStatement();
String q="create table if not exists "+table_name+"(roll_no int not null AUTO_INCREMENT primary key,name varchar(20));";
stmt.executeUpdate(q);
Statement stmt1=con.createStatement();
String name[]=request.getParameterValues("text");
for(i=0;i<num;i++)
{
	
	
	String q1="insert into "+table_name+" (name) values('"+name[i]+"');";
	stmt1.executeUpdate(q1);
}
JOptionPane.showMessageDialog(null,"Added successfully!!");
response.sendRedirect("entry_prf.jsp");
}
catch(Exception e)
{
	out.print(e);
}

%>

</body>
</html>