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
margin:0;
}

.topnav {
  overflow: hidden;
  background-color: black;
  color:white;
}

.topnav a {
  float: left;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: gray;
  color: white;
}

.topnav a.active {
  background-color: blue;
  color: white;
}
.topnav-right
{
float:right;
}
</style>
<body>
<div  class="topnav" id="mydiv">
<a class="a active" href="entry_prf.jsp" target="student">STUDENT ENTRY</a>
<a class="a" href="list.jsp" target="student">STUDENT LIST</a>
<a class="a" href="attend_entry.jsp" target="student">ATTENDANCE ENTRY</a>
<a class="a" href="least_attend.jsp" target="student">LEAST ATTENDANCE</a>
<div class="topnav-right">
<a class="a" href="home.html" target="home"><u>logout</u></a>
</div>
</div>
<script>
// Add active class to the current button (highlight it)
var header = document.getElementById("mydiv");
var link = header.getElementsByClassName("a");
for (var i = 0; i < link.length; i++) {
  link[i].addEventListener("click", function() {
  var current = document.getElementsByClassName("active");
  current[0].className = current[0].className.replace(" active", "");
  this.className += " active";
  });
}
</script>
</body>
</html>