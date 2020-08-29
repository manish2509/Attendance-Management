<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="javax.swing.*" %>
    <%@ page import ="java.time.LocalDate" %>
    <%@ page import="java.text.SimpleDateFormat" %>
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
height:1700px; 
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
	 
java.text.DateFormat df = new java.text.SimpleDateFormat("dd_MM_yyyy"); 
String da1=df.format(new java.util.Date());

String rno=request.getParameter("rnos");
String od=request.getParameter("ornos");
String[] n=rno.split(",");
String ses=request.getParameter("session");

String da2=request.getParameter("date");
String date;
if(da2.equals(""))
{
	 date=ses+"_"+da1;
}
else
{
	 date=ses+"_"+da2;
}
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/"+db,"root","");
Statement stmt=con.createStatement();
Statement stmt1=con.createStatement(); 
Statement stmt2=con.createStatement();
Statement stmt3=con.createStatement(); 
Statement stmt4=con.createStatement();
Statement stmt5=con.createStatement();
Statement stmt6=con.createStatement();
Statement stmt7=con.createStatement();
Statement stmt8=con.createStatement();
Statement stmt9=con.createStatement();
Statement stmt10=con.createStatement();
ResultSet rs=null;

 if(od==null)
{
 	 String q="alter table "+table_name+" add column if not exists "+date+" varchar(20)  default 'P';";
	stmt1.executeUpdate(q);
for(int i=0;i<n.length;i++)
{
	String s="select name from "+table_name+" where roll_no='"+n[i]+"';";
	rs=stmt5.executeQuery(s);
	while(rs.next())
	{
		String name=rs.getString("name");
		String c="create table if not exists "+name+"_"+table_name+"(absent varchar(20),od varchar(20));";
		stmt6.executeUpdate(c);
		String in="insert into "+name+"_"+table_name+" (absent) values('"+date+"');";
		stmt7.executeUpdate(in);
	}
	String r="update "+table_name+" set "+date+"='ab' where roll_no='"+n[i]+"';";
	stmt2.executeUpdate(r);
	JOptionPane.showMessageDialog(null,"Attendance Updated Sucessfully..!");
	response.sendRedirect("attend_entry.jsp");
}
}

else
{
	String q="alter table "+table_name+" add column if not exists "+date+" varchar(20)  default 'P';";
	stmt1.executeUpdate(q);
for( int j=0;j<n.length;j++)
{
	String se="select name from "+table_name+" where roll_no='"+n[j]+"';";
	rs=stmt8.executeQuery(se);
	while(rs.next())
	{
		String name=rs.getString("name");
		String c="create table if not exists "+name+"_"+table_name+"(absent varchar(20),od varchar(20),percentage varchar(20));";
		stmt9.executeUpdate(c);
		String in="insert into "+name+"_"+table_name+" (absent) values('"+date+"');";
		stmt10.executeUpdate(in);
	}
	String s="update "+table_name+" set "+date+"='ab' where roll_no='"+n[j]+"';";
	stmt3.executeUpdate(s);
}
String[] on=od.split(",");
for(int a=0;a<on.length;a++)
{
	String se="select name from "+table_name+" where roll_no='"+on[a]+"';";
	rs=stmt8.executeQuery(se);
	while(rs.next())
	{
		String name=rs.getString("name");
		String c="create table if not exists "+name+"_"+table_name+"(absent varchar(20),od varchar(20));";
		stmt9.executeUpdate(c);
		String in="insert into "+name+"_"+table_name+" (od) values('"+date+"');";
		stmt10.executeUpdate(in);
	}
	String t="update "+table_name+" set "+date+"='OD' where roll_no='"+on[a]+"';";
	stmt4.executeUpdate(t);
}
JOptionPane.showMessageDialog(null,"Attendance Updated Sucessfully..!");
response.sendRedirect("attend_entry.jsp");
}
session.setAttribute("roll_no",rno);
session.setAttribute("od_no",od);
session.setAttribute("d",date);
}
catch(Exception e)
{
	out.print(e);
}
%>

</body>
</html>