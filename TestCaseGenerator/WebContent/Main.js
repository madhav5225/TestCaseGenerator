function FunctionSelector(x) {
	
	if(x==1)
	{
	GeneratorForRandomNumbers();
	}
	
}

function GeneratorForRandomNumbers() {

	
	var TestCases = document.getElementById("TestCasesForRandomNumbers").value;
	var MinValue = document.getElementById("MinValueForRandomNumbers").value;
	var MaxValue = document.getElementById("MaxValueForRandomNumbers").value;
	var TestCaseFlag = document.getElementById("TTestCaseFlagForRandomNumbers").value;
	
	var x="";
	document.getElementById("FinalData").innerHTML=x;
	req = new XMLHttpRequest();
	// Creating Request
	req.open("GET", "GeneratorForRandomNumbers?" +
			"TestCases=" + TestCases
		+ "&MinValue=" + MinValue 
		+ "&MaxValue=" + MaxValue
		+ "&TestCaseFlag=" + TestCaseFlag
		, true);
	req.send();
	req.onreadystatechange = function() {
		if (req.readyState == 4 && req.status == 200)
			{
			//alert(req.responseText);
			document.getElementById("FinalData").innerHTML=req.responseText;
			}
	}
}

function GeneratorForRandomArray() {
	
	var TestCases = document.getElementById("TestCasesForArray").value;
	var ArraySize = document.getElementById("ArraySize").value;
	var DistinctValue = document.getElementById("DistinctValueForArray").value;
	var MinValue = document.getElementById("MinValueForArray").value;
	var MaxValue = document.getElementById("MaxValueForArray").value;
	var SizeFlag = document.getElementById("SizeFlagForArray").value;
	var TestCasesFlag = document.getElementById("TestCasesFlagForArray").value;

	req = new XMLHttpRequest();
	// Creating Request

	req.open("GET", "GeneratorForArray?" 
		+ "TestCases=" + TestCases
		+ "&ArraySize=" + ArraySize
		+ "&DistinctValue="+ DistinctValue
		+ "&MinValue=" + MinValue
		+ "&MaxValue="+ MaxValue
		+ "&SizeFlag=" + SizeFlag
		+ "&TestCasesFlag="+ TestCasesFlag
		, true);
	req.send();
	req.onreadystatechange = function() {
		if (req.readyState == 4 && req.status == 200)
		{
			//alert("how are you");
			document.getElementById("FinalData").innerHTML=req.responseText;
			}

	}
}