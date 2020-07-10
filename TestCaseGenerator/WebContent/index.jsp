<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Test Case Generator</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <script src="Main.js"></script>
    <!-- <script>-->
    <!-- (function(i, s, o, g, r, a, m) {-->
    <!-- i['GoogleAnalyticsObject'] = r;-->
    <!-- i[r] = i[r] || function() {-->
    <!-- (i[r].q = i[r].q || []).push(arguments)-->
    <!-- }, i[r].l = 1 * new Date();-->
    <!-- a = s.createElement(o),-->
    <!-- m = s.getElementsByTagName(o)[0];-->
    <!-- a.async = 1;-->
    <!-- a.src = g;-->
    <!-- m.parentNode.insertBefore(a, m)-->
    <!-- })(window, document, 'script', 'https://www.google-analytics.com/analytics.js', 'ga');-->

    <!-- ga('create', 'UA-82298231-1', 'auto');-->
    <!-- ga('send', 'pageview');-->
    <!-- </script>-->
    <style type="text/css">
        body {
            padding-top: 50px;
            font-family: Overpass, -apple-system,
            BlinkMacSystemFont, "Segoe UI", Roboto, Oxygen,
            Ubuntu, Cantarell, "Open Sans", "Helvetica Neue",
            sans-serif;
        }
        input,
        select {
            font-family: monospace;
        }
        label {
            margin-top: 15px;
            padding-left: 5px
        }
        .panel-title > a:hover,
        a:link,
        a:visited,
        a:active {
            text-decoration: none;
        }

        .git_link:hover {
            color: black;
        }

        button {
            margin-top: 10px;
        }

        #data {
            resize: none;
            margin-top: 10px;
            margin-bottom: 10px;
        }

        #error {
            display: none;
            margin-top: 10px;
        }

        ul.share-buttons {
            list-style: none;
            padding: 0;
            position: fixed;
            top: 100px;
            border-top: 2px solid #e0e0e0;
            border-right: 2px solid #e0e0e0;
            border-bottom: 2px solid #e0e0e0;
            border-top-right-radius: 4px;
            border-bottom-right-radius: 4px;

        }

        ul.share-buttons li {
            padding: 6px;
        }

        ul.share-buttons li {
            display: block;
        }

        textarea {
            white-space: nowrap;
        }
    </style>
</head>
<body>

<div class="container">
    <div class="row">
        <div class="col-md-7">
            <div class="tabbable tabs-left">
                <!-- Nav tabs -->
                <ul class="nav nav-tabs tabs-left" role="tablist">

                    <li role="presentation" data-type="module" data-module-name="number" class=active>
                        <a aria-controls="home" data-toggle="tab" href="#number" role="tab">Number</a>
                    </li>

                    <li role="presentation" data-type="module" data-module-name="array">
                        <a aria-controls="home" data-toggle="tab" href="#array" role="tab">Array</a>
                    </li>

                    <li role="presentation" data-type="module" data-module-name="string">
                        <a aria-controls="home" data-toggle="tab" href="#string" role="tab">String</a>
                    </li>

                    <!-- <li role="presentation" data-type="module" data-module-name="tree" >-->
                    <!-- <a aria-controls="home" data-toggle="tab" href="#tree" role="tab">Tree</a>-->
                    <!-- </li>-->

                    <!-- <li role="presentation" data-type="module" data-module-name="graph" >-->
                    <!-- <a aria-controls="home" data-toggle="tab" href="#graph" role="tab">Graph</a>-->
                    <!-- </li>-->

                </ul>
                <div class="tab-content">

                    <div role="tabpanel" class="tab-pane active" id="number">
                        <div class="panel-group" id="accordion_number" role="tablist" aria-multiselectable="true">

                            <br>
                            <div class="panel panel-default">
                                <div class="panel-heading" role="tab" id="heading_number_random_number">
                                    <h4 class="panel-title">
                                        <a role="button" data-toggle="collapse" data-parent="#accordion_number"
                                           href="#number_random_number"
                                           aria-expanded="false" aria-controls="number_random_number"
                                           class="accordion-toggle">
                                            Random Number
                                        </a><span class="indicator glyphicon glyphicon-chevron-right pull-right"></span>
                                    </h4>
                                </div>
                                <div id="number_random_number" class="panel-collapse collapse" aria-expanded="false"
                                     role="tabpanel"
                                     aria-labelledby="#number_random_number" data-type="function"
                                     data-function-name="random_number">
                                    <div class="panel-body" id="holder">
                                        <div class="row">

                                            <div class="col-xs-6">

                                                <label>N Test Cases</label>
                                                <input type="text" class="form-control" id="TestCasesForRandomNumbers"
                                                       placeholder="n_test_cases"
                                                       data-type="param" data-param-name="n_test_cases">
                                            </div>

                                            <div class="col-xs-6">

                                                <label>Min Value</label>
                                                <input type="text" class="form-control" id="MinValueForRandomNumbers"
                                                       placeholder="min_value" data-type="param"
                                                       data-param-name="min_value">
                                            </div>

                                            <div class="col-xs-6">

                                                <label>Max Value</label>
                                                <input type="text" class="form-control" id="MaxValueForRandomNumbers"
                                                       placeholder="max_value" data-type="param"
                                                       data-param-name="max_value">
                                            </div>

                                            <div class="col-xs-6">

                                                <label>Include N Test Cases Flag</label>
                                                <select data-type="param" data-param-name="include_n_test_cases_flag"
                                                        id="TTestCaseFlagForRandomNumbers"
                                                        class="form-control">
                                                    <option value="0">False</option>
                                                    <option value="1">True</option>
                                                </select>
                                            </div>
                                            <div id="button_container" class="col-xs-6">
                                                <button type="button" id="buttonid"
                                                        class="btn btn-success btn-lg pull-left"
                                                        onclick="GeneratorForRandomNumbers()">
                                                    <div class="text">Generate</div>
                                                </button>
                                            </div>
                                        </div>

                                    </div>

                                </div>
                            </div>

                        </div>
                    </div>

                    <div role="tabpanel" class="tab-pane" id="array">
                        <div class="panel-group" id="accordion_array" role="tablist" aria-multiselectable="true">

                            <br>
                            <div class="panel panel-default">
                                <div class="panel-heading" role="tab" id="heading_array_random_array">
                                    <h4 class="panel-title">

                                        <a role="button" data-toggle="collapse" data-parent="#accordion_array"
                                           href="#array_random_array"
                                           aria-expanded="false" aria-controls="array_random_array"
                                           class="accordion-toggle">
                                            Random Array
                                        </a><span class="indicator glyphicon glyphicon-chevron-right pull-right"></span>
                                    </h4>
                                </div>
                                <div id="array_random_array" class="panel-collapse collapse" aria-expanded="false"
                                     role="tabpanel"
                                     aria-labelledby="#array_random_array" data-type="function"
                                     data-function-name="random_array">
                                    <div class="panel-body">
                                        <div class="row">

                                            <div class="col-xs-6">

                                                <label>N Test Cases</label>
                                                <input type="text" class="form-control" id="TestCasesForArray"
                                                       placeholder="n_test_cases" data-type="param"
                                                       data-param-name="n_test_cases">
                                            </div>

                                            <div class="col-xs-6">

                                                <label>Arr Size</label>
                                                <input type="text" class="form-control" id="ArraySize"
                                                       placeholder="arr_size" data-type="param"
                                                       data-param-name="arr_size">
                                            </div>

                                            <div class="col-xs-6">

                                                <label>Distinct Value Flag</label>
                                                <select data-type="param" data-param-name="distinct_value_flag"
                                                        id="DistinctValueForArray" class="form-control">
                                                    <option value="0">False</option>
                                                    <option value="1">True</option>
                                                </select>

                                            </div>

                                            <div class="col-xs-6">

                                                <label>Min Value</label>
                                                <input type="text" class="form-control" placeholder="min_value"
                                                       id="MinValueForArray" data-type="param"
                                                       data-param-name="min_value">
                                            </div>

                                            <div class="col-xs-6">

                                                <label>Max Value</label>
                                                <input type="text" class="form-control" placeholder="max_value"
                                                       id="MaxValueForArray" data-type="param"
                                                       data-param-name="max_value">
                                            </div>

                                            <div class="col-xs-6">

                                                <label>Include N Flag</label>
                                                <select data-type="param" data-param-name="include_n_flag"
                                                        id="SizeFlagForArray" class="form-control">
                                                    <option value="0">False</option>
                                                    <option value="1">True</option>
                                                </select>

                                            </div>

                                            <div class="col-xs-6">

                                                <label>Include N Test Cases Flag</label>
                                                <select data-type="param" data-param-name="include_n_test_cases_flag"
                                                        id="TestCasesFlagForArray"
                                                        class="form-control">
                                                    <option value="0">False</option>
                                                    <option value="1">True</option>
                                                </select>

                                            </div>

                                        </div>
                                        <div id="button_container" class="col-mr-2">
                                            <button type="button" id="buttonid" class="btn btn-success btn-lg pull-left"
                                                    onclick="GeneratorForRandomArray()">
                                                <div class="text">Generate</div>
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- <br>-->
                            <!-- <div class="panel panel-default">-->
                            <!-- <div class="panel-heading" role="tab" id="heading_array_random_array_pairs">-->
                            <!-- <h4 class="panel-title">-->

                            <!-- <a role="button" data-toggle="collapse" data-parent="#accordion_array" href="#array_random_array_pairs"
                            aria-expanded="false" aria-controls="array_random_array_pairs" class="accordion-toggle">-->
                            <!-- Random Array Pairs-->
                            <!-- </a><span class="indicator glyphicon glyphicon-chevron-right pull-right"></span>-->
                            <!-- </h4>-->
                            <!-- </div>-->
                            <!-- <div id="array_random_array_pairs" class="panel-collapse collapse" aria-expanded="false" role="tabpanel"
                            aria-labelledby="#array_random_array_pairs" data-type="function" data-function-name="random_array_pairs">-->
                            <!-- <div class="panel-body">-->
                            <!-- <div class="row">-->

                            <!-- <div class="col-xs-6">-->

                            <!-- <label>N Test Cases</label>-->
                            <!-- <input type="text" class="form-control" placeholder="n_test_cases" data-type="param"
                            data-param-name="n_test_cases">-->
                            <!-- </div>-->

                            <!-- <div class="col-xs-6">-->

                            <!-- <label>N Pairs</label>-->
                            <!-- <input type="text" class="form-control" placeholder="n_pairs" data-type="param"
                            data-param-name="n_pairs">-->
                            <!-- </div>-->

                            <!-- <div class="col-xs-6">-->

                            <!-- <label>Distinct Pairs Flag</label>-->
                            <!-- <select data-type="param" data-param-name="distinct_pairs_flag" class="form-control">-->
                            <!-- <option value="0">False</option>-->
                            <!-- <option value="1">True</option>-->
                            <!-- </select>-->

                            <!-- </div>-->

                            <!-- <div class="col-xs-6">-->

                            <!-- <label>Min First Value</label>-->
                            <!-- <input type="text" class="form-control" placeholder="min_first_value" data-type="param"
                            data-param-name="min_first_value">-->
                            <!-- </div>-->

                            <!-- <div class="col-xs-6">-->

                            <!-- <label>Max First Value</label>-->
                            <!-- <input type="text" class="form-control" placeholder="max_first_value" data-type="param"
                            data-param-name="max_first_value">-->
                            <!-- </div>-->

                            <!-- <div class="col-xs-6">-->

                            <!-- <label>Min Second Value</label>-->
                            <!-- <input type="text" class="form-control" placeholder="min_second_value" data-type="param"
                            data-param-name="min_second_value">-->
                            <!-- </div>-->

                            <!-- <div class="col-xs-6">-->

                            <!-- <label>Max Second Value</label>-->
                            <!-- <input type="text" class="form-control" placeholder="max_second_value" data-type="param"
                            data-param-name="max_second_value">-->
                            <!-- </div>-->

                            <!-- <div class="col-xs-6">-->

                            <!-- <label>A B Order</label>-->
                            <!-- <select data-type="param" data-param-name="a_b_order" class="form-control">-->
                            <!-- <option value="rand">Random</option>-->
                            <!-- <option value="inc">Increasing</option>-->
                            <!-- <option value="nondec">Non-Decreasing</option>-->
                            <!-- <option value="dec">Decreasing</option>-->
                            <!-- <option value="noninc">Non-Increasing</option>-->
                            <!-- </select>-->

                            <!-- </div>-->

                            <!-- <div class="col-xs-6">-->

                            <!-- <label>Include N Flag</label>-->
                            <!-- <select data-type="param" data-param-name="include_n_flag" class="form-control">-->
                            <!-- <option value="0">False</option>-->
                            <!-- <option value="1">True</option>-->
                            <!-- </select>-->

                            <!-- </div>-->

                            <!-- <div class="col-xs-6">-->

                            <!-- <label>Include N Test Cases Flag</label>-->
                            <!-- <select data-type="param" data-param-name="include_n_test_cases_flag" class="form-control">-->
                            <!-- <option value="0">False</option>-->
                            <!-- <option value="1">True</option>-->
                            <!-- </select>-->

                            <!-- </div>-->

                            <!-- </div>-->
                            <!-- </div>-->
                            <!-- </div>-->
                            <!-- </div>-->

                            <!-- <br>-->
                            <!-- <div class="panel panel-default">-->
                            <!-- <div class="panel-heading" role="tab" id="heading_array_random_matrix">-->
                            <!-- <h4 class="panel-title">-->

                            <!-- <a role="button" data-toggle="collapse" data-parent="#accordion_array" href="#array_random_matrix"
                            aria-expanded="false" aria-controls="array_random_matrix" class="accordion-toggle">-->
                            <!-- Random Matrix-->
                            <!-- </a><span class="indicator glyphicon glyphicon-chevron-right pull-right"></span>-->
                            <!-- </h4>-->
                            <!-- </div>-->
                            <!-- <div id="array_random_matrix" class="panel-collapse collapse" aria-expanded="false" role="tabpanel"
                            aria-labelledby="#array_random_matrix" data-type="function" data-function-name="random_matrix">-->
                            <!-- <div class="panel-body">-->
                            <!-- <div class="row">-->

                            <!-- <div class="col-xs-6">-->

                            <!-- <label>N Test Cases</label>-->
                            <!-- <input type="text" class="form-control" placeholder="n_test_cases" data-type="param"
                            data-param-name="n_test_cases">-->
                            <!-- </div>-->

                            <!-- <div class="col-xs-6">-->

                            <!-- <label>Num Rows</label>-->
                            <!-- <input type="text" class="form-control" placeholder="num_rows" data-type="param"
                            data-param-name="num_rows">-->
                            <!-- </div>-->

                            <!-- <div class="col-xs-6">-->

                            <!-- <label>Num Cols</label>-->
                            <!-- <input type="text" class="form-control" placeholder="num_cols" data-type="param"
                            data-param-name="num_cols">-->
                            <!-- </div>-->

                            <!-- <div class="col-xs-6">-->

                            <!-- <label>Min Value</label>-->
                            <!-- <input type="text" class="form-control" placeholder="min_value" data-type="param"
                            data-param-name="min_value">-->
                            <!-- </div>-->

                            <!-- <div class="col-xs-6">-->

                            <!-- <label>Max Value</label>-->
                            <!-- <input type="text" class="form-control" placeholder="max_value" data-type="param"
                            data-param-name="max_value">-->
                            <!-- </div>-->

                            <!-- <div class="col-xs-6">-->

                            <!-- <label>Distinct Flag</label>-->
                            <!-- <select data-type="param" data-param-name="distinct_flag" class="form-control">-->
                            <!-- <option value="0">False</option>-->
                            <!-- <option value="1">True</option>-->
                            <!-- </select>-->

                            <!-- </div>-->

                            <!-- <div class="col-xs-6">-->

                            <!-- <label>Include N M Flag</label>-->
                            <!-- <select data-type="param" data-param-name="include_n_m_flag" class="form-control">-->
                            <!-- <option value="0">False</option>-->
                            <!-- <option value="1">True</option>-->
                            <!-- </select>-->

                            <!-- </div>-->

                            <!-- </div>-->
                            <!-- </div>-->
                            <!-- </div>-->
                            <!-- </div>-->

                        </div>
                    </div>

                    <div role="tabpanel" class="tab-pane" id="string">
                        <div class="panel-group" id="accordion_string" role="tablist" aria-multiselectable="true">

                            <br>
                            <div class="panel panel-default">
                                <div class="panel-heading" role="tab" id="heading_string_random_string">
                                    <h4 class="panel-title">

                                        <a role="button" data-toggle="collapse" data-parent="#accordion_string"
                                           href="#string_random_string"
                                           aria-expanded="false" aria-controls="string_random_string"
                                           class="accordion-toggle">
                                            Random String
                                        </a><span class="indicator glyphicon glyphicon-chevron-right pull-right"></span>
                                    </h4>
                                </div>
                                <div id="string_random_string" class="panel-collapse collapse" aria-expanded="false"
                                     role="tabpanel"
                                     aria-labelledby="#string_random_string" data-type="function"
                                     data-function-name="random_string">
                                    <div class="panel-body">
                                        <div class="row">

                                            <div class="col-xs-6">
                                              
                                                <label>T Test Cases</label>
                                                <input id="TestCasesForString" type="text" class="form-control" placeholder="T_test_cases"
                                                       data-type="param"
                                                       data-param-name="n_test_cases">
                                            </div>

                                            <div class="col-xs-6">

                                                <label>String Length</label>
                                                <input id="StringSize" type="text" class="form-control" placeholder="str_size"
                                                       data-type="param" data-param-name="str_size">
                                            </div>

                                            <div class="col-xs-6">

                                                <label>No. of Strings per Test Case</label>
                                                <input id="NumberOfStringsPerT" type="text" class="form-control" placeholder="n_of_str"
                                                       data-type="param" data-param-name="str_size">
                                             </div>
                                           <div class="col-xs-6">
                                                <label>Distinct Char Flag</label>
                                                <select id="DistinctValueForString" data-type="param" data-param-name="distinct_char_flag"
                                                        class="form-control">
                                                    <option value="0">False</option>
                                                    <option value="1">True</option>
                                                </select>

                                            </div>

                                            <div class="col-xs-6">
                                                <div class="form-group">
                                                    <label for="self1">Chars</label>
                                                    <select id="StringChars" class="form-control" id="self1">
                                                         
                                                        <option value="1">A-Z</option>
                                                        <option value="2">a-z</option>
                                                        <option value="3">A-z,a-z</option>
                                                        <option value="0">Custom</option>
                                                    </select>
                                                </div>

                                            </div>

                                            <div class="col-xs-6">

                                                <label>Extra Chars</label>
                                                <input id="StringExtraChars" class="form-control" placeholder="extras" data-type="param"
                                                       type="text">

                                            </div>

                                            <div class="col-xs-6">

                                                <label>Include T Test Cases Flag</label>
                                                <select id="TestCasesFlagForString" data-type="param" data-param-name="include_T_test_cases_flag"
                                                        class="form-control">
                                                    <option value="0">False</option>
                                                    <option value="1">True</option>
                                                </select>

                                            </div>
                                                 <div class="col-xs-6">

                                                <label>Include N Size Flag</label>
                                                <select id="SizeFlagForString" data-type="param" data-param-name="include_n_size_flag"
                                                        class="form-control">
                                                    <option value="0">False</option>
                                                    <option value="1">True</option>
                                                </select>

                                            </div>
                                            <div id="button_container" class="col-xs-5">
                                                <button type="button" id="buttonid"
                                                onclick="GeneratorForRandomString()"
                                                        class="btn btn-success btn-lg pull-left">
                                                    <div class="text">Generate</div>
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <br>
                            <div class="panel panel-default">
                                <div class="panel-heading" role="tab" id="heading_string_random_char_matrix">
                                    <h4 class="panel-title">

                                        <a role="button" data-toggle="collapse" data-parent="#accordion_string"
                                           href="#string_random_char_matrix"
                                           aria-expanded="false" aria-controls="string_random_char_matrix"
                                           class="accordion-toggle">
                                            Random Char Matrix
                                        </a><span class="indicator glyphicon glyphicon-chevron-right pull-right"></span>
                                    </h4>
                                </div>
                                <div id="string_random_char_matrix" class="panel-collapse collapse"
                                     aria-expanded="false" role="tabpanel"
                                     aria-labelledby="#string_random_char_matrix" data-type="function"
                                     data-function-name="random_char_matrix">
                                    <div class="panel-body">
                                        <div class="row">

                                            <div class="col-xs-6">

                                                <label>N Test Cases</label>
                                                <input type="text" class="form-control" placeholder="n_test_cases"
                                                       data-type="param"
                                                       data-param-name="n_test_cases">
                                            </div>

                                            <div class="col-xs-6">

                                                <label>Num Rows</label>
                                                <input type="text" class="form-control" placeholder="num_rows"
                                                       data-type="param" data-param-name="num_rows">
                                            </div>

                                            <div class="col-xs-6">

                                                <label>Num Cols</label>
                                                <input type="text" class="form-control" placeholder="num_cols"
                                                       data-type="param" data-param-name="num_cols">
                                            </div>

                                            <div class="col-xs-6">

                                                <label>Chars</label>
                                                <input type="text" class="form-control" placeholder="chars"
                                                       data-type="param" data-param-name="chars">
                                            </div>

                                            <div class="col-xs-6">

                                                <label>Include N M Flag</label>
                                                <select data-type="param" data-param-name="include_n_m_flag"
                                                        class="form-control">
                                                    <option value="0">False</option>
                                                    <option value="1">True</option>
                                                </select>

                                            </div>

                                            <div class="col-xs-6">

                                                <label>Include N Test Cases Flag</label>
                                                <select data-type="param" data-param-name="include_n_test_cases_flag"
                                                        class="form-control">
                                                    <option value="0">False</option>
                                                    <option value="1">True</option>
                                                </select>

                                            </div>
                                            <div id="button_container" class="col-xs-6">
                                                <button type="button" id="buttonid"
                                                        class="btn btn-success btn-lg pull-left"
                                                        onclick="GeneratorForRandomNumbers()">
                                                    <div class="text">Generate</div>
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>

                    <!-- <div role="tabpanel" class="tab-pane" id="tree">-->
                    <!-- <div class="panel-group" id="accordion_tree" role="tablist" aria-multiselectable="true">-->

                    <!-- <br>-->
                    <!-- <div class="panel panel-default">-->
                    <!-- <div class="panel-heading" role="tab" id="heading_tree_random_unweighted_tree">-->
                    <!-- <h4 class="panel-title">-->

                    <!-- <a role="button" data-toggle="collapse" data-parent="#accordion_tree" href="#tree_random_unweighted_tree"
                    aria-expanded="false" aria-controls="tree_random_unweighted_tree" class="accordion-toggle">-->
                    <!-- Random Unweighted Tree-->
                    <!-- </a><span class="indicator glyphicon glyphicon-chevron-right pull-right"></span>-->
                    <!-- </h4>-->
                    <!-- </div>-->
                    <!-- <div id="tree_random_unweighted_tree" class="panel-collapse collapse" aria-expanded="false" role="tabpanel"
                    aria-labelledby="#tree_random_unweighted_tree" data-type="function"
                    data-function-name="random_unweighted_tree">-->
                    <!-- <div class="panel-body">-->
                    <!-- <div class="row">-->

                    <!-- <div class="col-xs-6">-->

                    <!-- <label>N Test Cases</label>-->
                    <!-- <input type="text" class="form-control" placeholder="n_test_cases" data-type="param"
                    data-param-name="n_test_cases">-->
                    <!-- </div>-->

                    <!-- <div class="col-xs-6">-->

                    <!-- <label>N Nodes</label>-->
                    <!-- <input type="text" class="form-control" placeholder="n_nodes" data-type="param"
                    data-param-name="n_nodes">-->
                    <!-- </div>-->

                    <!-- <div class="col-xs-6">-->

                    <!-- <label>Indexed From</label>-->
                    <!-- <input type="text" class="form-control" placeholder="indexed_from" data-type="param"
                    data-param-name="indexed_from">-->
                    <!-- </div>-->

                    <!-- <div class="col-xs-6">-->

                    <!-- <label>Include N Nodes Flag</label>-->
                    <!-- <select data-type="param" data-param-name="include_n_nodes_flag" class="form-control">-->
                    <!-- <option value="0">False</option>-->
                    <!-- <option value="1">True</option>-->
                    <!-- </select>-->

                    <!-- </div>-->

                    <!-- <div class="col-xs-6">-->

                    <!-- <label>Include N Test Cases Flag</label>-->
                    <!-- <select data-type="param" data-param-name="include_n_test_cases_flag" class="form-control">-->
                    <!-- <option value="0">False</option>-->
                    <!-- <option value="1">True</option>-->
                    <!-- </select>-->

                    <!-- </div>-->

                    <!-- </div>-->
                    <!-- </div>-->
                    <!-- </div>-->
                    <!-- </div>-->

                    <!-- <br>-->
                    <!-- <div class="panel panel-default">-->
                    <!-- <div class="panel-heading" role="tab" id="heading_tree_random_weighted_tree">-->
                    <!-- <h4 class="panel-title">-->

                    <!-- <a role="button" data-toggle="collapse" data-parent="#accordion_tree" href="#tree_random_weighted_tree"
                    aria-expanded="false" aria-controls="tree_random_weighted_tree" class="accordion-toggle">-->
                    <!-- Random Weighted Tree-->
                    <!-- </a><span class="indicator glyphicon glyphicon-chevron-right pull-right"></span>-->
                    <!-- </h4>-->
                    <!-- </div>-->
                    <!-- <div id="tree_random_weighted_tree" class="panel-collapse collapse" aria-expanded="false" role="tabpanel"
                    aria-labelledby="#tree_random_weighted_tree" data-type="function" data-function-name="random_weighted_tree">-->
                    <!-- <div class="panel-body">-->
                    <!-- <div class="row">-->

                    <!-- <div class="col-xs-6">-->

                    <!-- <label>N Test Cases</label>-->
                    <!-- <input type="text" class="form-control" placeholder="n_test_cases" data-type="param"
                    data-param-name="n_test_cases">-->
                    <!-- </div>-->

                    <!-- <div class="col-xs-6">-->

                    <!-- <label>N Nodes</label>-->
                    <!-- <input type="text" class="form-control" placeholder="n_nodes" data-type="param"
                    data-param-name="n_nodes">-->
                    <!-- </div>-->

                    <!-- <div class="col-xs-6">-->

                    <!-- <label>Indexed From</label>-->
                    <!-- <input type="text" class="form-control" placeholder="indexed_from" data-type="param"
                    data-param-name="indexed_from">-->
                    <!-- </div>-->

                    <!-- <div class="col-xs-6">-->

                    <!-- <label>Weight Min Value</label>-->
                    <!-- <input type="text" class="form-control" placeholder="weight_min_value" data-type="param"
                    data-param-name="weight_min_value">-->
                    <!-- </div>-->

                    <!-- <div class="col-xs-6">-->

                    <!-- <label>Weight Max Value</label>-->
                    <!-- <input type="text" class="form-control" placeholder="weight_max_value" data-type="param"
                    data-param-name="weight_max_value">-->
                    <!-- </div>-->

                    <!-- <div class="col-xs-6">-->

                    <!-- <label>Include N Nodes Flag</label>-->
                    <!-- <select data-type="param" data-param-name="include_n_nodes_flag" class="form-control">-->
                    <!-- <option value="0">False</option>-->
                    <!-- <option value="1">True</option>-->
                    <!-- </select>-->

                    <!-- </div>-->

                    <!-- <div class="col-xs-6">-->

                    <!-- <label>Include N Test Cases Flag</label>-->
                    <!-- <select data-type="param" data-param-name="include_n_test_cases_flag" class="form-control">-->
                    <!-- <option value="0">False</option>-->
                    <!-- <option value="1">True</option>-->
                    <!-- </select>-->

                    <!-- </div>-->

                    <!-- </div>-->
                    <!-- </div>-->
                    <!-- </div>-->
                    <!-- </div>-->

                    <!-- </div>-->
                    <!-- </div>-->

                    <!-- <div role="tabpanel" class="tab-pane" id="graph">-->
                    <!-- <div class="panel-group" id="accordion_graph" role="tablist" aria-multiselectable="true">-->

                    <!-- <br>-->
                    <!-- <div class="panel panel-default">-->
                    <!-- <div class="panel-heading" role="tab" id="heading_graph_random_unweighted_graph">-->
                    <!-- <h4 class="panel-title">-->

                    <!-- <a role="button" data-toggle="collapse" data-parent="#accordion_graph"
                    href="#graph_random_unweighted_graph" aria-expanded="false" aria-controls="graph_random_unweighted_graph"
                    class="accordion-toggle">-->
                    <!-- Random Unweighted Graph-->
                    <!-- </a><span class="indicator glyphicon glyphicon-chevron-right pull-right"></span>-->
                    <!-- </h4>-->
                    <!-- </div>-->
                    <!-- <div id="graph_random_unweighted_graph" class="panel-collapse collapse" aria-expanded="false"
                    role="tabpanel" aria-labelledby="#graph_random_unweighted_graph" data-type="function"
                    data-function-name="random_unweighted_graph">-->
                    <!-- <div class="panel-body">-->
                    <!-- <div class="row">-->

                    <!-- <div class="col-xs-6">-->

                    <!-- <label>N Test Cases</label>-->
                    <!-- <input type="text" class="form-control" placeholder="n_test_cases" data-type="param"
                    data-param-name="n_test_cases">-->
                    <!-- </div>-->

                    <!-- <div class="col-xs-6">-->

                    <!-- <label>N Nodes</label>-->
                    <!-- <input type="text" class="form-control" placeholder="n_nodes" data-type="param"
                    data-param-name="n_nodes">-->
                    <!-- </div>-->

                    <!-- <div class="col-xs-6">-->

                    <!-- <label>N Edges</label>-->
                    <!-- <input type="text" class="form-control" placeholder="n_edges" data-type="param"
                    data-param-name="n_edges">-->
                    <!-- </div>-->

                    <!-- <div class="col-xs-6">-->

                    <!-- <label>Indexed From</label>-->
                    <!-- <input type="text" class="form-control" placeholder="indexed_from" data-type="param"
                    data-param-name="indexed_from">-->
                    <!-- </div>-->

                    <!-- <div class="col-xs-6">-->

                    <!-- <label>Include N E Flag</label>-->
                    <!-- <select data-type="param" data-param-name="include_n_e_flag" class="form-control">-->
                    <!-- <option value="0">False</option>-->
                    <!-- <option value="1">True</option>-->
                    <!-- </select>-->

                    <!-- </div>-->

                    <!-- <div class="col-xs-6">-->

                    <!-- <label>Is Directed Flag</label>-->
                    <!-- <select data-type="param" data-param-name="is_directed_flag" class="form-control">-->
                    <!-- <option value="0">False</option>-->
                    <!-- <option value="1">True</option>-->
                    <!-- </select>-->

                    <!-- </div>-->

                    <!-- <div class="col-xs-6">-->

                    <!-- <label>Include N Test Cases Flag</label>-->
                    <!-- <select data-type="param" data-param-name="include_n_test_cases_flag" class="form-control">-->
                    <!-- <option value="0">False</option>-->
                    <!-- <option value="1">True</option>-->
                    <!-- </select>-->

                    <!-- </div>-->

                    <!-- </div>-->
                    <!-- </div>-->
                    <!-- </div>-->
                    <!-- </div>-->

                    <!-- <br>-->
                    <!-- <div class="panel panel-default">-->
                    <!-- <div class="panel-heading" role="tab" id="heading_graph_random_weighted_graph">-->
                    <!-- <h4 class="panel-title">-->

                    <!-- <a role="button" data-toggle="collapse" data-parent="#accordion_graph" href="#graph_random_weighted_graph"
                    aria-expanded="false" aria-controls="graph_random_weighted_graph" class="accordion-toggle">-->
                    <!-- Random Weighted Graph-->
                    <!-- </a><span class="indicator glyphicon glyphicon-chevron-right pull-right"></span>-->
                    <!-- </h4>-->
                    <!-- </div>-->
                    <!-- <div id="graph_random_weighted_graph" class="panel-collapse collapse" aria-expanded="false" role="tabpanel"
                    aria-labelledby="#graph_random_weighted_graph" data-type="function"
                    data-function-name="random_weighted_graph">-->
                    <!-- <div class="panel-body">-->
                    <!-- <div class="row">-->

                    <!-- <div class="col-xs-6">-->

                    <!-- <label>N Test Cases</label>-->
                    <!-- <input type="text" class="form-control" placeholder="n_test_cases" data-type="param"
                    data-param-name="n_test_cases">-->
                    <!-- </div>-->

                    <!-- <div class="col-xs-6">-->

                    <!-- <label>N Nodes</label>-->
                    <!-- <input type="text" class="form-control" placeholder="n_nodes" data-type="param"
                    data-param-name="n_nodes">-->
                    <!-- </div>-->

                    <!-- <div class="col-xs-6">-->

                    <!-- <label>N Edges</label>-->
                    <!-- <input type="text" class="form-control" placeholder="n_edges" data-type="param"
                    data-param-name="n_edges">-->
                    <!-- </div>-->

                    <!-- <div class="col-xs-6">-->

                    <!-- <label>Indexed From</label>-->
                    <!-- <input type="text" class="form-control" placeholder="indexed_from" data-type="param"
                    data-param-name="indexed_from">-->
                    <!-- </div>-->

                    <!-- <div class="col-xs-6">-->

                    <!-- <label>Weight Min Value</label>-->
                    <!-- <input type="text" class="form-control" placeholder="weight_min_value" data-type="param"
                    data-param-name="weight_min_value">-->
                    <!-- </div>-->

                    <!-- <div class="col-xs-6">-->

                    <!-- <label>Weight Max Value</label>-->
                    <!-- <input type="text" class="form-control" placeholder="weight_max_value" data-type="param"
                    data-param-name="weight_max_value">-->
                    <!-- </div>-->

                    <!-- <div class="col-xs-6">-->

                    <!-- <label>Include N E Flag</label>-->
                    <!-- <select data-type="param" data-param-name="include_n_e_flag" class="form-control">-->
                    <!-- <option value="0">False</option>-->
                    <!-- <option value="1">True</option>-->
                    <!-- </select>-->

                    <!-- </div>-->

                    <!-- <div class="col-xs-6">-->

                    <!-- <label>Is Directed Flag</label>-->
                    <!-- <select data-type="param" data-param-name="is_directed_flag" class="form-control">-->
                    <!-- <option value="0">False</option>-->
                    <!-- <option value="1">True</option>-->
                    <!-- </select>-->

                    <!-- </div>-->

                    <!-- <div class="col-xs-6">-->

                    <!-- <label>Include N Test Cases Flag</label>-->
                    <!-- <select data-type="param" data-param-name="include_n_test_cases_flag" class="form-control">-->
                    <!-- <option value="0">False</option>-->
                    <!-- <option value="1">True</option>-->
                    <!-- </select>-->

                    <!-- </div>-->

                    <!-- </div>-->
                    <!-- </div>-->
                    <!-- </div>-->
                    <!-- </div>-->

                    <!-- </div>-->
                    <!-- </div>-->

                </div>
                <!-- Tab panes -->
            </div>
        </div>
        <div class="col-md-5">
            <div>
                <div class="clearfix">
                    <div class="pull-right">
                        <button class="btn btn-primary pull-right" id="download_as_file"><span class="glyphicon
        glyphicon-download-alt"></span></button>
                    </div>
                </div>
                <textarea id="FinalData" class="form-control" cols="10" id="data" rows="15"
                          style="font-family:monospace"></textarea>

                <div class="alert alert-danger" id="error">
                    <p></p>
                </div>
                <button class="btn btn-warning" id="reset_textarea" type="reset">Reset</button>
            </div>
        </div>
    </div>
</div>
<div>
    <div class="container" style="padding-top: 50px">
        <div class="row text-center">
            <div class="col-sm-6 card">
                <img
                        src="https://avatars2.githubusercontent.com/u/46717453?s=460&u=138c750b0fa61c11aa1da19b2ab4cd64457e2323&v=4"
                        class="card-img-top" style="width: 10rem; height: auto; border-radius: 5px">
                <div class="card-body text-center">
                    <h5 class="card-title">Jatin Garg</h5>
                    <p class="card-text">Some quick </p>

                </div>
                <a href="https://www.github.com/jatin-773726">
                    <div class="card-footer text-muted git_link">
                        <i class="fa fa-github fa-align-center" style="font-size:24px"></i> <strong>Developer</strong>
                    </div>
                </a>
            </div>
            <div class="col-sm-6 card">
                <img
                        src="https://avatars3.githubusercontent.com/u/49210766?s=460&u=496f08c1e3f7e11b328b52c82490ed8d1300efd9&v=4"
                        class="card-img-top" style="width: 10rem; height: auto; border-radius: 5px">
                <div class="card-body center-block">
                    <h5 class="card-title">Madhav Agarwal</h5>
                    <p class="card-text">Some quick.</p>
                </div>
                <a href="https://www.github.com/madhav5225">
                    <div class="card-footer text-muted git_link">
                        <i class="fa fa-github" style="font-size:24px"></i> <strong>Developer</strong>
                    </div>
                </a>
            </div>
        </div>
    </div>
</div>

</body>
</html>
