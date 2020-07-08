<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>Generate Your Test Case here!!!</title>
<script src="Main.js"></script>
<style type="text/css">
body {
	padding-top: 5px;
	font-family: Overpass, -apple-system, BlinkMacSystemFont, "Segoe UI",
		Roboto, Oxygen, Ubuntu, Cantarell, "Open Sans", "Helvetica Neue",
		sans-serif;
}

.monospace {
	font-family: monospace;
}

input, select {
	font-family: monospace;
}

label {
	margin-top: 15px;
	padding-left: 5px
}

.panel-title>a:hover, a:link, a:visited, a:active {
	text-decoration: none;
}

#data {
	resize: none;
	margin-top: 10px;
	margin-bottom: 10px;
}

#error {
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
</style>
</head>
<body>


	<div class="container">
		<div class="row">
			<div class="col-md-7">
				<div class="tabbable tabs-left">
					<!-- Nav tabs -->
					<ul class="nav nav-tabs tabs-left" role="tablist">

						<li role="presentation" data-type="module"
							data-module-name="number" class=active><a
							aria-controls="home" data-toggle="tab" href="#number" role="tab">Number</a>
						</li>

						<li role="presentation" data-type="module"
							data-module-name="array"><a aria-controls="home"
							data-toggle="tab" href="#array" role="tab">Array</a></li>

						<li role="presentation" data-type="module"
							data-module-name="string"><a aria-controls="home"
							data-toggle="tab" href="#string" role="tab">String</a></li>

					</ul>
					<div class="tab-content">

						<div role="tabpanel" class="tab-pane active" id="number">
							<div class="panel-group" id="accordion_number" role="tablist"
								aria-multiselectable="true">

								<br>
								<div class="panel panel-default">
									<div class="panel-heading" role="tab"
										id="heading_number_random_number">
										<h4 class="panel-title">

											<a role="button" data-toggle="collapse"
												data-parent="#accordion_number" href="#number_random_number"
												aria-expanded="false" aria-controls="number_random_number"
												class="accordion-toggle"> Random Number </a><span
												class="indicator glyphicon glyphicon-chevron-right pull-right"></span>
										</h4>
									</div>
									<div id="number_random_number" class="panel-collapse collapse"
										aria-expanded="false" role="tabpanel"
										aria-labelledby="#number_random_number" data-type="function"
										data-function-name="random_number">
										<div class="panel-body">
											<div class="row">

												<div class="col-xs-6">

													<label>N Test Cases</label> <input type="text"
														class="form-control" id="TestCasesForRandomNumbers"
														placeholder="n_test_cases" data-type="param"
														data-param-name="n_test_cases">
												</div>

												<div class="col-xs-6">

													<label>Min Value</label> <input type="text"
														class="form-control" id="MinValueForRandomNumbers"
														placeholder="min_value" data-type="param"
														data-param-name="min_value">
												</div>

												<div class="col-xs-6">

													<label>Max Value</label> <input type="text"
														class="form-control" id="MaxValueForRandomNumbers"
														placeholder="max_value" data-type="param"
														data-param-name="max_value">
												</div>

												<div class="col-xs-6">

													<label>Include N Test Cases Flag</label> <select
														id="TTestCaseFlagForRandomNumbers" data-type="param"
														data-param-name="include_n_test_cases_flag"
														class="form-control">
														<option value="0">False</option>
														<option value="1">True</option>
													</select>

												</div>

											</div>
										</div>

										<div id="button_container" class="clearfix">
											<button type="button" onclick="GeneratorForRandomNumbers()"
												class="btn btn-success btn-lg pull-left">Generate</button>
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
										<h4 class="panel-title">

											<a role="button" data-toggle="collapse"
												data-parent="#accordion_array" href="#array_random_array"
												aria-expanded="false" aria-controls="array_random_array"
												class="accordion-toggle"> Random Array </a><span
												class="indicator glyphicon glyphicon-chevron-right pull-right"></span>
										</h4>
									</div>
									<div id="array_random_array" class="panel-collapse collapse"
										aria-expanded="false" role="tabpanel"
										aria-labelledby="#array_random_array" data-type="function"
										data-function-name="random_array">
										<div class="panel-body">
											<div class="row">

												<div class="col-xs-6">

													<label>N Test Cases</label> <input type="text"
														id="TestCasesForArray" class="form-control"
														placeholder="n_test_cases" data-type="param"
														data-param-name="n_test_cases">
												</div>

												<div class="col-xs-6">

													<label>Arr Size</label> <input type="text" id="ArraySize"
														class="form-control" placeholder="arr_size"
														data-type="param" data-param-name="arr_size">
												</div>

												<div class="col-xs-6">

													<label>Distinct Value Flag</label> <select
														id="DistinctValueForArray" data-type="param"
														data-param-name="distinct_value_flag" class="form-control">
														<option value="0">False</option>
														<option value="1">True</option>
													</select>

												</div>

												<div class="col-xs-6">

													<label>Min Value</label> <input type="text"
														id="MinValueForArray" class="form-control"
														placeholder="min_value" data-type="param"
														data-param-name="min_value">
												</div>

												<div class="col-xs-6">

													<label>Max Value</label> <input type="text"
														id="MaxValueForArray" class="form-control"
														placeholder="max_value" data-type="param"
														data-param-name="max_value">
												</div>

												<div class="col-xs-6">

													<label>Include N Flag</label> <select data-type="param"
														id="SizeFlagForArray" data-param-name="include_n_flag"
														class="form-control">
														<option value="0">False</option>
														<option value="1">True</option>
													</select>

												</div>

												<div class="col-xs-6">

													<label>Include N Test Cases Flag</label> <select
														id="TestCasesFlagForArray" data-type="param"
														data-param-name="include_n_test_cases_flag"
														class="form-control">
														<option value="0">False</option>
														<option value="1">True</option>
													</select>
												</div>
											</div>
										</div>
										<div id="button_container" class="clearfix">
											<button type="button" onclick="GeneratorForRandomArray()"
												class="btn btn-success btn-lg pull-left">Generate
												Array</button>
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
										<h4 class="panel-title">

											<a role="button" data-toggle="collapse"
												data-parent="#accordion_string" href="#string_random_string"
												aria-expanded="false" aria-controls="string_random_string"
												class="accordion-toggle"> Random String </a><span
												class="indicator glyphicon glyphicon-chevron-right pull-right"></span>
										</h4>
									</div>
									<div id="string_random_string" class="panel-collapse collapse"
										aria-expanded="false" role="tabpanel"
										aria-labelledby="#string_random_string" data-type="function"
										data-function-name="random_string">
										<div class="panel-body">
											<div class="row">

												<div class="col-xs-6">

													<label>N Test Cases</label> <input type="text"
														class="form-control" placeholder="n_test_cases"
														data-type="param" data-param-name="n_test_cases">
												</div>

												<div class="col-xs-6">

													<label>Str Size</label> <input type="text"
														class="form-control" placeholder="str_size"
														data-type="param" data-param-name="str_size">
												</div>

												<div class="col-xs-6">

													<label>Distinct Chars Flag</label> <select
														data-type="param" data-param-name="distinct_chars_flag"
														class="form-control">
														<option value="0">False</option>
														<option value="1">True</option>
													</select>

												</div>

												<div class="col-xs-6">

													<label>Chars</label> <input type="text"
														class="form-control" placeholder="chars" data-type="param"
														data-param-name="chars">
												</div>

												<div class="col-xs-6">

													<label>Include N Flag</label> <select data-type="param"
														data-param-name="include_n_flag" class="form-control">
														<option value="0">False</option>
														<option value="1">True</option>
													</select>

												</div>

												<div class="col-xs-6">

													<label>Include N Test Cases Flag</label> <select
														data-type="param"
														data-param-name="include_n_test_cases_flag"
														class="form-control">
														<option value="0">False</option>
														<option value="1">True</option>
													</select>

												</div>

											</div>
										</div>
									</div>
								</div>

								<br>
								<div class="panel panel-default">
									<div class="panel-heading" role="tab"
										id="heading_string_random_char_matrix">
										<h4 class="panel-title">

											<a role="button" data-toggle="collapse"
												data-parent="#accordion_string"
												href="#string_random_char_matrix" aria-expanded="false"
												aria-controls="string_random_char_matrix"
												class="accordion-toggle"> Random Char Matrix </a><span
												class="indicator glyphicon glyphicon-chevron-right pull-right"></span>
										</h4>
									</div>
									<div id="string_random_char_matrix"
										class="panel-collapse collapse" aria-expanded="false"
										role="tabpanel" aria-labelledby="#string_random_char_matrix"
										data-type="function" data-function-name="random_char_matrix">
										<div class="panel-body">
											<div class="row">

												<div class="col-xs-6">

													<label>N Test Cases</label> <input type="text"
														class="form-control" placeholder="n_test_cases"
														data-type="param" data-param-name="n_test_cases">
												</div>

												<div class="col-xs-6">

													<label>Num Rows</label> <input type="text"
														class="form-control" placeholder="num_rows"
														data-type="param" data-param-name="num_rows">
												</div>

												<div class="col-xs-6">

													<label>Num Cols</label> <input type="text"
														class="form-control" placeholder="num_cols"
														data-type="param" data-param-name="num_cols">
												</div>

												<div class="col-xs-6">

													<label>Chars</label> <input type="text"
														class="form-control" placeholder="chars" data-type="param"
														data-param-name="chars">
												</div>

												<div class="col-xs-6">

													<label>Include N M Flag</label> <select data-type="param"
														data-param-name="include_n_m_flag" class="form-control">
														<option value="0">False</option>
														<option value="1">True</option>
													</select>

												</div>

												<div class="col-xs-6">

													<label>Include N Test Cases Flag</label> <select
														data-type="param"
														data-param-name="include_n_test_cases_flag"
														class="form-control">
														<option value="0">False</option>
														<option value="1">True</option>
													</select>

												</div>

											</div>
										</div>
									</div>
								</div>

							</div>
						</div>

					</div>
					<!-- Tab panes -->
				</div>
			</div>
			<div class="col-md-5">
				<div>
					<div class="clearfix">
						<div class="pull-right">
							<button class="btn btn-primary pull-right" id="download_as_file">
								<span class="glyphicon glyphicon-download-alt"></span>
							</button>
						</div>
					</div>
					<textarea id="FinalData" class="form-control" cols="10" id="data"
						rows="15" style="font-family: monospace"></textarea>

				</div>
			</div>
		</div>
	</div>
	<br>

</body>
</html>
