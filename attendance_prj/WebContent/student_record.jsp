<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
      <%@ page import="java.math.*" %>
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
	String dept=request.getParameter("dept");
	String sec=request.getParameter("section");
	String year=request.getParameter("year");
	String rno=request.getParameter("roll_no");
	String sem=(String)session.getAttribute("sem");
	String table_name=(dept+"_"+year+"_"+sem+"_"+sec).toLowerCase();
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/"+db,"root","");
	Statement stmt=con.createStatement();
	Statement stmt1=con.createStatement();
	Statement stmt2=con.createStatement();
	ResultSet rs=null;
	ResultSet rs1=null;
	ResultSet rs2=null;
	String a="select name from "+table_name+" where roll_no='"+rno+"';";
	rs=stmt.executeQuery(a);
	 rs1=stmt1.executeQuery("select * from "+table_name);
	 int columnCount = rs1.getMetaData().getColumnCount();
	 double total=(columnCount-2);
	 double percent;
	while(rs.next())
	{
		String name=rs.getString("name");
		session.setAttribute("sname",name);
		String table=name.toLowerCase()+"_"+table_name.toLowerCase();
		DatabaseMetaData dbm = con.getMetaData();
		ResultSet tables = dbm.getTables(null, null, table, null);
		if(tables.next())
		{
			 String c="select count(distinct(absent)) as c from "+table;
			  rs2=stmt2.executeQuery(c);
			  while(rs2.next())
			  {
				  String count=rs2.getString("c");
				  int ab=Integer.parseInt(count); 
				  percent=((total-ab)/total)*100.0;	 
				  percent=Math.round(percent);
				  JOptionPane.showMessageDialog(null,"Your Attendance Percentage is "+percent+"%.");
				  response.sendRedirect("history.jsp");
				  
			  }
		}
		else
		{
			percent=100;
			JOptionPane.showMessageDialog(null,"Your Attendance Percentage is "+percent+"%.");
			response.sendRedirect("history.jsp");
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