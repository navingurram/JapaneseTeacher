<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
.Container {
	width: 100%;
	height: 100vh;
	margin-top: 50px
}

.container2 {
	display: grid;
	grid-template-columns: 1fr 1fr 1fr 1fr;
}

.container3 {
	display: grid;
	grid-template-columns: 1fr 1fr 1fr 1fr;
}

@media screen and (max-width: 1000px) {
	.container3 {
		display: grid;
		grid-template-columns: 1fr;
	}
}

.TableContainer {
	margin-top: 20px;
	background: #fff;
	border-radius: 7px;
	border: 1.5px solid #e8e8e8;
	padding: 20px;
	cursor: pointer;
	overflow: scroll;
}

.MainTable {
	border-collapse: collapse;
	text-align: center;
	overflow: hidden;
	cursor: pointer;
	width: 100%;
}

.tableheading {
	border-bottom: 1px solid rgb(208, 208, 208);
	background-color: #36454f;
}

.tableheading th {
	padding: 1rem;
	text-transform: capitalize;
	letter-spacing: 0.1rem;
	font-size: 0.9rem;
	font-weight: 600;
	color: rgb(56, 56, 56);
}

.tablebody {
	padding: 1rem 1.8rem;
	font-weight: 500;
	font-size: 13.5px;
}

.iconmag {
	position: absolute;
	top: 12.5rem;
	right: 12rem;
}
</style>
<body>
	<jsp:include page="../sidenav.jsp"></jsp:include>
	<section id="content">
		<jsp:include page="../header.jsp"></jsp:include>
		<main>
			<div>
				<div
					style="height: 100px; background-image: url('https://img.freepik.com/free-vector/gradient-abstract-wireframe-background_23-2149020364.jpg'); background-size: cover;">
					<div>
						<img alt="teacher-profile"
							src="data:image/png;base64,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"
							style="border-radius: 50%; width: 100px; height: 100px; position: absolute; top: 120px; left: 30px" />
					</div>
				</div>
				<div>
					<div>
						<div
							style="padding: 10px; margin-left: 5px; margin-top: 50px; display: flex; flex-direction: row;">
							<h3 style="width: 70px" class="teacher-name">Name:</h3>
							<h3>Navin Gurram</h3>
						</div>
						<div
							style="padding: 10px; margin-left: 5px; display: flex; flex-direction: row;">
							<h3>matsunaga@gmail.com</h3>
						</div>
						<div
							style="padding: 10px; margin-left: 5px; display: flex; flex-direction: row;">
							<h3>Active</h3>
						</div>
					</div>
					<div>
						<a href="changepassword">
							<button
								style="position: absolute; right: 60px; top: 250px; padding-right: 20px; padding-left: 20px; padding-top: 10px; padding-bottom: 10px; border-radius: 7px; border: none; outline: none; background: #4287f5; color: white;">Change
								Password</button>
						</a>
					</div>
				</div>
			</div>
		</main>
	</section>
	<script src="js/adminscript.js"></script>
</body>
</html>