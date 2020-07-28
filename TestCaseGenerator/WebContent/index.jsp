<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Test Case Generator</title>
    <link rel="icon" href="icon.svg" >
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-social/5.1.1/bootstrap-social.min.css">
    <script src="Main.js"></script>
    <script>
        (function (i, s, o, g, r, a, m) {
            i['GoogleAnalyticsObject'] = r;
            i[r] = i[r] || function () {
                (i[r].q = i[r].q || []).push(arguments)
            }, i[r].l = 1 * new Date();
            a = s.createElement(o),
                m = s.getElementsByTagName(o)[0];
            a.async = 1;
            a.src = g;
            m.parentNode.insertBefore(a, m)
        })(window, document, 'script', 'https://www.google-analytics.com/analytics.js', 'ga');
        ga('create', 'UA-82298231-1', 'auto');
        ga('send', 'pageview');
    </script>
    <div id="fb-root"></div>
    <script async defer crossorigin="anonymous"
            src="https://connect.facebook.net/en_GB/sdk.js#xfbml=1&version=v7.0"
            nonce="HH1fdzDp"></script>
    <style type="text/css">
        body {
            font-family: Overpass, -apple-system, BlinkMacSystemFont, "Segoe UI",
            Roboto, Oxygen, Ubuntu, Cantarell, "Open Sans", "Helvetica Neue",
            sans-serif;
        }

        a {
            color: black;
        }

        input, select {

            font-family: monospace;
        }

        label {
            margin-top: 15px;
            padding-left: 5px
        }

        .panel-title > a:hover, a:link, a:visited, a:active {
            text-decoration: none;
        }

        input, select {
            font-family: monospace;
        }

        label {
            margin-top: 15px;
            padding-left: 5px
        }

        .panel-title > a:hover, a:link, a:visited, a:active {
            text-decoration: none;
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
<nav class="navbar navbar-default navbar-fixed-top" style="background: #2c90ff">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle btn-lg" data-toggle="collapse" data-target="#myNavbar">
                <span class="glyphicon glyphicon-menu-hamburger"></span>
            </button>
            <a class="navbar-brand" style="color: #ffffff" href="#"><b>Generator Test Case</b></a>
        </div>
        <div class="collapse navbar-collapse" id="myNavbar">
            <ul class="nav navbar-nav navbar-right">
                <li><a class="btn btn-link"  href="https://github.com/madhav5225/TestCaseGenerator" target="_blank" style="color: #ffffff">
                    <span class="fa fa-github"></span> Github Repo
                    </a>
                </li>
                <li><a class="btn btn-link" data-toggle="modal" data-target="#comment"  style="color: #ffffff"><span class="fa fa-comments-o"></span> Comments</a></li>
                <li><a class="btn btn-link" data-toggle="modal" data-target="#developers" style="color: #ffffff"><span class="fa fa-user"></span> Developers</a></li>
            </ul>
        </div>
    </div>
</nav>

<div class="modal fade" id="developers" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title col-md-5" id="exampleModalLabel">Developers Info</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="container-fluid">
                            <div class="row text-center">
                                <div class="col-lg-6">
                                    <div class="card-header">
                                        <h4 class="card-title"><i>Jatin Garg</i></h4>
                                    </div>
                                    <div class="card-body">
                                        <h6>Motilal Nehru National Institute of Technology Allahabad</h6>
                                        <h6>Information Technology</h6>
                                    </div>
                                    <div class="card-footer">
                                    <a class="btn btn-social-icon btn-github" href="https://www.github.com/jatin-773762">
                                        <span class="fa fa-github"></span>
                                    </a>
                                    <a class="btn btn-social-icon btn-facebook" href="https://www.fb.com/jatin.manugarg">
                                        <span class="fa fa-facebook"></span>
                                    </a>
                                    <a class="btn btn-social-icon btn-linkedin" href="https://www.linkedin.com/in/jatingarg99">
                                        <span class="fa fa-linkedin"></span>
                                    </a>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="card-header">
                                        <h4 class="card-title"><i>Madhav Agarwal</i></h4>
                                    </div>
                                    <div class="card-body">
                                        <h6>Motilal Nehru National Institute of Technology Allahabad</h6>
                                        <h6>Information Technology</h6>
                                    </div>
                                    <div class="card-footer">
                                    <a class="btn btn-social-icon btn-github" href="https://www.github.com/madhav5225">
                                        <span class="fa fa-github"></span>
                                    </a>
                                    <a class="btn btn-social-icon btn-facebook" href="https://www.facebook.com/madhav.agrawal.1232">
                                        <span class="fa fa-facebook"></span>
                                    </a>
                                    <a class="btn btn-social-icon btn-linkedin" href="https://www.linkedin.com/in/madhav-agrawal-58b854171/">
                                        <span class="fa fa-linkedin"></span>
                                    </a>
                                    </div>
                                </div>
                            </div>
<!--                    <hr class="center-block">-->
                </div>

            </div>
            <div class="modal-footer">
                <!--                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>-->
                <!--                <button type="button" class="btn btn-primary">Save changes</button>-->
            </div>
        </div>
    </div>
</div>
<div class="container" style="margin-top: 80px">
    <div class="row">
        <div class="col-md-7">
            <div class="tabbable tabs-left">
                <!-- Nav tabs -->
                <ul class="nav nav-tabs tabs-left tabs" role="tablist">

                    <li role="presentation" data-type="module" class="active" data-id="number">
                        <a aria-controls="home" data-toggle="tab" href="#number" role="tab">Number</a>
                    </li>

                    <li role="presentation" data-type="module" data-id="array">
                        <a aria-controls="home" data-toggle="tab" href="#array" role="tab">Array</a>
                    </li>

                    <li role="presentation" data-type="module" data-id="string">
                        <a aria-controls="home" data-toggle="tab" href="#string" role="tab">String</a>
                    </li>

                    <li role="presentation" data-type="module" data-id="tree">
                        <a aria-controls="home" data-toggle="tab" href="#tree" role="tab">Tree</a>
                    </li>

                    <li role="presentation" data-type="module" data-id="graph">
                        <a aria-controls="home" data-toggle="tab" href="#graph" role="tab">Graph</a>
                    </li>

                </ul>

                <div class="tab-content">

                    <div role="tabpanel" class="tab-pane active" id="number">
                        <div class="panel-group" id="accordion_number" role="tablist"
                             aria-multiselectable="true">
                            <br>
                            <div class="panel panel-default">
                                <div class="panel-heading" role="tab"
                                     id="heading_number_random_number">
                                    <a role="button" data-toggle="collapse"
                                       data-parent="#accordion_number" href="#number_random_number"
                                       aria-expanded="false" aria-controls="number_random_number"
                                       class="accordion-toggle">
                                        <h4 class="panel-title">
                                            Random Number<span
                                                class="indicator glyphicon glyphicon-chevron-down pull-right"></span>
                                        </h4>
                                    </a>
                                </div>
                                <div id="number_random_number" class="panel-collapse collapse"
                                     aria-expanded="false" role="tabpanel"
                                     aria-labelledby="#number_random_number" data-type="function"
                                     data-function-name="random_number">
                                    <div class="panel-body" id="holder">
                                        <div class="row">
                                            <form action="#" onsubmit="generator_click()">
                                                <div class="col-xs-6">

                                                    <label>N Test Cases</label>
                                                    <input type="number" required="required" class="form-control"
                                                           id="TestCasesForRandomNumbers" placeholder="n_test_cases"
                                                           data-type="param" data-param-name="n_test_cases">
                                                </div>

                                                <div class="col-xs-6">

                                                    <label>Min Value</label>
                                                    <input type="number" required="required" class="form-control"
                                                           id="MinValueForRandomNumbers" placeholder="min_value"
                                                           data-type="param" data-param-name="min_value">
                                                </div>

                                                <div class="col-xs-6">

                                                    <label>Max Value</label> <input type="number"
                                                                                    required="required"
                                                                                    class="form-control"
                                                                                    id="MaxValueForRandomNumbers"
                                                                                    placeholder="max_value"
                                                                                    data-type="param"
                                                                                    data-param-name="max_value">
                                                </div>

                                                <div class="col-xs-6">

                                                    <label>Include N Test Cases Flag</label> <select
                                                        data-type="param"
                                                        data-param-name="include_n_test_cases_flag"
                                                        id="TTestCaseFlagForRandomNumbers" class="form-control">
                                                    <option value="0">False</option>
                                                    <option value="1">True</option>
                                                </select>
                                                </div>

                                            </form>
                                        </div>

                                    </div>

                                </div>
                            </div>

                        </div>
                    </div>

                    <div role="tabpanel" class="tab-pane" id="array">
                        <div class="panel-group" id="accordion_array" role="tablist"
                             aria-multiselectable="true">

                            <br>
                            <div class="panel panel-default">
                                <div class="panel-heading" role="tab"
                                     id="heading_array_random_array">
                                    <a role="button" data-toggle="collapse"
                                       data-parent="#accordion_array" href="#array_random_array"
                                       aria-expanded="false" aria-controls="array_random_array"
                                       class="accordion-toggle">
                                        <h4 class="panel-title">
                                            Random Array<span
                                                class="indicator glyphicon glyphicon-chevron-down pull-right"></span>
                                        </h4>
                                    </a>
                                </div>
                                <div id="array_random_array" class="panel-collapse collapse"
                                     aria-expanded="false" role="tabpanel"
                                     aria-labelledby="#array_random_array" data-type="function"
                                     data-function-name="random_array">
                                    <div class="panel-body">
                                        <div class="row">
                                            <form action="#" onsubmit="generator_click()">
                                                <div class="col-xs-6">
                                                    <label>N Test Cases</label> <input type="number"
                                                                                       required="required"
                                                                                       class="form-control"
                                                                                       id="TestCasesForArray"
                                                                                       placeholder="n_test_cases"
                                                                                       data-type="param"
                                                                                       data-param-name="n_test_cases">
                                                </div>
                                                <div class="col-xs-6">
                                                    <label>Arr Size</label> <input type="number"
                                                                                   required="required"
                                                                                   class="form-control" id="ArraySize"
                                                                                   placeholder="arr_size"
                                                                                   data-type="param"
                                                                                   data-param-name="arr_size">
                                                </div>
                                                <div class="col-xs-6">

                                                    <label>Distinct Value Flag</label> <select
                                                        data-type="param" data-param-name="distinct_value_flag"
                                                        id="DistinctValueForArray" class="form-control">
                                                    <option value="0">False</option>
                                                    <option value="1">True</option>
                                                </select>

                                                </div>

                                                <div class="col-xs-6">

                                                    <label>Min Value</label> <input type="number"
                                                                                    required="required"
                                                                                    class="form-control"
                                                                                    placeholder="min_value"
                                                                                    id="MinValueForArray"
                                                                                    data-type="param"
                                                                                    data-param-name="min_value">
                                                </div>

                                                <div class="col-xs-6">

                                                    <label>Max Value</label> <input type="number"
                                                                                    required="required"
                                                                                    class="form-control"
                                                                                    placeholder="max_value"
                                                                                    id="MaxValueForArray"
                                                                                    data-type="param"
                                                                                    data-param-name="max_value">
                                                </div>

                                                <div class="col-xs-6">

                                                    <label>Include N Flag</label> <select data-type="param"
                                                                                          data-param-name="include_n_flag"
                                                                                          id="SizeFlagForArray"
                                                                                          class="form-control">
                                                    <option value="0">False</option>
                                                    <option value="1">True</option>
                                                </select>

                                                </div>

                                                <div class="col-xs-6">

                                                    <label>Include N Test Cases Flag</label> <select
                                                        data-type="param"
                                                        data-param-name="include_n_test_cases_flag"
                                                        id="TestCasesFlagForArray" class="form-control">
                                                    <option value="0">False</option>
                                                    <option value="1">True</option>
                                                </select>

                                                </div>

                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>


                        </div>
                    </div>

                    <div role="tabpanel" class="tab-pane" id="string">
                        <div class="panel-group" id="accordion_string" role="tablist"
                             aria-multiselectable="true">
                            <br>
                            <div class="panel panel-default">
                                <div class="panel-heading" role="tab"
                                     id="heading_string_random_string">
                                    <a role="button" data-toggle="collapse"
                                       data-parent="#accordion_string" href="#string_random_string"
                                       aria-expanded="false" aria-controls="string_random_string"
                                       class="accordion-toggle">
                                        <h4 class="panel-title">
                                            Random String
                                            <span class="indicator glyphicon glyphicon-chevron-down pull-right"></span>
                                        </h4>
                                    </a>


                                </div>

                                <div id="string_random_string" class="panel-collapse collapse"
                                     aria-expanded="false" role="tabpanel"
                                     aria-labelledby="#string_random_string" data-type="function"
                                     data-function-name="random_string">
                                    <div class="panel-body">
                                        <div class="col">
                                            <form action="#" onsubmit="generator_click()">
                                                <div class="col-xs-6">
                                                    <label>T Test Cases</label> <input id="TestCasesForString"
                                                                                       required="required" type="number"
                                                                                       class="form-control"
                                                                                       placeholder="T_test_cases"
                                                                                       data-type="param"
                                                                                       data-param-name="n_test_cases">
                                                </div>
                                                <div class="col-xs-6">
                                                    <label>Include T Test Cases Flag</label> <select
                                                        id="TestCasesFlagForString" data-type="param"
                                                        data-param-name="include_T_test_cases_flag"
                                                        class="form-control">
                                                    <option value="0">False</option>
                                                    <option value="1">True</option>
                                                </select>

                                                </div>
                                                <div class="col-xs-6">
                                                    <label>String Length</label> <input id="StringSize"
                                                                                        required="required"
                                                                                        type="number"
                                                                                        class="form-control"
                                                                                        placeholder="str_size"
                                                                                        data-type="param"
                                                                                        data-param-name="str_size">
                                                </div>

                                                <div class="col-xs-6">
                                                    <label>No. of Strings per Test Case</label> <input
                                                        required="required" id="NumberOfStringsPerT" type="number"
                                                        class="form-control"
                                                        placeholder="n_of_str" data-type="param"
                                                        data-param-name="str_size">
                                                </div>

                                                <div class="col-xs-6">
                                                    <label>Distinct Char Flag</label> <select data-type="param"
                                                                                              id="DistinctValueForString"
                                                                                              class="form-control">
                                                    <option value="0">False</option>
                                                    <option value="1">True</option>
                                                </select>
                                                </div>

                                                <div class="col-xs-6">
                                                    <div class="form-group">
                                                        <label>Chars</label>
                                                        <select id="StringChars" data-type="param" class="form-control">
                                                            <option value="1">A-Z</option>
                                                            <option value="2">a-z</option>
                                                            <option value="3">A-z,a-z</option>
                                                            <option value="0">Custom</option>
                                                        </select>
                                                    </div>
                                                </div>

                                                <div class="col-xs-6">

                                                    <label>Extra Chars</label> <input id="StringExtraChars"
                                                                                      class="form-control"
                                                                                      placeholder="extras"
                                                                                      data-type="param" type="text">
                                                </div>
                                                <div class="col-xs-6">
                                                    <label>Include N Size Flag</label> <select
                                                        id="SizeFlagForString" data-type="param"
                                                        data-param-name="include_n_size_flag"
                                                        class="form-control">
                                                    <option value="0">False</option>
                                                    <option value="1">True</option>
                                                </select>
                                                </div>


                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div role="tabpanel" class="tab-pane" id="tree">
                        <div class="panel-group" id="accordion_tree" role="tablist"
                             aria-multiselectable="true">

                            <br>
                            <div class="panel panel-default">
                                <div class="panel-heading" role="tab"
                                     id="heading_tree_random_unweighted_tree">
                                    <a role="button" data-toggle="collapse"
                                       data-parent="#accordion_tree"
                                       href="#tree_random_unweighted_tree" aria-expanded="false"
                                       aria-controls="tree_random_unweighted_tree"
                                       class="accordion-toggle">
                                        <h4 class="panel-title">
                                            Random Unweighted Tree <span
                                                class="indicator glyphicon glyphicon-chevron-down pull-right"></span>
                                        </h4>
                                    </a>
                                </div>
                                <div id="tree_random_unweighted_tree"
                                     class="panel-collapse collapse" aria-expanded="false"
                                     role="tabpanel" aria-labelledby="#tree_random_unweighted_tree"
                                     data-type="function"
                                     data-function-name="random_unweighted_tree">
                                    <div class="panel-body">
                                        <div class="row">
                                            <form action="#" onsubmit="generator_click()">
                                                <div class="col-xs-6">

                                                    <label>T Test Cases</label> <input type="number"
                                                                                       required="required"
                                                                                       id="TestCasesForUnTree"
                                                                                       class="form-control"
                                                                                       placeholder="n_test_cases"
                                                                                       data-type="param"
                                                                                       data-param-name="n_test_cases">
                                                </div>

                                                <div class="col-xs-6">

                                                    <label>N Nodes</label> <input type="number" id="UnTreeSize"
                                                                                  required="required"
                                                                                  class="form-control"
                                                                                  placeholder="n_nodes"
                                                                                  data-type="param"
                                                                                  data-param-name="n_nodes">
                                                </div>

                                                <div class="col-xs-6">

                                                    <label>Indexed From</label> <input type="number"
                                                                                       required="required"
                                                                                       id="IndexForUnTree"
                                                                                       class="form-control"
                                                                                       placeholder="indexed_from"
                                                                                       data-type="param"
                                                                                       data-param-name="indexed_from">
                                                </div>

                                                <div class="col-xs-6">

                                                    <label>Include N Nodes Flag</label> <select
                                                        data-type="param" data-param-name="include_n_nodes_flag"
                                                        id="SizeFlagForUnTree" class="form-control">
                                                    <option value="0">False</option>
                                                    <option value="1">True</option>
                                                </select>

                                                </div>

                                                <div class="col-xs-6">

                                                    <label>Include T Test Cases Flag</label> <select
                                                        data-type="param" id="TestCasesFlagForUnTree"
                                                        data-param-name="include_n_test_cases_flag"
                                                        class="form-control">
                                                    <option value="0">False</option>
                                                    <option value="1">True</option>
                                                </select>

                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <br>
                            <div class="panel panel-default">
                                <div class="panel-heading" role="tab"
                                     id="heading_tree_random_weighted_tree">
                                    <a role="button" data-toggle="collapse"
                                       data-parent="#accordion_tree"
                                       href="#tree_random_weighted_tree" aria-expanded="false"
                                       aria-controls="tree_random_weighted_tree"
                                       class="accordion-toggle">
                                        <h4 class="panel-title">

                                            Random Weighted Tree<span
                                                class="indicator glyphicon glyphicon-chevron-down pull-right"></span>
                                        </h4>
                                    </a>
                                </div>
                                <div id="tree_random_weighted_tree"
                                     class="panel-collapse collapse" aria-expanded="false"
                                     role="tabpanel" aria-labelledby="#tree_random_weighted_tree"
                                     data-type="function" data-function-name="random_weighted_tree">
                                    <div class="panel-body">
                                        <div class="row">
                                            <form action="#" onsubmit="generator_click()">
                                                <div class="col-xs-6">

                                                    <label>N Test Cases</label> <input type="number"
                                                                                       required="required"
                                                                                       id="TestCasesForTree"
                                                                                       class="form-control"
                                                                                       placeholder="n_test_cases"
                                                                                       data-type="param"
                                                                                       data-param-name="n_test_cases">
                                                </div>

                                                <div class="col-xs-6">

                                                    <label>N Nodes</label> <input type="number" id="TreeSize"
                                                                                  required="required"
                                                                                  class="form-control"
                                                                                  placeholder="n_nodes"
                                                                                  data-type="param"
                                                                                  data-param-name="n_nodes">
                                                </div>

                                                <div class="col-xs-6">

                                                    <label>Indexed From</label> <input type="number"
                                                                                       required="required"
                                                                                       id="IndexForTree"
                                                                                       class="form-control"
                                                                                       placeholder="indexed_from"
                                                                                       data-type="param"
                                                                                       data-param-name="indexed_from">
                                                </div>

                                                <div class="col-xs-6">

                                                    <label>Weight Min Value</label> <input type="number"
                                                                                           required="required"
                                                                                           id="MinValueForTree"
                                                                                           class="form-control"
                                                                                           placeholder="weight_min_value"
                                                                                           data-type="param"
                                                                                           data-param-name="weight_min_value">
                                                </div>

                                                <div class="col-xs-6">

                                                    <label>Weight Max Value</label> <input type="number"
                                                                                           required="required"
                                                                                           id="MaxValueForTree"
                                                                                           class="form-control"
                                                                                           placeholder="weight_max_value"
                                                                                           data-type="param"
                                                                                           data-param-name="weight_max_value">
                                                </div>

                                                <div class="col-xs-6">

                                                    <label>Include N Nodes Flag</label> <select
                                                        id="SizeFlagForTree" data-type="param"
                                                        data-param-name="include_n_nodes_flag"
                                                        class="form-control">
                                                    <option value="0">False</option>
                                                    <option value="1">True</option>
                                                </select>

                                                </div>

                                                <div class="col-xs-6">

                                                    <label>Include T Test Cases Flag</label> <select
                                                        id="TestCasesFlagForTree" data-type="param"
                                                        data-param-name="include_n_test_cases_flag"
                                                        class="form-control">
                                                    <option value="0">False</option>
                                                    <option value="1">True</option>
                                                </select>

                                                </div>

                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>

                    <div role="tabpanel" class="tab-pane" id="graph">
                        <div class="panel-group" id="accordion_graph" role="tablist"
                             aria-multiselectable="true">

                            <br>
                            <div class="panel panel-default">
                                <div class="panel-heading" role="tab"
                                     id="heading_graph_random_unweighted_graph">
                                    <a role="button" data-toggle="collapse"
                                       data-parent="#accordion_graph"
                                       href="#graph_random_unweighted_graph" aria-expanded="false"
                                       aria-controls="graph_random_unweighted_graph"
                                       class="accordion-toggle">
                                        <h4 class="panel-title">

                                            Random Unweighted Simple Graph
                                            <span
                                                    class="indicator glyphicon glyphicon-chevron-down pull-right"></span>
                                        </h4>
                                    </a>
                                </div>
                                <div id="graph_random_unweighted_graph"
                                     class="panel-collapse collapse" aria-expanded="false"
                                     role="tabpanel"
                                     aria-labelledby="#graph_random_unweighted_graph"
                                     data-type="function"
                                     data-function-name="random_unweighted_graph">
                                    <div class="panel-body">
                                        <div class="row">
                                            <form action="#" onsubmit="generator_click()">
                                                <div class="col-xs-6">

                                                    <label>T Test Cases</label> <input type="number"
                                                                                       required="required"
                                                                                       id="TestCasesForUnGraph"
                                                                                       class="form-control"
                                                                                       placeholder="n_test_cases"
                                                                                       data-type="param"
                                                                                       data-param-name="n_test_cases">
                                                </div>

                                                <div class="col-xs-6">

                                                    <label>N Nodes</label> <input type="number" id="UnGraphSize"
                                                                                  required="required"
                                                                                  class="form-control"
                                                                                  placeholder="n_nodes"
                                                                                  data-type="param"
                                                                                  data-param-name="n_nodes">
                                                </div>


                                                <div class="col-xs-6">

                                                    <label>E Edges</label> <input type="number"
                                                                                  required="required" id="UngraphEdges"
                                                                                  class="form-control"
                                                                                  placeholder="n_edges"
                                                                                  data-type="param"
                                                                                  data-param-name="n_edges">
                                                </div>

                                                <div class="col-xs-6">

                                                    <label>Indexed From</label> <input type="number"
                                                                                       required="required"
                                                                                       id="IndexForUnGraph"
                                                                                       class="form-control"
                                                                                       placeholder="indexed_from"
                                                                                       data-type="param"
                                                                                       data-param-name="indexed_from">
                                                </div>

                                                <div class="col-xs-6">

                                                    <label>Include N Nodes and E Edges Flag</label> <select
                                                        data-type="param" id="SizeFlagForUnGraph"
                                                        data-param-name="include_n_e_flag" class="form-control">
                                                    <option value="0">False</option>
                                                    <option value="1">True</option>
                                                </select>

                                                </div>

                                                <div class="col-xs-6">

                                                    <label>Is Directed</label> <select data-type="param"
                                                                                       id="IsDirectedForUnGraph"
                                                                                       data-param-name="is_directed_flag"
                                                                                       class="form-control">
                                                    <option value="0">False</option>
                                                    <option value="1">True</option>
                                                </select>

                                                </div>

                                                <div class="col-xs-6">

                                                    <label>Include NT Test Cases Flag</label> <select
                                                        id="TestCasesFlagForUnGraph" data-type="param"
                                                        data-param-name="include_n_test_cases_flag"
                                                        class="form-control">
                                                    <option value="0">False</option>
                                                    <option value="1">True</option>
                                                </select>

                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <br>
                            <div class="panel panel-default">
                                <div class="panel-heading" role="tab"
                                     id="heading_graph_random_weighted_graph">

                                    <a role="button" data-toggle="collapse"
                                       data-parent="#accordion_graph"
                                       href="#graph_random_weighted_graph" aria-expanded="false"
                                       aria-controls="graph_random_weighted_graph"
                                       class="accordion-toggle">
                                        <h4 class="panel-title">

                                            Random Weighted Graph <span
                                                class="indicator glyphicon glyphicon-chevron-down pull-right"></span>
                                        </h4>
                                    </a>
                                </div>
                                <div id="graph_random_weighted_graph"
                                     class="panel-collapse collapse" aria-expanded="false"
                                     role="tabpanel" aria-labelledby="#graph_random_weighted_graph"
                                     data-type="function"
                                     data-function-name="random_weighted_graph">
                                    <div class="panel-body">
                                        <div class="row">
                                            <form action="#" onsubmit="generator_click()">
                                                <div class="col-xs-6">

                                                    <label>T Test Cases</label> <input type="number"
                                                                                       required="required"
                                                                                       id="TestCasesForGraph"
                                                                                       class="form-control"
                                                                                       placeholder="n_test_cases"
                                                                                       data-type="param"
                                                                                       data-param-name="n_test_cases">
                                                </div>

                                                <div class="col-xs-6">

                                                    <label>N Nodes</label> <input type="number" id="GraphSize"
                                                                                  required="required"
                                                                                  class="form-control"
                                                                                  placeholder="n_nodes"
                                                                                  data-type="param"
                                                                                  data-param-name="n_nodes">
                                                </div>

                                                <div class="col-xs-6">

                                                    <label>E Edges</label> <input type="number" id="graphEdges"
                                                                                  required="required"
                                                                                  class="form-control"
                                                                                  placeholder="n_edges"
                                                                                  data-type="param"
                                                                                  data-param-name="n_edges">
                                                </div>

                                                <div class="col-xs-6">

                                                    <label>Indexed From</label> <input type="number"
                                                                                       required="required"
                                                                                       id="IndexForGraph"
                                                                                       class="form-control"
                                                                                       placeholder="indexed_from"
                                                                                       data-type="param"
                                                                                       data-param-name="indexed_from">
                                                </div>

                                                <div class="col-xs-6">

                                                    <label>Weight Min Value</label> <input type="number"
                                                                                           required="required"
                                                                                           id="MinValueForGraph"
                                                                                           class="form-control"
                                                                                           placeholder="weight_min_value"
                                                                                           data-type="param"
                                                                                           data-param-name="weight_min_value">
                                                </div>

                                                <div class="col-xs-6">

                                                    <label>Weight Max Value</label> <input type="number"
                                                                                           required="required"
                                                                                           id="MaxValueForGraph"
                                                                                           class="form-control"
                                                                                           placeholder="weight_max_value"
                                                                                           data-type="param"
                                                                                           data-param-name="weight_max_value">
                                                </div>

                                                <div class="col-xs-6">

                                                    <label>Include N Nodes and E Edges Flag</label> <select
                                                        data-type="param" id="SizeFlagForGraph"
                                                        data-param-name="include_n_e_flag" class="form-control">
                                                    <option value="0">False</option>
                                                    <option value="1">True</option>
                                                </select>

                                                </div>

                                                <div class="col-xs-6">

                                                    <label>Is Directed Flag</label> <select data-type="param"
                                                                                            id="IsDirectedForGraph"
                                                                                            data-param-name="is_directed_flag"
                                                                                            class="form-control">
                                                    <option value="0">False</option>
                                                    <option value="1">True</option>
                                                </select>

                                                </div>

                                                <div class="col-xs-6">

                                                    <label>Include T Test Cases Flag</label> <select
                                                        id="TestCasesFlagForGraph" data-type="param"
                                                        data-param-name="include_n_test_cases_flag"
                                                        class="form-control">
                                                    <option value="0">False</option>
                                                    <option value="1">True</option>
                                                </select>

                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>

                </div>

            </div>

        </div>

        <div class="col-md-5">

            <div>
                <button class="btn btn-light pull-right" style="margin-bottom: 10px" onclick="CopyToClipboard()">Copy
                </button>
                <br>
                <textarea id="FinalData" class="form-control" cols="10" id="data" rows="15"
                          style="font-family: monospace"></textarea>

                <div>
                    <button class="btn btn-success pull-left col-md-5" type="submit" onclick="generator_click()">
                        Generate
                    </button>
                    <div class="pull-left col-md-5">
                        <button class="btn btn-primary pull-right" id="download_as_file" title="Download"
                                onclick="saveTextAsFile()">
                            <span class="glyphicon glyphicon-download-alt"></span>
                        </button>
                    </div>
                    <button class="btn btn-warning pull-right" id="reset_textarea" value="Clear" onclick="clear_Text()">
                        Reset
                    </button>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="comment" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title col-md-5" >Comments</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="container-fluid">
<!--                    <i class="fa fa-spinner fa-spin" style="font-size:24px"></i>-->
                    <div class="fb-comments"
                         data-href="https://generatetestcase.herokuapp.com/"
                         data-numposts="5" data-width="auto">
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
</body>
</html>
