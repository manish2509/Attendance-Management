<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="java.math.*" %>
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

#p
{
position:absolute;
top:17px;
left:295px;
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
	String date=(String)session.getAttribute("d");
	 table_name=department+"_"+year+"_"+sem+"_"+section;
	 
	out.print("<table cellpadding='5' cellspacing='5'>");
	out.print("<tr><td>SNO</td><td>Name</td><td>Percentage</td</tr>");
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/"+db,"root","");
	Statement stmt=con.createStatement();
	Statement stmt1=con.createStatement();
	Statement stmt2=con.createStatement();
	Statement stmt3=con.createStatement();

	ResultSet rs=null;
	ResultSet rs1=null;
	ResultSet rs2=null;


	 rs=stmt.executeQuery("select * from "+table_name);
	 int columnCount = rs.getMetaData().getColumnCount();
	 double total=(columnCount-2);
	 String a="select roll_no,name from "+table_name;
	 rs=stmt.executeQuery(a);
	 double percent;
	 while(rs.next())
	 {
		 String rollno=rs.getString("roll_no");
		 String name=rs.getString("name");
		 String table=name.toLowerCase()+"_"+table_name.toLowerCase();
		 DatabaseMetaData dbm = con.getMetaData();
		 ResultSet tables = dbm.getTables(null, null, table, null);
		 if (tables.next())
		 {
						  String c="select count(distinct(absent)) as c from "+table;
						  rs2=stmt3.executeQuery(c);
						  while(rs2.next())
						  {
							  String count=rs2.getString("c");
							  int ab=Integer.parseInt(count); 
							  percent=((total-ab)/total)*100.0;	 
							  percent=Math.round(percent);
							  out.print("<form action='least.jsp' method='post'>");
							  out.print("<tr><td>"+rollno+"</td><td><input type='submit' value='"+name+"' name='sname'></td><td>"+percent+"</td></tr>");
							  out.print("</form>"); 
							
						  }
					 }
		 else
			 {
						  percent=100;
						  out.print("<form action='least.jsp' method='post'>");
						  out.print("<tr><td>"+rollno+"</td><td><input type='submit' value='"+name+"' name='sname'></td><td>"+percent+"</td></tr>");
						  out.print("</form>"); 
					
			}
		
	 }
	
	 
}
catch(Exception e)
{
	out.print(e);
}
%>

</body>
</html>