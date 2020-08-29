<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
input[type=text]
{
width:200px;
border:2px solid black ;
outline:none;
color:black;
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
#rno
{
position:absolute;
top:60px;
left:130px;
}
#na
{
position:absolute;
top:110px;
left:130px;
}
#back
{
position:absolute;
top:170px;
left:140px;
}
</style>
<body>

<form action="udata.jsp" method="post"><br><br><br>
ROLL NO:<input type="text" id="rno" name="rno"><br><br><br>
NAME:<input type="text" id="na" name="sname"><br><br><br>
<input type="submit" value="UPDATE" id="sub">
</form>
<form action="entry_prf.jsp" method="post">
<input type="submit" value="BACK" id="back">
</form>

</body>
</html>