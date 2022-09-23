<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8" />
<link rel="icon" type="image/png" href="/assets/img/favicon.ico">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<html lang="en" xmlns:th="http://www.thymeleaf.org">

<title>Espace personnel</title>

<meta
	content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0'
	name='viewport' />
<meta name="viewport" content="width=device-width" />


<!-- Bootstrap core CSS     -->
<link href="/assets/css/bootstrap.min.css" rel="stylesheet" />

<!-- Animation library for notifications   -->
<link href="/assets/css/animate.min.css" rel="stylesheet" />

<!--  Light Bootstrap Table core CSS    -->
<link href="/assets/css/light-bootstrap-dashboard.css?v=1.4.0"
	rel="stylesheet" />


<!--  CSS for Demo Purpose, don't include it in your project     -->
<link href="/assets/css/demo.css" rel="stylesheet" />


<!--     Fonts and icons     -->
<link
	href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css"
	rel="stylesheet">
<link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300'
	rel='stylesheet' type='text/css'>
<link href="/assets/css/pe-icon-7-stroke.css" rel="stylesheet" />
</head>
<body>
	<div class="wrapper">
		<div class="sidebar" data-color="red"
			data-image="/assets/img/sidebar-5.jpg">

			<!--

        Tip 1: you can change the color of the sidebar using: data-color="blue | azure | green | orange | red | purple"
        Tip 2: you can also add an image using data-image tag

    -->

			<div class="sidebar-wrapper">
				<div class="logo">
					<a class="simple-text">
                   <i style="color:#ffffff;font-size:150%"><b>Space</b></i><i style="color:yellow;font-size:200%;font-family:Snap ITC">M<br></i> 
                    <i style="color:#ffffffc;font-size:80%;"><b>m&nbsp;<i style="color:yellow;">e</i>&nbsp;d&nbsp;i&nbsp;a &nbsp;&nbsp;A&nbsp;g&nbsp;<i style="color:yellow;">e</i>&nbsp;n&nbsp;c&nbsp;y</b></i>
                </a>
				</div>
        <ul class="nav">
                <li class="active">
                    <a href="/acc/choix">
                        <i class="pe-7s-add-user"></i>
                        <p>Créer des comptes</p>
                    </a>
                </li>
                <li>
                    <a href="/emp/Liste_employees">
                        <i class="pe-7s-id"></i>
                        <p>Liste des employees</p>
                    </a>
                </li>
                
                <li>
                    <a href="/stg/Liste_stagiaires">
                        <i class="pe-7s-study"></i>
                        <p>Liste des stagiaires</p>
                    </a>
                </li>
                 <li>
                    <a href="/acc/choixD">
                        <i class="pe-7s-note2"></i>
                        <p>Choix de demande</p>
                    </a>
                </li>
                  <li>
                    <a href="/dep/Liste_demande_depart">
                        <i class="pe-7s-portfolio"></i>
                        <p>Liste des départs</p>
                    </a>
                </li>
                  <li>
                    <a href="/cong/Liste_conge">
                        <i class="pe-7s-plane"></i>
                        <p>Liste des congé</p>
                    </a>
                </li>
                  <li>
                    <a href="/att/Liste_attestation">
                        <i class="pe-7s-copy-file"></i>
                        <p>Liste d'attestation</p>
                    </a>
                </li>

            </ul>
			</div>
		</div>
		<div class="main-panel">
			<nav class="navbar navbar-default navbar-fixed">
				<div class="container-fluid">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse"
							data-target="#navigation-example-2">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
					</div>
					<div class="collapse navbar-collapse">

						<ul class="nav navbar-nav navbar-right">
							<li><a href="#">
									<p>Se deconnecter</p>
							</a></li>
							<li class="separator hidden-lg hidden-md"></li>
						</ul>
					</div>
				</div>
			</nav>
			<div class="content">
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-12">
							<div class="card">
								<style>
body {
	color: #566787;
	background: #f5f5f5;
	font-family: 'Varela Round', sans-serif;
	font-size: 13px;
}

.table-responsive {
	margin: 30px 0;
}

.table-wrapper {
	min-width: 1000px;
	background: #fff;
	padding: 20px 25px;
	border-radius: 3px;
	box-shadow: 0 1px 1px rgba(0, 0, 0, .05);
}

.table-title {
	padding-bottom: 15px;
	background: IndianRed;
	color: #fff;
	padding: 16px 30px;
	margin: -20px -25px 10px;
	border-radius: 3px 3px 0 0;
}

.table-title h2 {
	margin: 5px 0 0;
	font-size: 24px;
}

.table-title .btn {
	color: #566787;
	float: right;
	font-size: 13px;
	background: #fff;
	border: none;
	min-width: 50px;
	border-radius: 2px;
	border: none;
	outline: none !important;
	margin-left: 10px;
}

.table-title .btn:hover, .table-title .btn:focus {
	color: #566787;
	background: #f2f2f2;
}

.table-title .btn i {
	float: left;
	font-size: 21px;
	margin-right: 5px;
}

.table-title .btn span {
	float: left;
	margin-top: 2px;
}

table.table tr th, table.table tr td {
	border-color: #e9e9e9;
	padding: 12px 15px;
	vertical-align: middle;
}

table.table tr th:first-child {
	width: 60px;
}

table.table tr th:last-child {
	width: 100px;
}

table.table-striped tbody tr:nth-of-type(odd) {
	background-color: #fcfcfc;
}

table.table-striped.table-hover tbody tr:hover {
	background: #f5f5f5;
}

table.table th i {
	font-size: 13px;
	margin: 0 5px;
	cursor: pointer;
}

table.table td:last-child i {
	opacity: 0.9;
	font-size: 22px;
	margin: 0 5px;
}

table.table td a {
	font-weight: bold;
	color: #566787;
	display: inline-block;
	text-decoration: none;
}

table.table td a:hover {
	color: #2196F3;
}

table.table td a.settings {
	color: #2196F3;
}

table.table td a.delete {
	color: #F44336;
}

table.table td i {
	font-size: 19px;
}

table.table .avatar {
	border-radius: 50%;
	vertical-align: middle;
	margin-right: 10px;
}

.status {
	font-size: 30px;
	margin: 2px 2px 0 0;
	display: inline-block;
	vertical-align: middle;
	line-height: 10px;
}

.text-success {
	color: #10c469;
}

.text-info {
	color: #62c9e8;
}

.text-warning {
	color: #FFC107;
}

.text-danger {
	color: #ff5b5b;
}

.pagination {
	float: right;
	margin: 0 0 5px;
}

.pagination li a {
	border: none;
	font-size: 13px;
	min-width: 30px;
	min-height: 30px;
	color: #999;
	margin: 0 2px;
	line-height: 30px;
	border-radius: 2px !important;
	text-align: center;
	padding: 0 6px;
}

.pagination li a:hover {
	color: #666;
}

.pagination li.active a, .pagination li.active a.page-link {
	background: #03A9F4;
}

.pagination li.active a:hover {
	background: #0397d6;
}

.pagination li.disabled i {
	color: #ccc;
}

.pagination li i {
	font-size: 16px;
	padding-top: 6px
}

.hint-text {
	float: left;
	margin-top: 10px;
	font-size: 13px;
}
</style>
								<script>
									$(document).ready(function() {
										$('[data-toggle="tooltip"]').tooltip();
									});
								</script>
								</head>
								<body>
									<div class="container-xl">
										<div class="table-responsive">
											<div class="table-wrapper">
												<div class="table-title">
													<div class="row">
														<div class="col-sm-5">
															<h2>
																Liste <b>des Employés</b>
															</h2>
														</div>
														<div class="col-sm-7">
															<a href="/emp/formulaire_employee" class="btn btn-secondary"><i
																class="pe-7s-add-user">&#xE147;</i> <span>Ajouter
																	nouveau employé</span></a>
														</div>
													</div>
												</div>
												<table class="table table-striped table-hover">
													<thead>
														<tr>
															<th>CIN</th>
															<th>Nom</th>
															<th>Prénom</th>
															<th>Email</th>
															<th>Date de recrutement</th>
															<th>Poste</th>
															<th>Departement</th>
															<th>Action</th>
														</tr>
													</thead>
													<tbody>
														<tr th:each="employee:${listEmployee}">
															<td th:text="${employee.cin}"></td>
															<td th:text="${employee.nom}">
															</th>
															<td th:text="${employee.prenom}">
															</th>
															<td th:text="${employee.email}">
															</th>
															<td th:text="${employee.dateR}">
															</th>
															<td th:text="${employee.post}">
															</th>
															<td th:text="${employee.departement}">
															</th>
															<th><a type="button" class="btn btn-danger"
																th:href="@{/emp/deleteEmp(id=${employee.id})}">
																	Supprimer </a></th>
															<th><a type="button" class="btn btn-info"
																th:href="@{/emp/modifyEmp(id=${employee.id})}">
																	Modifier </a></th>
														</tr>
													</tbody>
												</table>
												<div class="clearfix">
													<ul class="pagination">
														<li class="page-item disabled"><a href="#">Previous</a></li>
														<li class="page-item"><a href="#" class="page-link">1</a></li>
														<li class="page-item"><a href="#" class="page-link">2</a></li>
														<li class="page-item active"><a href="#"
															class="page-link">3</a></li>
														<li class="page-item"><a href="#" class="page-link">4</a></li>
														<li class="page-item"><a href="#" class="page-link">5</a></li>
														<li class="page-item"><a href="#" class="page-link">Next</a></li>
													</ul>
												</div>
											</div>
										</div>
									</div>
								</body>

							</div>
</body>
</div>
</center>
</div>
</div>
</div>
</div>
</div>
</div>
</div>


<style>
.container {
	position: relative;
	width: 30%;
	display: inline-block;
	margin: 30px;
	padding-top: 10px;
	items-align: stretch;
}

.image {
	opacity: 1;
	display: block;
	width: 100%;
	height: auto;
	transition: .5s ease;
	backface-visibility: hidden;
}

.middle {
	transition: .5s ease;
	opacity: 0;
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	-ms-transform: translate(-50%, -50%);
	text-align: center;
}

.container:hover .image {
	opacity: 0.3;
}

.container:hover .middle {
	opacity: 1;
}

.text {
	background-color: red;
	color: white;
	font-size: 16px;
	padding: 16px 32px;
	cursor: pointer;
}
</style>
<!--   Core JS Files   -->
<script src="/assets/js/jquery.3.2.1.min.js" type="text/javascript"></script>
<script src="/assets/js/bootstrap.min.js" type="text/javascript"></script>

<!--  Charts Plugin -->
<script src="/assets/js/chartist.min.js"></script>

<!--  Notifications Plugin    -->
<script src="/assets/js/bootstrap-notify.js"></script>

<!--  Google Maps Plugin    -->
<script type="text/javascript"
	src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>

<!-- Light Bootstrap Table Core javascript and methods for Demo purpose -->
<script src="/assets/js/light-bootstrap-dashboard.js?v=1.4.0"></script>

<!-- Light Bootstrap Table DEMO methods, don't include it in your project! -->
<script src="/assets/js/demo.js"></script>

</html>


