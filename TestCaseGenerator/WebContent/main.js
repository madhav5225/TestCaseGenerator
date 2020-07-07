function GeneratorForRandomNumbers() {
	var TestCases = document
		.getElementById("TestCasesForRandomNumbers").value;
	var MinValue = document.getElementById("MinValueForRandomNumbers").value;
	var MaxValue = document.getElementById("MaxValueForRandomNumbers").value;

	req = new XMLHttpRequest();
	// Creating Request
	req.open("GET", "GeneratorForRandomNumbers?TestCases=" + TestCases
		+ "&MinValue=" + MinValue + "&MaxValue=" + MaxValue, true);
	req.send();
	req.onreadystatechange = function() {
		if (req.readyState == 4 && req.status == 200)
			alert(req.responseText);
	}
}
function GeneratorForArray() {
	var TestCases = document.getElementById("TestCasesForArray").value;
	var ArraySize = document.getElementById("ArraySize").value;
	var DistinctValue = document
		.getElementById("DistinctValueForArray").value;
	var MinValue = document.getElementById("MinValueForArray").value;
	var MaxValue = document.getElementById("MaxValueForArray").value;
	var SizeFlag = document.getElementById("SizeFlagForArray").value;
	var TestCasesFlag = document
		.getElementById("TestCasesFlagForArray").value;

	req = new XMLHttpRequest();
	// Creating Request

	req.open("GET", "GeneratorForArray?TestCases=" + TestCases
		+ "&ArraySize=" + ArraySize + "&DistinctValue="
		+ DistinctValue + "&MinValue=" + MinValue + "&MaxValue="
		+ MaxValue + "&SizeFlag=" + SizeFlag + "&TestCasesFlag="
		+ TestCasesFlag, true);
	req.send();
	req.onreadystatechange = function() {
		if (req.readyState == 4 && req.status == 200)
			alert(req.responseText);

	}
}

$('#buttonid').click(function(){
	
})