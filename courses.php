<?php include("layoutsWebsite/head.php"); ?>
<?php include("layoutsWebsite/header.php"); ?>
<?php include("layoutsWebsite/menu.php"); ?>

<style>
	/* Add custom CSS styles here */
	.hidden {
		display: none;
	}

	/* Custom card design */
	.custom-card {
		border: 1px solid #FE9900;
		border-radius: 5px;
		transition: transform 0.2s ease-in-out;
		cursor: pointer;
		height: 15rem;
	}

	.custom-card:hover {
		transform: scale(1.05);
		transition: transform 0.3s ease-in-out;
	}

	#grade7-card {
		background: url('') no-repeat center center;
		background-size: cover;
		opacity: 0.8;
		height: 15rem;
	}

	/* Style for Grade 8 Card */
	#grade8-card {
		background: url('grade8-background.jpg') no-repeat center center;
		background-size: cover;
		opacity: 0.8;
		height: 15rem;
	}

	/* Style for Grade 8 Card */
	#grade9-card {
		background: url('grade8-background.jpg') no-repeat center center;
		background-size: cover;
		opacity: 0.8;
		height: 15rem;
	}

	/* Style for Grade 8 Card */
	#grade10-card {
		background: url('grade8-background.jpg') no-repeat center center;
		background-size: cover;
		opacity: 0.8;
		height: 15rem;
	}

	/* Style for the logo */
	.card-logo {
		position: absolute;
		top: 10px;
		right: 10px;
		width: 50px;
		/* Adjust the size of the logo as needed */
	}

	/* Style for card content */
	.card-content {
		padding: 20px;
		/* Adjust padding as needed */
		color: white;
		/* Text color on the cards */
	}

	ul {
		list-style-type: square;
		color: black;
	}
</style>
<!-- Home -->

<div class="home" style="height: 70vh;">
	<!-- Background image artist https://unsplash.com/@thepootphotographer -->
	<div class="home_background parallax_background parallax-window" data-parallax="scroll"
		data-image-src="assets/images/pic9.jpg" data-speed="0.8"></div>
	<div class="home_container">
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="home_content text-center">
						<!-- <div class="home_title">DEPARTMENTS</div> -->
						<!-- <div class="breadcrumbs">
							<ul>
								<li><a href="index.php">Home</a></li>
								<li style="color: maroon">Departments</li>
							</ul>
						</div> -->
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<!-- Courses -->

<div class="courses">
	<div class="container">
		<div class="row">
			<!-- <div class="col-lg-10 offset-lg-1">
				<div class="section_title text-center">
					<h1 style="color: maroon;">WE CAN OFFER</h1>
				</div>
			</div> -->
		</div>

		<!-- Course Search -->
		<!-- <div class="row">
				<div class="col">
					<div class="course_search">
						<form action="#" class="course_search_form d-flex flex-md-row flex-column align-items-start justify-content-between">
							<div><input type="text" class="course_input" placeholder="Course" required="required"></div>
							<div><input type="text" class="course_input" placeholder="Level" required="required"></div>
							<button class="course_button"><span>search course</span><span class="button_arrow"><i class="fa fa-angle-right" aria-hidden="true"></i></span></button>
						</form>
					</div>
				</div>
			</div> -->

		<!-- Featured Course -->

		<!-- <div class="row featured_row" id="department_container2">

		</div> -->

		<br> <br>
		<div class="container" id="sup_container">
			<h2 class="text-center" id="jhs">Junior High School</h2>

			<div class="row" id="cat_container">

			</div>
			<div class="row mt-3 " id="container_2">
			</div>
			<br>
			<div class="container">
				<hr>
			</div>
			<br>
			<h2 class="text-center mt-5" id="jhs">Senior High School</h2>

			<div class="row" id="cat_container2">

			</div>
			<div class="row mt-3 " id="container_3">
			</div>



			<br>




		</div>

	</div>
</div>

<div class="container">
	<h1 style="color: maroon;">School Policies</h1>
	<div class="row mt-5">
		<div class="col">
			<h3>General Conduct</h3>
			<ul>
				<li>Respect: Treat all members of the school community with respect and courtesy.</li>
				<li>Bullying: Bullying in any form is strictly prohibited. Report any incidents to a teacher, counselor,
					or school administrator.</li>
				<li>Attendance: Regular attendance is mandatory. Notify the school in advance of any planned absences or
					provide a valid excuse for an unplanned absence.</li>
				<li>Punctuality: Be on time for all classes, exams, and school events.</li>
			</ul>
		</div>
		<div class="col">
			<h3>Academic Integrity</h3>
			<ul>
				<li>Plagiarism: Submit only original work. Plagiarism, cheating, and academic dishonesty will not be
					tolerated.</li>
				<li>Homework and Assignments: Complete all assignments on time. Late submissions may incur penalties.
				</li>
				<li>Exams: Follow the guidelines provided during exams. Any form of cheating will result in
					consequences.</li>
			</ul>
		</div>
	</div>
	<div class="row mt-5">
		<div class="col">
			<h3>Dress Code</h3>
			<ul>
				<li>Students are expected to adhere to the school's dress code policy. Dress modestly and appropriately
					for an educational environment.</li>
			</ul>
		</div>
		<div class="col">
			<h3>Technology Usage</h3>
			<ul>
				<li>Use of electronic devices is allowed only during designated times. Follow classroom and school
					guidelines for device usage.</li>
			</ul>
		</div>
	</div>
	<div class="row mt-5">
		<div class="col">
			<h3>Extracurricular Activities</h3>
			<ul>
				<li>Participate in school-sponsored activities responsibly and with good sportsmanship.</li>
				<li>Adhere to the specific rules and guidelines established for each extracurricular activity.</li>
			</ul>
		</div>
		<div class="col">
			<h3>Health and Safety</h3>
			<ul>
				<li>Follow safety guidelines provided by the school, including fire drills and emergency procedures.
				</li>
				<li>Report any health concerns promptly to the school nurse.</li>
			</ul>
		</div>
	</div>
	<div class="row mt-5">
		<div class="col">
			<h3>Code of Ethics</h3>
			<ul>
				<li>Uphold the highest standards of honesty, integrity, and ethical behavior.</li>
			</ul>
		</div>
		<div class="col">
			<h3>Parental Involvement</h3>
			<ul>
				<li>Encourage parents/guardians to actively participate in school activities and maintain open
					communication with teachers and school administrators.</li>
			</ul>
		</div>
	</div>
	<div class="row mt-5">
		<div class="col">
			<h3>Disciplinary Actions</h3>
			<ul>
				<li>Consequences for violations of these policies may include warnings, parent conferences, detention,
					suspension, or other appropriate measures.</li>
			</ul>
		</div>
		<div class="col">
			<h3>Reporting Concerns</h3>
			<ul>
				<li>Students are encouraged to report any concerns about safety, well-being, or potential policy
					violations to a teacher, counselor, or school administrator.</li>
			</ul>
		</div>
	</div>
</div>

<br><br>

<script>
	jQuery(document).ready(function ($) {


		var cat_ids = {};
		var details_ids = {};

		$.get({
			url: "admin/departments/departmentsCrud.php",
			data: { getDistincDepart: "getDistincDepart" },
			success: function (data) {
				let newData = JSON.parse(data);

				newData.forEach((dep, i) => {

					let cat_container = $("#cat_container ");
					let cat_container2 = $("#cat_container2 ");

					let sup_container = $("#sup_container ");
					let container_2 = $("#container_2 ");
					let container_3 = $("#container_3 ");




					var dep_id = dep.department_id;

					$.get({
						url: "admin/advisory/advisoryCrud.php",
						data: { getDataDep: "getDataDep", strand_department_id: dep_id },
						success: function (data) {
							let newData = JSON.parse(data);

							newData.forEach((distinct_strand, i) => {

								var grade = distinct_strand.strand_name.toLowerCase().replace(/\s+/g, '') + "-card";
								var grades = distinct_strand.strand_name;
								var dep_id = distinct_strand.strand_department_id;
								if (dep_id == 2) {
									cat_container.append(
										'<div class="col-md-3 mb-4">' +
										// '<h3>' + dep.dep_name + '</h3>' +

										'<div class="card custom-card  cat-card" id=' + grade + ' >' +
										'<img src="assets/images/rcnhslogonew.png" alt="Logo" class="card-logo">' +
										'<div class="card-body card-content mt-5">' +
										'<h3 class="card-title" style="color: maroon;">' + distinct_strand.strand_name + '</h3>' +
										'<p class="card-text" style="color: #000;">See more</p>' +
										'<input type="hidden" value="' + grades + '">' +
										'</div >' +
										'</div >' +
										'</div >'
									);
								} else if (dep_id == 1) {
									cat_container2.append(
										'<div class="col-md-4 mb-4">' +
										// '<h3>' + dep.dep_name + '</h3>' +

										'<div class="card custom-card  cat-card" id=' + grade + ' >' +
										'<img src="assets/images/rcnhslogonew.png" alt="Logo" class="card-logo">' +
										'<div class="card-body card-content mt-5">' +
										'<h3 class="card-title" style="color: maroon;">' + distinct_strand.strand_name + '</h3>' +
										'<p class="card-text" style="color: #000;">See more</p>' +
										'<input type="hidden" value="' + grades + '">' +
										'</div >' +
										'</div >' +
										'</div >'
									);
								}



								$taes = distinct_strand.strand_id;

								$('#' + grade).click(function () {
									var clickedGrade = $('#' + grade + ' input[type="hidden"]').val();
									$('html, body').animate({
										scrollTop: $('#container_2').offset().top
									}, 1000);

									$.get({
										url: "admin/advisory/advisoryCrud.php",
										data: { getDataDepUlit: "getDataDepUlit", strand_department_id: $taes, grade_level: clickedGrade },
										success: function (data) {
											let newData = JSON.parse(data);
											container_2.empty();
											container_3.empty();
											newData.forEach((advisor, i) => {
												var dep_id2 = advisor.strand_department_id;
												if (dep_id2 == 2) {
													container_2.append(

														'<div class="col-md-3 mb-3">' +
														'<div class="card custom-card" style="border-color: maroon;">' +

														'<h3 class="card-title mt-5 text-center">Section: <span style="font-size: 20px;">' + advisor.section_name + '</span></h3>' +
														'<p class="card-text text-center" style="font-size: 14px;"><span style="font-weight: 600;">Advisory Teacher:</span> ' + advisor.teacher_fname + ' ' + advisor.teacher_mname + ' ' + advisor.teacher_lname + '</p>' +
														'</div>' +

														'</div>'
													);
												} else if (dep_id2 == 1) {
													container_3.append(

														'<div class="col-md-3 mb-3">' +
														'<div class="card custom-card" style="border-color: maroon;">' +

														'<h3 class="card-title mt-5 text-center">Section: <span style="font-size: 20px;">' + advisor.section_name + ' </span></h3>' +
														'<p class="card-text text-center" style="font-size: 14px;"><span style="font-weight: 600;">Advisory Teacher:</span>' + advisor.teacher_fname + ' ' + advisor.teacher_mname + ' ' + advisor.teacher_lname + '</p>' +
														'</div>' +

														'</div>'
													);
												}

											});
										}
									});
								});
							});
						},
					});
				});
			},
		});

		// var greyd = ""

		// $.get({
		//     url: "admin/departments/departmentsCrud.php",
		//     data: { getDistincDepart: "getDistincDepart" },
		//     success: function (data) {
		//         let newData = JSON.parse(data);

		//         newData.forEach((distinct_dep, i) => {
		//             let container = $("#container");
		//             let row = $("<div>", {
		//                 class: "row",
		//             }).appendTo(container);

		//             let row1 = $("<div>", {
		//                 class: "row mt-3 ",
		//                 id: "grade7-details",
		//             }).appendTo(container);


		//             var dep_id = distinct_dep.department_id;




		//             $.get({
		//                 url: "admin/advisory/advisoryCrud.php",
		//                 data: { getDataDep: "getDataDep", strand_department_id: dep_id },
		//                 success: function (data) {
		//                     let newData = JSON.parse(data);

		//                     newData.forEach((distinct_strand, i) => {
		//                         var grade = distinct_strand.strand_name.toLowerCase().replace(/\s+/g, '');
		//                         greyd = distinct_strand.strand_name.toLowerCase().replace(/\s+/g, '');



		//                         row.append(
		//                             '<div class="col-md-3 mb-4">' +
		//                             '<div class="card custom-card w-100 h-100 strand-card" value=' + distinct_strand.strand_id + '" id="' + grade + '">' +
		//                             '<img src="" alt="Logo" class="card-logo">' +
		//                             '<div class="card-body card-content">' +
		//                             '<h5 class="card-title">' +
		//                             distinct_strand.strand_name +
		//                             '</h5>' +
		//                             '<p class="card-text">' + "Click to reveal more details" + '</p>' +
		//                             '</div>' +
		//                             '</div>' +
		//                             '</div>'
		//                         );

		//                         var cssText = '#' + grade + ' { ' +
		//                             'background: url("assets/images/pic2.jpg") no-repeat center center; ' +
		//                             'background-size: cover; ' +
		//                             'opacity: 0.8; ' +
		//                             '}';

		//                         // Append the CSS rules to the existing style tag
		//                         $('#custom-styles').append(cssText);




		//                         $tae = distinct_strand.strand_id;



		//                         var grade7Details = $('#grade7-details');
		//                         var myDiv = $('#' + greyd);

		//                         $('#' + greyd).click(function () {
		//                             var value = myDiv.attr("value");

		//                             $('#grade7-details').empty();


		//                             // $('.strand-card').hide();


		//                             // alert("The value attribute is: " + value);

		//                             $.get({
		//                                 url: "admin/advisory/advisoryCrud.php",
		//                                 data: { getDataDepUlit: "getDataDepUlit", strand_department_id: value },
		//                                 success: function (data) {
		//                                     let newData = JSON.parse(data);


		//                                     newData.forEach((advisor, i) => {







		//                                         row1.append(
		//                                             '<div class="col-md-3 mb-4 ">' +
		//                                             '<div class="card custom-card">' +
		//                                             '<div class="card-body text-center">' +
		//                                             '<h5 class="card-title">' + advisor.section_name + '</h5>' +
		//                                             '<p class="card-text">' + advisor.teacher_fname + '</p>' +
		//                                             '</div >' +
		//                                             '</div >' +
		//                                             '</div >'
		//                                         );


		//                                     });
		//                                 },
		//                             });


		//                         });

		//                     });


		//                 }

		//             });





		//         });


		//     },

		// });

	});

</script>
<?php include("layoutsWebsite/footer.php"); ?>
<!-- <script src="js/departments/index.js"></script> -->