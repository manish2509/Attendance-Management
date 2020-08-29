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
String rno=request.getParameter("rno");
String name=request.getParameter("sname");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/"+db,"root","");
Statement stmt=con.createStatement();
String query="update "+table_name+" set name='"+name+"' where roll_no='"+rno+"';";
stmt.executeUpdate(query);
JOptionPane.showMessageDialog(null,"Updated successfully!!");
response.sendRedirect("update.jsp");
}
catch(Exception e)
{
	out.print(e);
}
%>
</body>
</html>