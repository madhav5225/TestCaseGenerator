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




function GeneratorForRandomString() {

	var TestCases = document.getElementById("TestCasesForString").value;
	var StringSize = document.getElementById("StringSize").value;
	var NumberOfStringsPerT = document.getElementById("NumberOfStringsPerT").value;
	var DistinctValue = document.getElementById("DistinctValueForArray").value;
	var StringChars = document.getElementById("StringChars").value;
	var StringExtraChars= document.getElementById("StringExtraChars").value;
	var SizeFlag = document.getElementById("SizeFlagForString").value;
	var TestCasesFlag = document.getElementById("TestCasesFlagForString").value;
	
	
	req = new XMLHttpRequest();
	req.open("GET", "GeneratorForString?" 
		+ "TestCases=" + TestCases
		+ "&StringSize=" + StringSize
		+ "&NumberOfStringsPerT="+ NumberOfStringsPerT
		+ "&DistinctValue="+ DistinctValue
		+ "&StringChars=" + StringChars
		+ "&StringExtraChars="+ StringExtraChars
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

