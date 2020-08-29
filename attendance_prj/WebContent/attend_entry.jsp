<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="javax.swing.*" %>
   
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
#t
{
width:400px;
height:50px;
}
input[type=text]
{
border:2px solid black ;
background-color:white;
color:black;
text-align:center;
}
input[type=submit]
{
  background-color: black; 
  border: 2px solid blue;
  border-radius:16px;
  outline:none;
  color: white;
  padding: 15px 30px;
  text-align: center;
  text-decoration: none;
  cursor:pointer;
}

#sub1
{
position:absolute;
top:430px;
left:10px;
}
#s1
{
border:2px solid black;
background-color:white;
color:black;
position:absolute;
padding:5px 30px;
}
#d
{
border:2px solid black;
position:absolute;
top:20px;
left:900px;
}
#pid
{
position:absolute;
top:8px;
left:790px;
}
#m
{
position:absolute;
top:30px;
left:570px;
}
</style>
<body>

<form action="attendance.jsp" method="post"><br><br>
<p id="pid">Enter the date:</p><input type="text" name="date" id="d">
<p id="m">***if you have skipped the attendance entry day wise enter the data(dd_mm_yy) here!!***</p>
Select the session:
<br><br>
<select name="session" id="s1">
<option value="SESSION">SESSION</option>
<option value="AM">MORNING</option>
<option value="PM">AFTERNOON</option>
</select>
<br><br><br> 
Enter the absentee's register number:<br><br>
<input type="text" name="rnos" id="t">
<br><br><br> 
Enter the on duty's register number:<br><br>
<input type="text" name="ornos" id="t"><input type="submit" id="sub1" value="ENTER">
<br><br><p>***enter the register numbers separated by comma!!***</p>
</form>

</body>
</html>