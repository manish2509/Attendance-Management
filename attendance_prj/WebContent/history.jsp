<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
body
{
background-image:url(stbg.jpg);
height:700px; 
background-position: absolute;
background-repeat: no-repeat;
bacground-size:cover;
background-size: 100% 100%;
font-family:sans-serif;
}
#l
{
position:absolute;
top:20px;
left:1200px;
}
</style>
<body>
<a href="home.html" id='l'><font color="black"><u>Logout</u></font></a>
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
	 String name=(String)session.getAttribute("sname");
	 out.print("<b><u>"+name+":"+"<br><br></u></b>");
	String table=name.toLowerCase()+"_"+table_name.toLowerCase();
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/"+db,"root","");
	Statement stmt=con.createStatement();
	ResultSet rs=null;
	Statement stmt1=con.createStatement();
	ResultSet rs1=null;
	 DatabaseMetaData dbm = con.getMetaData();
	 ResultSet tables = dbm.getTables(null, null, table, null);
	 if(tables.next())
	 {
		 String c="select distinct(absent) as c from "+table;
		 rs=stmt.executeQuery(c);
		 out.print("<b><u>History of absent:</u></b><br><br>");
		 while(rs.next())
		 {
			 String ab=rs.getString("c");
			 if(ab==null)
			 {
				 continue;
			 }
			 else
			 {
			 out.print(ab+"<br>");
		 }
		 }
		 out.print("<br><br>");
		 String o="select distinct(od) as c from "+table;
		 rs1=stmt1.executeQuery(o);
		 out.print("<b><u>History of on duty:<br><br></u></b>");
		 while(rs1.next())
		 {
			 String od=rs1.getString("c");
			if(od==null)
			{
				continue;
			}
			else
			{
			 out.print(od+"<br>");
		 }
		 }
		 
	 }
	 else
	 {
		 out.print("There is no history of absent and on duty..!!");
	 }

}
catch(Exception e)
{
	out.print(e);
}
%>

</body>
</html>