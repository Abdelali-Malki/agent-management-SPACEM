<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<link rel="icon" type="image/png" href="assets/img/favicon.ico">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<html lang="en" xmlns:th="http://www.thymeleaf.org">

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
                                <h4 class="title">Choix du type de la demande :</h4>
                                <p class="category">Veuillez sélectionner le type qui correspond</p>
                            </div>
                            <center>
							<div class="content table-responsive table-full-width">
                                  
                                 <div class="container">
                                  <img src="/assets/img/Depart.png" alt="Avatar" class="image" style="width:100%">
                                  <div class="middle">
                                  <div class="text"><a href="/dep/formulaire_demandedep">Départ</a></div>
                                  </div>
                                 </div>  
                                  <div class="container">
                                <img src="/assets/img/Conge.png" alt="Avatar" class="image" style="width:100%">
                                    <div class="middle">
                                     <div class="text"><a href="/cong/formulaire_demandecong">Congé</a></div>
                                     </div>
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
  background-color: IndianRed;
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
 <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>

 <!-- Light Bootstrap Table Core javascript and methods for Demo purpose -->
 <script src="/assets/js/light-bootstrap-dashboard.js?v=1.4.0"></script>

 <!-- Light Bootstrap Table DEMO methods, don't include it in your project! -->
 <script src="/assets/js/demo.js"></script>

</html>

