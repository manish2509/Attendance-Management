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
<body>
<%
String uname=request.getParameter("user2");
String pwd=request.getParameter("pass2");
if(uname==null||uname.length()==0||pwd==null||pwd.length()==0)
{
	JOptionPane.showMessageDialog(null,"Enter the required values!");
	response.sendRedirect("home.html");
}
else
{
	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/prj","root","");
		Statement stmt=con.createStatement();
		String str="select email_id,password from student where email_id='"+uname+"' and password='"+pwd+"'";
		ResultSet rs=stmt.executeQuery(str);
		if(rs.next())
		{
			String[] ac_yr=new String[200];
			int j=0;
			for(int i=2018;i<=2025;i++)
			{
				ac_yr[j]=i+"_"+(i+1);
				j++;
			}
			
			String year = (String) JOptionPane.showInputDialog(null,"List of academic years","Choose a academic year:" ,JOptionPane.QUESTION_MESSAGE, null, ac_yr, ac_yr[0]);
		              session.setAttribute("ac_yr",year);                                                                                                         
		  if(year==null)
			{
				response.sendRedirect("home.html");
			}
			else if(year.equals(" "))
			{
				JFrame f1;
				f1=new JFrame();  
				JOptionPane.showMessageDialog(f1,"Enter the year!","Alert",JOptionPane.WARNING_MESSAGE);
				response.sendRedirect("home.html");
			}
			else
			{
				response.sendRedirect("std_prf.jsp");
			}
		}
		else
		{
			JFrame f;
			f=new JFrame();  
			JOptionPane.showMessageDialog(f,"Invalid Data!","Alert",JOptionPane.WARNING_MESSAGE); 
			response.sendRedirect("home.html");
		}
	}
	catch(Exception e)
	{
		out.print(e);
		
	}
}
%>

</body>
</html>