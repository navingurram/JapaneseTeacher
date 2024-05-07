<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
	<!DOCTYPE html>
	<html>

	<head>
		<meta charset="ISO-8859-1">
		<title>Add Batch</title>
		<link rel="stylesheet" href="css/admin.css">
		<script src="https://kit.fontawesome.com/ae73087723.js" crossorigin="anonymous"></script>
		<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	</head>
	<style>
		.Container {
			width: 100%;
			height: 100vh;
		}

		.container2 {
			display: grid;
			grid-template-columns: 1fr 1fr;
			grid-gap: 30px;
		}

		@media screen and (max-width: 768px) {
			.container2 {
				grid-template-columns: 1fr;
			}
		}
	</style>

	<body>
		<jsp:include page="../sidenav.jsp"></jsp:include>
		<section id="content">
			<jsp:include page="../header.jsp"></jsp:include>
			<main>
				<div>
					<h1 style="margin-bottom: 30px; text-align: center; font-weight: 600; font-size: 30px">
						<label
							style="margin-bottom: 30px; text-align: center; font-weight: 600; font-size: 30px; color: #55d0ff">
							N5-10 </label> BATCH DETAILS
					</h1>
					<div class="container2" style="margin-left: 20px; margin-right: 20px">
						<div>
							<h4 style="padding-bottom: 20px;">Demo Class Details</h4>
							<div style="padding: 5px">
								<h5 style="display: inline-block; width: 150px; font-weight: 500">Date:</h5>
								<label style="margin-left: 5px; font-size: 13px; font-weight: 500">7th
									February 2024</label>
							</div>
							<div style="padding: 5px">
								<h5 style="display: inline-block; width: 150px; font-weight: 500">Time:</h5>
								<label style="margin-left: 5px; font-size: 13px; font-weight: 500">11
									: 30 AM to 1 : 30PM</label>
							</div>
							<div style="padding: 5px">
								<h5 style="display: inline-block; width: 150px; font-weight: 500">Day:</h5>
								<label style="margin-left: 5px; font-size: 13px; font-weight: 500">Wednesday</label>
							</div>
							<h4 style="padding-top: 20px;">Regular Class Details</h4>
							<div style="padding: 5px">
								<h5 style="display: inline-block; width: 150px; font-weight: 500">Days:</h5>
								<label style="margin-left: 5px; font-size: 13px; font-weight: 500">Monday,
									Tuesday, Wednesday </label>
							</div>
							<div style="padding: 5px">
								<h5 style="display: inline-block; width: 150px; font-weight: 500">Batch
									Start Date:</h5>
								<label style="margin-left: 5px; font-size: 13px; font-weight: 500">12th
									February 2024 </label>
							</div>
							<div style="padding: 5px">
								<h5 style="display: inline-block; width: 150px; font-weight: 500">Batch
									End Date:</h5>
								<label style="margin-left: 5px; font-size: 13px; font-weight: 500">24th
									June 2024</label>
							</div>
							<div style="padding: 5px">
								<h5 style="display: inline-block; width: 150px; font-weight: 500">Course
									Duration:</h5>
								<label style="margin-left: 5px; font-size: 13px; font-weight: 500">6
									Months</label>
							</div>
							<div style="margin-top: 15px">
								<div style="padding: 5px">
									<h5 style="display: inline-block; width: 150px; font-weight: 500">Teacher
										Name:</h5>
									<label style="margin-left: 5px; font-size: 13px; font-weight: 500">Kanda
										Sensei</label>
								</div>
								<div style="padding: 5px">
									<h5 style="display: inline-block; width: 150px; font-weight: 500">Fees:</h5>
									<label style="margin-left: 5px; font-size: 13px; font-weight: 500">$20</label><label
										style="margin-left: 5px; font-size: 13px; font-weight: 500">Per
										Hour</label>
								</div>
							</div>
							<div style="margin-top: 15px">
								<div style="padding: 5px">
									<h5 style="display: inline-block; width: 150px; font-weight: 500">Current
										Installment:</h5>
									<label style="margin-left: 5px; font-size: 13px; font-weight: 500">2nd
										Installment</label>
								</div>
							</div>
							<div>
								<h4 style="padding-top: 20px;">Zoom Details</h4>
								<div
									style="margin-top: 20px; font-size: 13px; border: 2px solid rgb(16, 8, 92); padding: 10px; border-radius: 10px;">
									<label for="">Zoom
										link:</label>
									<label>The HTML <a>tag defines a hyperlink. It has the following syntax: The most
											important attribute of the <a> element is the hrefattribute, which indicates
												the link's destination. … See more</label>
								</div>
							</div>
						</div>
						<div>
							<div
								style="width: 50%; font-size: 13px; border: 2px solid rgb(16, 8, 92); padding: 10px; border-radius: 10px;">
								<h4>Makeover Class
									Details:</h4>
								<div>
									<label style="display: block; color: #55d0ff; font-weight: 500;" for="">25 Jan
										2024</label>
									<label style="display: block; color: #55d0ff; font-weight: 500;" for="">30 Jan
										2024</label>
									<label style="display: block; color: #55d0ff; font-weight: 500;" for="">1 Feb
										2024</label>
								</div>
							</div>
							<div style="width: 50%;">
								<h4 style="padding-top: 20px; padding-bottom: 10px;">Book Details</h4>
								<label for="" style="font-size: 13px; color: #55d0ff;">I found an Interesting link with 40+ computer science premium courses
									link. 1. Basic Programming Languages 2. Web Design & Development 3.</label>
							</div>
						</div>
					</div>
				</div>
			</main>
		</section>
		<script src="js/adminscript.js"></script>
	</body>

	</html>