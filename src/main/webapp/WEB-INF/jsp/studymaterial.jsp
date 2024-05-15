<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
* {
	padding: 0;
	margin: 0;
}

body {
	width: 100%;
	height: 100%;
	margin: 0;
}

.study-material-main {
	width: 100%;
	background-color: #f7f7f7;
}

.sdm-head {
	width: 100%;
	padding: 2% 0;
	text-align: center;
}

.sdm-head>h2 {
	font-weight: 700;
}

.sdm-input-div {
	display: grid;
	grid-template-columns: repeat(auto-fit, minmax(400px, 1fr));
	gap: 20px;
	padding: 2%;
}

.sdm-input {
	display: flex;
	flex-direction: column;
	gap: 10px;
}

.sdm-input-div label {
	grid-column: span 1;
	font-weight: 600;
}

.sdm-input-div input[type="text"] {
	grid-column: span 1;
	padding:  0;
	border-top: none;
	border-left: none;
	border-right: none;
	border-bottom: 2.5px solid #ebebeb;
	border-radius: 7px;
	font-size: 1.1rem;
	color: #3f3844;
	font-weight: 300;
	background-color: transparent;
}

.sdm-input-div input[type="text"]:focus {
	outline: none;
}

@media screen and (max-width: 600px) {
	.sdm-input-div {
		grid-template-columns: 1fr;
	}
}
</style>
<body>
	<jsp:include page="sidenav.jsp"></jsp:include>
	<section id="content">
		<jsp:include page="header.jsp"></jsp:include>
		<main>
			<div class="study-material-main">
				<div class="sdm-head">
					<h1
						style="margin-bottom: 30px; text-align: center; font-weight: 600; font-size: 30px">STUDY
						MATERIAL PERMISSIONS</h1>
				</div>

				<div class="sdm-input-div">
					<div class="sdm-input">
						<label for="">Category</label> <input type="text"
							id="sdm-Category" />
					</div>

					<div class="sdm-input">
						<label for="">Type of question</label> <input type="text"
							id="sdm-type-question" />
					</div>

					<div class="sdm-input">
						<label for="">Study Material(Questions)</label> <input type="text"
							id="sdm-question" />
					</div>

					<div class="sdm-input">
						<label for="">Material (Question)- Info</label> <input type="text"
							id="sdm-question-info" />
					</div>

					<div class="sdm-input">
						<label for="">Add Questions</label> <input type="text"
							id="sdm-add-question" />
					</div>
				</div>
			</div>
		</main>
	</section>
</body>
</html>