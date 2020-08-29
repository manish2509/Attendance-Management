<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<font color="white">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body
{
font-family:sans-serif;
}
ul {
  list-style-type: none;
  margin:0;
  padding:0;
  width: 200px;
  background-color: black;
  position: fixed;
  height: 100%;
  overflow:auto;
}

li a {
  display: block;
  color: white;
  padding: 18px 16px;
  text-decoration: none;
}


.active
{
background-color:blue;
color:white;
}
a:hover
{
background-color:gray;
color:white;
}
</style>
</head>
<body>
<div id="myDIV">
<ul>
<li><a class="a active" href="year2.jsp?value=auto" target="yr" >AUTOMOBILE</a></li>
<li><a class="a" href="year2.jsp?value=civil" target="yr" >CIVIL</a></li>
<li><a class="a" href="year2.jsp?value=cse" target="yr">COMPUTER SCIENCE</a></li>
<li><a class="a" href="year2.jsp?value=ece" target="yr">ELECTRICAL AND COMMUNICATION</a></li>
<li><a class="a" href="year2.jsp?value=eee" target="yr">ELECTRICAL AND ELECTRONICS</a></li>
<li><a class="a" href="year2.jsp?value=eie" target="yr">ELECTRICAL AND INSTRUMENTAL</a></li>
<li><a class="a" href="year2.jsp?value=it" target="yr">INFORMATION TECHNOLOGY</a></li>
<li><a class="a" href="year2.jsp?value=mech" target="yr">MECHANICAL</a></li>
<li><a class="a" href="year1.jsp?value=mba" target="yr">MASTERS OF BUSINESS ADMINISTRATION</a></li>
</ul>
</div>
<script>
// Add active class to the current button (highlight it)
var header = document.getElementById("myDIV");
var alink = header.getElementsByClassName("a");
for (var i = 0; i < alink.length; i++) {
  alink[i].addEventListener("click", function() {
  var current = document.getElementsByClassName("active");
  current[0].className = current[0].className.replace(" active", "");
  this.className += " active";
  });
}
</script>

</body>
</html>