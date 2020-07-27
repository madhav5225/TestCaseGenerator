FB.api(
    "/{comment-id}",
    function (response) {
        if (response && !response.error) {

        }
    }
);

function  clear_Text() {
    document.getElementById("FinalData").value = "";
}

function saveTextAsFile() {
    var textToWrite = document.getElementById('FinalData').value;
    var textFileAsBlob = new Blob([ textToWrite ], { type: 'text/plain'});
    var fileNameToSaveAs = "testcase.txt";
    var downloadLink = document.createElement("a");

    downloadLink.download = fileNameToSaveAs;
    downloadLink.innerHTML = "Download File";

    if (window.webkitURL != null) {
        downloadLink.href = window.webkitURL.createObjectURL(textFileAsBlob);
    } else {
        downloadLink.href = window.URL.createObjectURL(textFileAsBlob);
        downloadLink.onclick = destroyClickedElement;
        downloadLink.style.display = "none";
        document.body.appendChild(downloadLink);
    }
    downloadLink.click();
}
function destroyClickedElement(event) {
    document.body.removeChild(event.target);
}
function CopyToClipboard() {
    var text = document.getElementById("FinalData");
    if(text.value.length>0){
        text.select();
        document.execCommand("copy");
    }
}
function generator_click() {
    var option = $("div.tab-content div.active div.in");
    var selected = option.data("function-name");
    switch (selected) {
        case "random_number":
            if (verify_input("random_number"))
                GeneratorForRandomNumbers();
            else {
                alert("Invalid Input!!!");
            }
            break;
        case "random_array":
            if (verify_input("random_array"))
                GeneratorForRandomArray();
            else {
                alert("Invalid Input!!!");
            }
            break;
        case "random_string":
            if (verify_input("random_string"))
                GeneratorForRandomString();
            else {
                alert("Invalid Input!!!");
            }
            break;
        case "random_unweighted_tree":
            if (verify_input("random_unweighted_tree"))
                GeneratorForUnTree();
            else {
                alert("Invalid Input!!!");
            }
            break;
        case "random_weighted_tree":
            if (verify_input("random_weighted_tree"))
                GeneratorForTree();
            else {
                alert("Invalid Input!!!");
            }
            break;
        case "random_unweighted_graph":
            if (verify_input("random_unweighted_graph"))
                GeneratorForUnGraph();
            else {
                alert("Invalid Input!!!");
            }
            break;
        case "random_weighted_graph":
            if (verify_input("random_weighted_graph"))
                GeneratorForGraph();
            else {
                alert("Invalid Input!!!");
            }
            break;
        default:
            // $('.alert').alert();
            alert("Please Select Valid Option!!!");
            break;
    }

}

function verify_input(selected) {

    if (selected ==="random_number"){
        var TestCases = document.getElementById("TestCasesForRandomNumbers").value;
        var MinValue = document.getElementById("MinValueForRandomNumbers").value;
        var MaxValue = document.getElementById("MaxValueForRandomNumbers").value;

        return TestCases > 0 && MinValue.length > 0 && MaxValue.length > 0 && MinValue<MaxValue;

    }

    if (selected ==="random_array"){
        var TestCases = document.getElementById("TestCasesForArray").value;
        var ArraySize = document.getElementById("ArraySize").value;
        var MinValue = document.getElementById("MinValueForArray").value;
        var MaxValue = document.getElementById("MaxValueForArray").value;

        return TestCases > 0 && ArraySize>0 && MinValue.length > 0 && MaxValue.length > 0 && MinValue<MaxValue;
    }

    if (selected ==="random_string"){
        var TestCases = document.getElementById("TestCasesForString").value;
        var StringSize = document.getElementById("StringSize").value;
        var NumberOfStringsPerT = document.getElementById("NumberOfStringsPerT").value;
        var StringChars = document.getElementById("StringChars").value;
        var StringExtraChars = document.getElementById("StringExtraChars").value;

        return TestCases>0 && StringSize>0 && NumberOfStringsPerT>0 && (( StringChars===0 && StringExtraChars>0) || StringChars!==0);
    }

    if (selected ==="random_unweighted_tree"){
        var TestCases = document.getElementById("TestCasesForUnTree").value;
        var UnTreeSize = document.getElementById("UnTreeSize").value;
        var IndexFrom = document.getElementById("IndexForUnTree").value;

        return TestCases>0 && UnTreeSize>0 && IndexFrom>0;
    }

    if (selected ==="random_weighted_tree"){
        var TestCases = document.getElementById("TestCasesForTree").value;
        var TreeSize = document.getElementById("TreeSize").value;
        var IndexFrom = document.getElementById("IndexForTree").value;
        var MinValue = document.getElementById("MinValueForTree").value;
        var MaxValue = document.getElementById("MaxValueForTree").value;

        return TestCases>0 && TreeSize>0 && IndexFrom>0 && MinValue.length>0 && MaxValue.length>0 && MinValue<MaxValue;
    }

    if (selected ==="random_unweighted_graph"){
        var TestCases = document.getElementById("TestCasesForUnGraph").value;
        var UnGraphSize = document.getElementById("UnGraphSize").value;
        var UnGraphEdges = document.getElementById("UngraphEdges").value;
        var IsDirected = document.getElementById("IsDirectedForUnGraph").value;
        var IndexFrom = document.getElementById("IndexForUnGraph").value;

        return TestCases>0 && UnGraphSize>0 && UnGraphEdges>0 && ((IsDirected===0 && UnGraphEdges<(UnGraphSize*(UnGraphSize-1)/2))||(IsDirected===1 && UnGraphEdges<UnGraphSize*(UnGraphSize-1))) && IndexFrom>0;

    }

    if (selected ==="random_weighted_graph"){
        var TestCases = document.getElementById("TestCasesForGraph").value;
        var GraphSize = document.getElementById("GraphSize").value;
        var GraphEdges = document.getElementById("graphEdges").value;
        var IndexFrom = document.getElementById("IndexForGraph").value;
        var IsDirected = document.getElementById("IsDirectedForGraph").value;
        var MinValue = document.getElementById("MinValueForGraph").value;
        var MaxValue = document.getElementById("MaxValueForGraph").value;

        return TestCases>0 && GraphSize>0 && GraphEdges>0 && ((IsDirected===0 && GraphEdges<(GraphSize*(GraphSize-1)/2))||(IsDirected===1 && GraphEdges<GraphSize*(GraphSize-1))) && IndexFrom>0 && MinValue.length>0 && MaxValue.length>0 && MinValue<MaxValue;
    }

    return false;

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
    req.onreadystatechange = function () {
        if (req.readyState == 4 && req.status == 200) {
            //alert(req.responseText);
            document.getElementById("FinalData").innerHTML = req.responseText;
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
        + "&DistinctValue=" + DistinctValue
        + "&MinValue=" + MinValue
        + "&MaxValue=" + MaxValue
        + "&SizeFlag=" + SizeFlag
        + "&TestCasesFlag=" + TestCasesFlag
        , true);
    req.send();
    req.onreadystatechange = function () {
        if (req.readyState == 4 && req.status == 200) {
            //alert("how are you");
            document.getElementById("FinalData").innerHTML = req.responseText;
        }

    }
}


function GeneratorForRandomString() {

    var TestCases = document.getElementById("TestCasesForString").value;
    var StringSize = document.getElementById("StringSize").value;
    var NumberOfStringsPerT = document.getElementById("NumberOfStringsPerT").value;
    var DistinctValue = document.getElementById("DistinctValueForString").value;
    var StringChars = document.getElementById("StringChars").value;
    var StringExtraChars = document.getElementById("StringExtraChars").value;
    var SizeFlag = document.getElementById("SizeFlagForString").value;
    var TestCasesFlag = document.getElementById("TestCasesFlagForString").value;

    var x = StringSize;
    if (DistinctValue == 1 && (StringChars == 1 || StringChars == 2) && x - 26 > StringExtraChars.length) {
        x = x - 26 - StringExtraChars.length;
        document.getElementById("error").style.display = "block";
        alert("please add " + x + " extra chars");
        document.getElementById("error_box").innerHTML = "please add " + x + " extra chars";
    } else if (DistinctValue == 1 && StringChars == 3 && x - 42 > StringExtraChars.length) {
        x = x - 42 - StringExtraChars.length;
        alert("please add " + x + " extra chars");
        document.getElementById("error").style.display = "block";
        document.getElementById("error_box").innerHTML = "please add " + x + " extra chars";
    } else if (DistinctValue == 1 && StringChars == 0 && StringExtraChars.length < StringSize) {
        x = x - StringExtraChars.length;
        document.getElementById("error").style.display = "block";
        document.getElementById("error_box").innerHTML = "please add " + x + " extra chars";
    } else {
        if (document.getElementById("error").style.display === "block") {
            document.getElementById("error").style.display = "none";
        }
        var StringExtraCharsEncoded = encodeURIComponent(StringExtraChars);
        req = new XMLHttpRequest();
        req.open("GET", "GeneratorForString?"
            + "TestCases=" + TestCases
            + "&StringSize=" + StringSize
            + "&NumberOfStringsPerT=" + NumberOfStringsPerT
            + "&DistinctValue=" + DistinctValue
            + "&StringChars=" + StringChars
            + "&StringExtraChars=" + StringExtraCharsEncoded
            + "&SizeFlag=" + SizeFlag
            + "&TestCasesFlag=" + TestCasesFlag
            , true);
        req.send();
        req.onreadystatechange = function () {
            if (req.readyState == 4 && req.status == 200) {
                //alert("how are you");
                document.getElementById("FinalData").innerHTML = req.responseText;
            }

        }
    }
}

function GeneratorForUnTree() {

    var TestCases = document.getElementById("TestCasesForUnTree").value;
    var UnTreeSize = document.getElementById("UnTreeSize").value;
    var IndexFrom = document.getElementById("IndexForUnTree").value;
    var SizeFlag = document.getElementById("SizeFlagForUnTree").value;
    var TestCasesFlag = document.getElementById("TestCasesFlagForUnTree").value;
    var IsWeighted = "False";
    req = new XMLHttpRequest();
    req.open("GET", "GeneratorForTree?"
        + "IsWeighted=" + IsWeighted
        + "&TestCases=" + TestCases
        + "&TreeSize=" + UnTreeSize
        + "&IndexFrom=" + IndexFrom
        + "&SizeFlag=" + SizeFlag
        + "&TestCasesFlag=" + TestCasesFlag
        , true);
    req.send();
    req.onreadystatechange = function () {
        if (req.readyState == 4 && req.status == 200) {
            //alert("how are you");
            document.getElementById("FinalData").innerHTML = req.responseText;
        }

    }
}

function GeneratorForTree() {

    var TestCases = document.getElementById("TestCasesForTree").value;
    var TreeSize = document.getElementById("TreeSize").value;
    var IndexFrom = document.getElementById("IndexForTree").value;
    var MinValue = document.getElementById("MinValueForTree").value;
    var MaxValue = document.getElementById("MaxValueForTree").value;
    var SizeFlag = document.getElementById("SizeFlagForTree").value;
    var TestCasesFlag = document.getElementById("TestCasesFlagForTree").value;
    var IsWeighted = "True";
    req = new XMLHttpRequest();
    req.open("GET", "GeneratorForTree?"
        + "IsWeighted=" + IsWeighted
        + "&TestCases=" + TestCases
        + "&TreeSize=" + TreeSize
        + "&IndexFrom=" + IndexFrom
        + "&MinValue=" + MinValue
        + "&MaxValue=" + MaxValue
        + "&SizeFlag=" + SizeFlag
        + "&TestCasesFlag=" + TestCasesFlag
        , true);
    req.send();
    req.onreadystatechange = function () {
        if (req.readyState == 4 && req.status == 200) {
            //alert("how are you");
            document.getElementById("FinalData").innerHTML = req.responseText;
        }

    }
}

//TestCasesForUnGraph
//UnGraphSize
//
//IndexForUnGraph
//UngraphEdges
//IsDirectedUnForGraph
//SizeFlagForUnGraph
//TestCasesFlagForUnGraph
//TestCasesForGraph
//GraphSize
//graphEdges
//IndexForGraph
//IsDirectedForGraph
//SizeFlagForGraph
//TestCasesFlagForGraph
//MaxValueForGraph
//MaxValueForGraph

function GeneratorForUnGraph() {

    var TestCases = document.getElementById("TestCasesForUnGraph").value;
    var UnGraphSize = document.getElementById("UnGraphSize").value;
    var UnGraphEdges = document.getElementById("UngraphEdges").value;
    var IndexFrom = document.getElementById("IndexForUnGraph").value;
    var IsDirected = document.getElementById("IsDirectedForUnGraph").value;
    var SizeFlag = document.getElementById("SizeFlagForUnGraph").value;
    var TestCasesFlag = document.getElementById("TestCasesFlagForUnGraph").value;
    var IsWeighted = "False";
    req = new XMLHttpRequest();
    req.open("GET", "GeneratorForGraph?"
        + "IsWeighted=" + IsWeighted
        + "&TestCases=" + TestCases
        + "&GraphSize=" + UnGraphSize
        + "&GraphEdges=" + UnGraphEdges
        + "&IndexFrom=" + IndexFrom
        + "&IsDirected=" + IsDirected
        + "&SizeFlag=" + SizeFlag
        + "&TestCasesFlag=" + TestCasesFlag
        , true);
    req.send();
    req.onreadystatechange = function () {
        if (req.readyState == 4 && req.status == 200) {
            //alert("how are you");
            document.getElementById("FinalData").innerHTML = req.responseText;
        }

    }
}

function GeneratorForGraph() {

    var TestCases = document.getElementById("TestCasesForGraph").value;
    var GraphSize = document.getElementById("GraphSize").value;
    var GraphEdges = document.getElementById("graphEdges").value;
    var IndexFrom = document.getElementById("IndexForGraph").value;
    var IsDirected = document.getElementById("IsDirectedForGraph").value;
    var MinValue = document.getElementById("MinValueForGraph").value;
    var MaxValue = document.getElementById("MaxValueForGraph").value;
    var SizeFlag = document.getElementById("SizeFlagForGraph").value;
    var TestCasesFlag = document.getElementById("TestCasesFlagForGraph").value;

    var IsWeighted = "True";
    req = new XMLHttpRequest();
    req.open("GET", "GeneratorForGraph?"
        + "IsWeighted=" + IsWeighted
        + "&TestCases=" + TestCases
        + "&GraphSize=" + GraphSize
        + "&GraphEdges=" + GraphEdges
        + "&IndexFrom=" + IndexFrom
        + "&MinValue=" + MinValue
        + "&MinValue=" + MaxValue
        + "&IsDirected=" + IsDirected
        + "&SizeFlag=" + SizeFlag
        + "&TestCasesFlag=" + TestCasesFlag
        , true);
    req.send();
    req.onreadystatechange = function () {
        if (req.readyState == 4 && req.status == 200) {
            //alert("how are you");
            document.getElementById("FinalData").innerHTML = req.responseText;
        }

    }
}