<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<input placeholder="T_Test_cases" id="TestCases" type="number">
<input placeholder="Min_value" id="MinValue" type="number">
<input placeholder="Max_value" id="MaxValue" type="number">

<button  onclick="Data()">Generate Test Cases</button>
<!-- For Pulling Data From Servlets  -->

<script>

function Data()
{
	var TestCases=document.getElementById("TestCases").value;
	var MinValue=document.getElementById("MinValue").value;
	var MaxValue=document.getElementById("MaxValue").value;
	
	
    req=new XMLHttpRequest();
	   req.open("GET","GeneratorforRandomNumber?TestCases="+TestCases+"&MinValue="+MinValue+"&MaxValue="+MaxValue+"&MaxValue",true);
	   req.send();
	   req.onreadystatechange=function(){
		   if(req.readyState==4&&req.status==200)
	          alert(req.responseText);
	   }
	}

</script>


</body>
</html>


</body>
</html>
</body>
</html>