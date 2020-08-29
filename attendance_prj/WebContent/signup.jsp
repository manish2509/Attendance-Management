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
background-image:url(sign.jpg);
height: 650px; 
background-position: absolute;
background-repeat: no-repeat;
bacground-size:cover;
background-size: 100% 100%;
font-style:sans-serif;
}
#name
{
position:absolute;
top:130px;
left:680px;

}
#n
{
position:absolute;
top:130px;
left:510px;
}
#mail
{
position:absolute;
top:180px;
left:680px;
}
#e
{
position:absolute;
top:180px;
left:510px;
}
#phone
{
position:absolute;
top:240px;
left:680px;
}
#p
{
position:absolute;
top:240px;
left:510px;
}

#pass1
{
position:absolute;
top:300px;
left:680px;
}
#p1
{
position:absolute;
top:300px;
left:510px;
}
#pass2
{
position:absolute;
top:350px;
left:680px;
}
#p2
{
position:absolute;
top:350px;
left:510px;
}
#sub
{
position:absolute;
top:400px;
left:650px;
}
input[type=password]
{
width:200px;
border: 2px solid black;
border-radius:4px;
outline:none;
color:black;
}
input[type=text]
{
width:200px;
border: 2px solid black;
border-radius:4px;
outline:none;
color:black;
}
input[type=submit]
{
background-color:black;
color:white;
text-align:center;
border: 2px solid white;
border-radius:24px;
padding:5px 30px;
outline:none;
cursor:pointer;
}
input[type=text]:focus
 {
 border: 4px solid blue;
}
input[type=password]:focus
 {
 border: 4px solid blue;
}
</style>
<body>
<center><br>
<h1><font color="white"><B>SIGN UP FORM</B></h1><br>
<form  id="f" action="confirm.jsp" method="post"><br>
<font color="white"id="n">NAME:</font><input type="text" name="name" id="name"><br><br>
<font color="white" id="e">EMAIL ID:</font><input type="text" name="email" id="mail"><br><br>
<font color="white" id="p">PHONE NUMBER:</font><input type="text" name="phone" id="phone"><br><br>
<font color="white" id="p1">PASSWORD:</font><input type="password" name="pass" id="pass1"><br><br>
<font color="white" id="p2">CONFIRM PASSWORD:</font><input type="password" name="cpass" id="pass2"><br><br>
<input type="submit" value="SUBMIT" id="sub">
</center>
</form>
</body>
</html>