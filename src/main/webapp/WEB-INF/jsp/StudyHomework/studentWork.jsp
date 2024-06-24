<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<title>Students Homework</title>
<link rel="stylesheet" href="css/admin.css">
<script src="https://kit.fontawesome.com/ae73087723.js"
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
	integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<style>
.Container {
	width: 100%;
	height: 100vh;
}

.container2 {
	display: grid;
	grid-template-columns: 1fr 1fr 1fr 1fr;
	grid-gap: 30px;
}

.TableContainer {
	margin-top: 20px;
	background: #fff;
	border-radius: 7px;
	border: 1.5px solid #e8e8e8;
	overflow: scroll;
	padding: 20px;
	cursor: pointer;
	padding: 20px;
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
	right: 2rem;
}

@media screen and (max-width: 1000px) {
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
			<div class="Container">
				<h1
					style="margin-bottom: 30px; text-align: center; font-weight: 600; font-size: 30px">
					STUDENTS HOMWORK AND TEST RESULTS</h1>
				<div class="container2"
					style="margin-left: 20px; margin-right: 20px">
					<div
						style="display: flex; flex-direction: column; margin-bottom: 20px">
						<label
							style="font-size: 13px; font-weight: 500; margin-bottom: 7px">Select
							Course Name</label> <select id="" name=""
							style="padding: 13px; border-radius: 5px; border-color: #bfb8b8">
							<option>Select</option>
						</select>
					</div>
					<div></div>
					<div></div>
					<div></div>
					<div
						style="display: flex; flex-direction: column; margin-bottom: 20px">
						<label
							style="font-size: 13px; font-weight: 500; margin-bottom: 7px">Select
							Batch Name</label> <select id="" name=""
							style="padding: 13px; border-radius: 5px; border-color: #bfb8b8">
							<option>Select</option>
						</select>
					</div>
				</div>
				<div class='TableContainer'>
					<div class="tablestyle">
						<table class='MainTable'>
							<thead class='tableheading'>
								<tr>
									<th style="width: 100px; font-weight: 800; color: white;">SrNo</th>
									<th style="font-weight: 800; color: white;">Teacher
										Material Given Date</th>
									<th style="font-weight: 800; color: white;">Student
										Material Submit Date</th>
									<th style="font-weight: 800; color: white;">Material Type
									</th>
									<th style="font-weight: 800; color: white;">Student Name</th>
									<th style="font-weight: 800; color: white;">Status</th>
									<th style="font-weight: 800; color: white;">Result</th>
									<th style="font-weight: 800; color: white;">Action</th>
								</tr>
							</thead>
							<tbody class='tablebody'>
								<tr>
									<td style="font-weight: 500;">1</td>
									<td style="font-weight: 500;">14 February 2024</td>
									<td style="font-weight: 500;">01 April 2024</td>
									<td style="font-weight: 500;">Homework</td>
									<td style="font-weight: 500;">Ashish Mishra</td>
									<td style="font-weight: 500">Done</td>
									<td style="font-weight: 500;">50%</td>
									<td data-label="Action"><i class="fa-solid fa-eye"></i></td>

								</tr>
								<tr>
									<td style="font-weight: 500;">1</td>
									<td style="font-weight: 500;">14 February 2024</td>
									<td style="font-weight: 500;">01 April 2024</td>
									<td style="font-weight: 500;">Homework</td>
									<td style="font-weight: 500;">Ashish Mishra</td>
									<td style="font-weight: 500">Not Done</td>
									<td style="font-weight: 500;">50%</td>
									<td data-label="Action"><i class="fa-solid fa-eye"></i></td>

								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<div class="modal-fade" id="myModal">
				<div class="modal-main">
					<div class="modal-head-cancel">
						<div
							style="height: 100px; background-image: url('https://img.freepik.com/free-vector/gradient-abstract-wireframe-background_23-2149020364.jpg'); background-size: cover;">
						</div>

						<div class="modal-head">
							<h3>Result</h3>
						</div>

					</div>

					<div class="modal-bottom-div">
						<div class="bottom-right">

							<div class="modal-question">
								<h4>Lorem ipsum dolor sit amet consectetur, adipisicing
									elit. Nobis, dolorem.</h4>
							</div>

							<div class="modal-answer">

								<h3>Lorem ipsum dolor sit amet, consectetur adipisicing
									elit. Eligendi, at!</h3>

								<div class="modal-mcq">
									<h4 class="correct wrong" style="color: greenyellow">1.dsjhkjshkjdsah</h4>
									<h4 class="correct wrong" style="color: red">2.shvhbsj</h4>
									<h4 class="correct wrong" style="color: black">3.sjvdshsbb</h4>
									<h4 class="correct wrong" style="color: black">4.vhvc</h4>
								</div>

							</div>


							<div class="modal-question">
								<h4>Lorem ipsum dolor sit amet consectetur, adipisicing
									elit. Nobis, dolorem.</h4>
							</div>

							<div class="modal-answer">

								<h3>Lorem ipsum dolor sit amet, consectetur adipisicing
									elit. Eligendi, at!</h3>

								<div class="modal-mcq">
									<h4 style="color: black">1.dsjhkjshkjdsah</h4>
									<h4 style="color: black">2.shvhbsj</h4>
									<h4 style="color: greenyellow">3.sjvdshsbb</h4>
									<h4 style="color: red">4.vhvc</h4>
								</div>

							</div>

						</div>

						<div class="bottom-left">
							<div class="modal-score">
								<h4>
									Score <span>11/30</span>
								</h4>
							</div>

							<div class="modal-percentage">
								<h4>
									Percentage <span>11/30</span>
								</h4>
							</div>
						</div>
					</div>
					<div class="modal-cancel" style="display: flex; justify-content: flex-end; margin-right: 20px">
						<button
							style="background-color: gray; padding: 10px; color: white; border-radius: 5px; border: none; margin-bottom: 10px">Close</button>
					</div>
				</div>

			</div>

		</main>
	</section>
	<script src="js/adminscript.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

	<script>


    const iconClicked = document.querySelectorAll('.fa-eye');
    const myModal = document.querySelector('#myModal');
    const modalBackground = document.querySelector('.modal-fade');
    const modalCancelIcon = document.querySelector('.modal-cancel');

    iconClicked.forEach((icon) => {
      icon.addEventListener('click', () => {
        modalBackground.style.display = 'block';
      });
    });

    modalCancelIcon.addEventListener('click', () => {
      modalBackground.style.display = 'none';
    });

    modalBackground.addEventListener('click', (event) => {
      if (event.target === modalBackground) {
        modalBackground.style.display = 'none';
      }
    });


    const modalMain = document.querySelector('.modal-main');
    modalMain.addEventListener('click', (event) => {
      event.stopPropagation();
    });



  </script>

</body>

</html>