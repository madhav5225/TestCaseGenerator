<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<div>
<input placeholder="T_Test_cases" id="TestCasesForRandomNumbers" type="number">
<input placeholder="Min_value" id="MinValueForRandomNumbers" type="number">
<input placeholder="Max_value" id="MaxValueForRandomNumbers" type="number">
<button  onclick="GeneratorForRandomNumbers()">Generate Test Cases</button>

</div>
<br>
<div>
Number of Test-Cases<input placeholder="T_Test_cases" id="TestCasesForArray" type="number"><br>
Array Length<input placeholder="Array_Size" id="ArraySize" type="number"><br>
  
  Do you want distinct values of array
  <select id="DistinctValueForArray" >
    <option value="False">False</option>
    <option value="True">True</option>  
  </select><br>
  
  
 
Min Value<input placeholder="Min_value" id="MinValueForArray" type="number"><br>
Max Value<input placeholder="Max_value" id="MaxValueForArray" type="number"><br>
	
Do you want size of array to be written in input file
  <select id="SizeFlagForArray" >
    <option value="False">False</option>
    <option value="True">True</option>  
  </select><br>
  Do you want number of Test Cases to be written in input file
  <select id="TestCasesFlagForArray" >
    <option value="False">False</option>
    <option value="True">True</option>  
  </select><br>	
<button  onclick="GeneratorForArray()">Generate Test Cases</button>

</div>



<!-- For Pulling Data From Servlets  -->

<script>

function GeneratorForRandomNumbers()
{
	var TestCases=document.getElementById("TestCasesForRandomNumbers").value;
	var MinValue=document.getElementById("MinValueForRandomNumbers").value;
	var MaxValue=document.getElementById("MaxValueForRandomNumbers").value;
	
	
    req=new XMLHttpRequest();
    // Creating Request
	   req.open("GET","GeneratorForRandomNumbers?TestCases="+TestCases+
			   "&MinValue="+MinValue+
			   "&MaxValue="+MaxValue,
			   true);
	   req.send();
	   req.onreadystatechange=function(){
		   if(req.readyState==4&&req.status==200)
	          alert(req.responseText);
	   }
	}
function GeneratorForArray()
{
	var TestCases=document.getElementById("TestCasesForArray").value;
	var ArraySize=document.getElementById("ArraySize").value;
	var DistinctValue=document.getElementById("DistinctValueForArray").value;
	var MinValue=document.getElementById("MinValueForArray").value;
	var MaxValue=document.getElementById("MaxValueForArray").value;
	var SizeFlag=document.getElementById("SizeFlagForArray").value;
	var TestCasesFlag=document.getElementById("TestCasesFlagForArray").value;
	
	
    req=new XMLHttpRequest();
 // Creating Request
 
    req.open("GET","GeneratorForArray?TestCases="+TestCases+
    		"&ArraySize="+ArraySize+
    		"&DistinctValue="+DistinctValue+
    		"&MinValue="+MinValue+
    		"&MaxValue="+MaxValue+
    		"&SizeFlag="+SizeFlag+
    		"&TestCasesFlag=" +TestCasesFlag,
    		true);
	   req.send();
	   req.onreadystatechange=function(){
		   if(req.readyState==4&&req.status==200)
	          alert(req.responseText);
		   
	   }
	}	

</script>


</body>
</html>