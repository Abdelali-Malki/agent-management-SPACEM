<<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<link rel="icon" type="image/png" href="/assets/img/favicon.ico">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

	<title>Espace personnel</title>

	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />


    <!-- Bootstrap core CSS     -->
    <link href="/assets/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Animation library for notifications   -->
    <link href="/assets/css/animate.min.css" rel="stylesheet"/>

    <!--  Light Bootstrap Table core CSS    -->
    <link href="/assets/css/light-bootstrap-dashboard.css?v=1.4.0" rel="stylesheet"/>


    <!--  CSS for Demo Purpose, don't include it in your project     -->
    <link href="/assets/css/demo.css" rel="stylesheet" />


    <!--     Fonts and icons     -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>
    <link href="/assets/css/pe-icon-7-stroke.css" rel="stylesheet" />
</head>
<body>
<div class="wrapper">
    <div class="sidebar" data-color="red" data-image="/assets/img/sidebar-5.jpg">

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
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li>
                            <a href="#">
                                <p>Se deconnecter</p>
                            </a>
                        </li>
						<li class="separator hidden-lg hidden-md"></li>
                    </ul>
                </div>
            </div>
        </nav>
        </br>
		</br>
        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="header">
                                <h4 class="title">Formulaire de demande de départ:</h4>
                                <p class="category">Veuillez remplir les champs suivants</p>
                            </div>
                            <center>
							 <form class="border-right pr-5 mb-5" method="post" id="contactForm" name="contactForm" th:action="@{/dep/saveDep}">
                <div class="row">
                  <div class="col-md-6 form-group">
                    <input type="text" class="form-control" name="nom" id="fname" placeholder="Nom" th:value="${depart.nom}" required>
                  </div>
                  <div class="col-md-6 form-group">
                    <input type="text" class="form-control" name="prenom" id="lname" placeholder="Prenom" th:value="${depart.prenom}" required>
                  </div>
                </div>
                  <div class="row">
                  <div class="col-md-6 form-group">
                    <input type="text" class="form-control" name="cin" id="fname" placeholder="CIN" th:value="${depart.cin}" required>
                  </div>
                  <div class="col-md-6 form-group">
                    <input type="text" class="form-control" name="departement" id="departement" placeholder="Département" th:value="${depart.departement}" required>
                  </div>
                </div>
				     <div class="row">
                  <div class="col-md-6 form-group">
                    <input type="text" class="form-control" placeholder="Date de recrutement" onfocus="(this.type='date')" name="daterec" th:value="${depart.daterec}" required>
				  </div>
                  <div class="col-md-6 form-group">
                    <input type="text" class="form-control" name="poste" id="poste" placeholder="Poste" th:value="${depart.poste}" required>
                  </div>
                </div>
                <div class="row">
                  <div class="col-md-12">
                    <input type="submit" value="Valider" class="btn btn-primary rounded-0 py-2 px-4">
                    <span class="submitting"></span>
                  </div>
                </div>
              </form>
							</center>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<style>
body {
  font-family: "Roboto", -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, "Noto Sans", sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", "Noto Color Emoji";
  color: #000; }

h1, h2, h3, h4, h5, h6,
.h1, .h2, .h3, .h4, .h5, .h6 {
  font-family: "Poppins", sans-serif; }

a {
  -webkit-transition: .3s all ease;
  -o-transition: .3s all ease;
  transition: .3s all ease; }
  a, a:hover {
    text-decoration: none !important; }

.content {
  padding: 7rem 0; }

h2 {
  font-size: 3.5rem;
  font-weight: 700; }

h3 {
  font-size: 2rem;
  font-weight: 700; }

.form-control {
 
  border-bottom: 3px solid #9BA3AE;
  margin-left: 30px;
  padding-right: 5px;
  border-radius: 10px; }
  .form-control:active, .form-control:focus {
  outline: none;
  -webkit-box-shadow: none; }

.btn, .form-control {
  height: 55px;
  }
 .btn {
   background-color : IndianRed;
   border-radius: 10px; 
   height : 45px;
   Width: 90px;
   border-color: IndianRed;
     color: white;

 }
  .btn:hover{
   background-color : #964145;
   border-radius: 10px; 
   height : 45px;
   Width: 90px;
   border-color: #964145;
     color: white;

 }

form.border-right {
  padding-right: 6rem !important; }
  @media (max-width: 991.98px) {
    form.border-right {
      padding-right: 0 !important;
      border-right: none !important; } }

label.error {
  font-size: 12px;
  color: red; }


.submitting {
  float: left;
  width: 100%;
  padding: 10px 0;
  display: none;
  font-weight: bold;
  font-size: 12px;
    color: white;
 }
  
.form-control ::placeholder { 
  font-color: red;
  opacity: 1;
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
   <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>

   <!-- Light Bootstrap Table Core javascript and methods for Demo purpose -->
 <script src="/assets/js/light-bootstrap-dashboard.js?v=1.4.0"></script>

 <!-- Light Bootstrap Table DEMO methods, don't include it in your project! -->
 <script src="/assets/js/demo.js"></script>

</html>


