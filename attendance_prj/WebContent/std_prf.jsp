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
background-image:url(stbg.jpg);
height:700px; 
background-position: absolute;
background-repeat: no-repeat;
bacground-size:cover;
background-size: 100% 100%;
font-family:sans-serif;
}
#d
{
border:2px solid black;
text-align:center;
padding:4px 20px;
positiion:absolute;
top:50px;
left:500px;
}
#y
{
border:2px solid black;
text-align:center;
padding:4px 20px;
position:absolute;
top:120px;
left:505px;
}
#se
{
border:2px solid black;
text-align:center;
padding:4px 20px;
position:absolute;
top:180px;
left:505px;

}
#s
{
border:2px solid black;
text-align:center;
padding:4px 20px;
position:absolute;
top:240px;
left:505px;
}
#r
{
border:2px solid black;
padding:4px 15px;
position:absolute;
top:300px;
left:505px;
}
#pd
{
position:absolute;
top:50px;
left:370px;
}
#py
{
position:absolute;
top:110px;
left:370px;
}
#pse
{
position:absolute;
top:170px;
left:370px;
}
#ps
{
position:absolute;
top:230px;
left:370px;
}
#pr
{
position:absolute;
top:290px;
left:370px;
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
  position:absolute;
  top:350px;
  left:510px;
}

</style>
<body>
<center>
<form action="student_record.jsp" method="post">
<br><br><br>
<p id="pd">DEPARTMENT:</p><select name="dept" id="d">
<option value="dept">DEPARTMENT</option>
<option value="automobile">AUTOMOBILE</option>
<option value="civil">CIVIL</option>
<option value="cse">COMPUTER SCIENCE</option>
<option value="ece">ELECTRICAL AND COMMUNICATION</option>
<option value="eee">ELECTRICAL AND ELECTRONICS</option>
<option value="eie">ELECTRICAL AND INSTRUMENTAL</option>
<option value="it">INFORMATON TECHNOLOGY</option>
<option value="mech">MECHANICAL</option>
<option value="mba">MASTERS OF BUSINESS ADMINSTRATION</option> 
</select>
<br><br><br>
<p id="py">YEAR:</p><select name="year" id="y">
<option value="Year of study">YEAR OF STUDY</option>
<option value="I">I</option>
<option value="II">II</option>
<option value="III">III</option>
<option value="IV">IV</option>
</select>
<br><br><br> 
<p id="pse">SEMESTER:</p><select name="sem" id="se">
<option value="Year of study">SEMESTER</option>
<option value="I">I</option>
<option value="II">II</option>
<option value="III">III</option>
<option value="IV">IV</option>
<option value="V">V</option>
<option value="VI">VI</option>
<option value="VII">VII</option>
<option value="VIII">VIII</option>
</select>
<br><br><br> 
<p id="ps">SECTION:</p><select name="section" id="s">
<option value="section">SECTION</option>
<option value="A">A</option>
<option value="B">B</option>
<option value="C">C</option>
<option value="D">D</option>
</select>
<p id="pr">ROLL NO:</p><input type="text" name="roll_no" id="r">
<input type="submit" value="GET DETAILS">
</form>
</center>
</body>
</html>