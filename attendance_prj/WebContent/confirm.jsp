<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.sql.*" %>
     <%@ page import="javax.swing.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String uname=request.getParameter("name");
String uid=request.getParameter("email");
String ph_num=request.getParameter("phone");
String pwd=request.getParameter("pass");

if(uname==null||uid==null||ph_num==null||pwd==null||uname.length()==0||uid.length()==0||ph_num.length()==0||pwd.length()==0)
{
JFrame f2;
f2=new JFrame();  
JOptionPane.showMessageDialog(f2,"Enter the required values!","Alert",JOptionPane.WARNING_MESSAGE);
response.sendRedirect("signup.jsp");
}
else
{

	try
	{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/","root","");
	Statement stmt1=con.createStatement();
	String c="create database if not exists prj";
	stmt1.executeUpdate(c);
	Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/prj","root","");
	String q1="create table if not exists student(name varchar(20),email_id varchar(40) primary key,phone varchar(20),password varchar(40));";
	Statement stmt2=con1.createStatement();
	Statement stmt=con1.createStatement();
	stmt2.executeUpdate(q1);
	int i=stmt.executeUpdate("insert into student values('"+uname+"','"+uid+"','"+ph_num+"','"+pwd+"')");
	}
	catch(Exception e)
	{
		out.print(e);
	}
JOptionPane.showMessageDialog(null,"Account created!");
response.sendRedirect("home.html");

}
%>

</body>
</html>