<!DOCTYPE html>

   <!-- Cabecera -->
   <?php
    include 'includes/cabecera.php';
    ?>
   


<div style="background-color:#002441;"> 
	  <nav class="navbar navbar-expand-lg navbar-dark bg-dark ftco-navbar-light" id="ftco-navbar">
	    <div class="container d-flex align-items-center px-4">
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="oi oi-menu"></span> Menu
	      </button>
	     <!-- <form action="#" class="searchform order-lg-last">
          <div class="form-group d-flex">
            <input type="text" class="form-control pl-3" placeholder="Search">
            <button type="submit" placeholder="" class="form-control search"><span class="ion-ios-search"></span></button>
          </div>
        </form> -->
	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav mr-auto">
	        	        <li class="nav-item"><a href="index.php" class="nav-link pl-0">Inicio</a></li>
                    <li class="nav-item"><a href="sobrenosotros.php" class="nav-link">La UTIC</a></li>
                    <li class="nav-item"><a href="bienestar.php" class="nav-link">Bienestar Institucional</a></li>
					<li class="nav-item active" ><a href="carreras.php" class="nav-link">Carreras</a></li>
					<li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="postgrado.php" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Programas de Postgrado
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="diplomados.php">Diplomados</a>
		  <a class="dropdown-item" href="especializaciones.php">Especializaciones</a>
		  <a class="dropdown-item" href="maestrias.php">Maestrías</a>
		  <a class="dropdown-item" href="doctorados.php">Doctorados</a>         
      </li>                    <li class="nav-item"><a href="sedes.php" class="nav-link">Sedes</a></li>
                     <!--  <li class="nav-item"><a href="blog.php" class="nav-link">Blog</a></li>
					<li class="nav-item"><a href="contacto.php" class="nav-link">Contactos</a></li>-->
					<li class="nav-item"><a href="https://www.messenger.com/login.php?next=https%3A%2F%2Fwww.messenger.com%2Ft%2Futic.edu" target=_bank class="nav-link">Contactos</a></li>

	        </ul>
	      </div>
	    </div>
	  </nav>
</div>
    <!-- END nav -->
    
    <section class="hero-wrap hero-wrap-2" style="background-image: url('images/slide/Egresados.jpg');">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
          <div class="col-md-9 ftco-animate text-center">
            <h1 class="mb-2 bread">Carreras de Grado</h1>
            <p class="breadcrumbs"><span class="mr-2"><a href="index.php">Inicio <i class="ion-ios-arrow-forward"></i></a></span> <span>Carreras <i class="ion-ios-arrow-forward"></i></span></p>
          </div>
        </div>
      </div>
    </section>

    <section class="ftco-section">
			<div class="container-fluid px-4">
				<div class="row">

					<div class="col-md-4 course ftco-animate">
						<div class="img" style="background-image: url(images/grado/ccontables.jpg);"></div>
						<div class="text pt-4">
							<p class="meta d-flex">
							<span><i class="icon-user mr-2"></i>Título: Licenciado en Ciencias Contables</span>

							<!--<span><i class="icon-table mr-2"></i>Turnos: Mañana-Noche</span>-->
							<span><i class="icon-calendar mr-2"></i>5 Años</span>
							</p>
							<h3><strong>Ciencias Contables</strong></h3>
						<!--	<p><a href="#" class="btn btn-primary" >Apply now</a></p>-->
						<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalLongCONTABLES">
 							 Ver Carrera
						</button>
						</div>
					</div>

					<div class="col-md-4 course ftco-animate">
					<div class="img" style="background-image: url(images/grado/cadministrativas.jpg);"></div>
						<div class="text pt-4">
							<p class="meta d-flex">
							<span><i class="icon-user mr-2"></i>Título: Licenciado en Ciencias Administrativas</span>
							<span><i class="icon-calendar mr-2"></i>5 Años</span>
							</p>
							<h3><strong>Ciencias Administrativas</strong></h3>
							<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalLongADMINISTRACION">
 							 Ver Carrera
						</button>						
					</div>
					</div>

					<div class="col-md-4 course ftco-animate">
					<div class="img" style="background-image: url(images/grado/icomercial.jpg);"></div>
						<div class="text pt-4">
							<p class="meta d-flex">
							<span><i class="icon-user mr-2"></i>Título: Ingeniero Comercial</span>
							<span><i class="icon-calendar mr-2"></i>5 Años</span>
							</p>
							<h3><strong>Ingeniería Comercial</strong></h3>
							<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalLongCOMERCIAL">
 							 Ver Carrera
						</button>
						</div>
					</div>

					<div class="col-md-4 course ftco-animate">
					<div class="img" style="background-image: url(images/grado/cexterior.jpg);"></div>
						<div class="text pt-4">
							<p class="meta d-flex">
							<span><i class="icon-user mr-2"></i>Título: Ingeniero en Comercio Exterior</span>
							<span><i class="icon-calendar mr-2"></i>4 Años</span>
							</p>
							<h3><strong>Comercio Exterior</strong></h3>
							<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalLongCOMERCIO">
 							 Ver Carrera
						</button>		
						</div>
					</div>

					<div class="col-md-4 course ftco-animate">
					<div class="img" style="background-image: url(images/grado/marketing.jpg);"></div>
						<div class="text pt-4">
							<p class="meta d-flex">
							<span><i class="icon-user mr-2"></i>Título: Licenciado en Marketing</span>
							<span><i class="icon-calendar mr-2"></i>4 Años</span>
							</p>
							<h3><strong>Marketing</strong></h3>
							<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalLongMARKETING">
 							 Ver Carrera
						</button>						
						</div>
					</div>

					<div class="col-md-4 course ftco-animate">
					<div class="img" style="background-image: url(images/grado/aai.jpg);"></div>
							<div class="text pt-4">
							<p class="meta d-flex">
							<span><i class="icon-user mr-2"></i>Título: Licenciado en Administración Agroecológica e Industrial</span>
							<span><i class="icon-calendar mr-2"></i>5 Años</span>
							</p>
						
							<h3><strong>Administración Agroecológica e Industrial</strong></h3>
							<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalLongAGRO">
 							 Ver Carrera
						</button>	
						</div>
					</div>

					<div class="col-md-4 course ftco-animate">
					<div class="img" style="background-image: url(images/grado/ht.jpg);"></div>
						<div class="text pt-4">
							<p class="meta d-flex">
							<span><i class="icon-user mr-2"></i>Título: Licenciado en Hotelería  Turismo</span>
							<span><i class="icon-calendar mr-2"></i>4 Años</span>
							</p>
							<h3><strong>Hotelería y Turismo</strong></h3>
							<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalHOTELERIA">
 							 Ver Carrera
						</button>	
						</div>
					</div>

					<div class="col-md-4 course ftco-animate">
					<div class="img" style="background-image: url(images/grado/asi.jpg);"></div>
						<div class="text pt-4">
							<p class="meta d-flex">
							<span><i class="icon-user mr-2"></i>Título: Licenciado en Análisis de Sistemas Informáticoso</span>
							<span><i class="icon-calendar mr-2"></i>4 Años</span>
							</p>
							<h3><strong>Análisis de Sistemas Informáticos</strong></h3>
							<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalINFO">
 							 Ver Carrera
						</button>	
						</div>
					</div>

					<div class="col-md-4 course ftco-animate">
					<div class="img" style="background-image: url(images/grado/Enfermeria.jpg);"></div>
						<div class="text pt-4">
							<p class="meta d-flex">
							<span><i class="icon-user mr-2"></i>Título: Licenciado en Enfermería</span>
							<!--<span><i class="icon-table mr-2"></i>Turnos: Mañana-Noche</span>-->
							<span><i class="icon-calendar mr-2"></i>4 Años</span>
							</p>
							<h3><strong>Enfermería</strong></h3>
							<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalENFERMERIA">
 							 Ver Carrera
						</button>	
						</div>
					</div>

					<div class="col-md-4 course ftco-animate">
					<div class="img" style="background-image: url(images/grado/psico.jpg);"></div>
						<div class="text pt-4">
							<p class="meta d-flex">
							<span><i class="icon-user mr-2"></i>Título: Licenciado en Psicología</span>
							<!--<span><i class="icon-table mr-2"></i>Turnos: Mañana-Noche</span>-->
							<span><i class="icon-calendar mr-2"></i>5 Años</span>
							</p>
							<h3><strong>Psicología</strong></h3>
							<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalPSICOLOGIA">
 							 Ver Carrera
						</button>	
						</div>
					</div>

					<div class="col-md-4 course ftco-animate">
					<div class="img" style="background-image: url(images/grado/cc.jpg);"></div>
						<div class="text pt-4">
							<p class="meta d-flex">
							<span><i class="icon-user mr-2"></i>Título: Licenciado en Ciencias de la Comunicación</span>
							<!--<span><i class="icon-table mr-2"></i>Turnos: Mañana-Noche</span>-->
							<span><i class="icon-calendar mr-2"></i>4 Años</span>
							</p>
							<h3><strong>Ciencias de la Comunicación</strong></h3>
							<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalCOMUNICACION">
 							 Ver Carrera
						</button>	
						</div>
					</div>

					<div class="col-md-4 course ftco-animate">
					<div class="img" style="background-image: url(images/grado/ep.jpg);"></div>
						<div class="text pt-4">
							<p class="meta d-flex">
							<span><i class="icon-user mr-2"></i>Título: Licenciado en Educación Parvularia</span>
							<!--<span><i class="icon-table mr-2"></i>Turnos: Mañana-Noche</span>-->
							<span><i class="icon-calendar mr-2"></i>4 Años</span>
							</p>
							<h3><strong>Educación Parvularia</strong></h3>
							<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalPARVULARIA">
 							 Ver Carrera
						</button>	
						</div>
					</div>

					<div class="col-md-4 course ftco-animate">
					<div class="img" style="background-image: url(images/grado/cde.jpg);"></div>
						<div class="text pt-4">
							<p class="meta d-flex">
							<span><i class="icon-user mr-2"></i>Título: Licenciado en Ciencias de la Educación</span>
							<!--<span><i class="icon-table mr-2"></i>Turnos: Mañana-Noche</span>-->
							<span><i class="icon-calendar mr-2"></i>4 Años</span>
							</p>
							<h3><strong>Ciencias de la Educación</strong></h3>
							<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalEDUCACION">
 							 Ver Carrera
						</button>	
						</div>
					</div>

					<div class="col-md-4 course ftco-animate">
					<div class="img" style="background-image: url(images/grado/Derecho.jpg);"></div>
						<div class="text pt-4">
							<p class="meta d-flex">
							<span><i class="icon-user mr-2"></i>Título: Abogado</span>
							<!--<span><i class="icon-table mr-2"></i>Turnos: Mañana-Noche</span>-->
							<span><i class="icon-calendar mr-2"></i>5 Años</span>
							</p>
							<h3><strong>Derecho</strong></h3>
							<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalDERECHO">
 							 Ver Carrera
						</button>	
						</div>
					</div>

					<div class="col-md-4 course ftco-animate">
					<div class="img" style="background-image: url(images/grado/mate.jpg);"></div>
						<div class="text pt-4">
							<p class="meta d-flex">
							<span><i class="icon-user mr-2"></i>Título: Licenciado en Matemática</span>
							<!--<span><i class="icon-table mr-2"></i>Turnos: Mañana-Noche</span>-->
							<span><i class="icon-calendar mr-2"></i>4 Años</span>
							</p>
							<h3><strong>Matemática</strong></h3>
							<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalMATEMATICA">
 							 Ver Carrera
						</button>	
						</div>
					</div>

				</div>
			</div>
		</section>


		<?php
	include 'includes/carreras/includecarreras_1.php';
		?>

		<?php
	include 'includes/carreras/includecarreras_2.php';
		?>
		<?php
	include 'includes/carreras/includecarreras_3.php';
		?>

		<?php
	include 'includes/carreras/includecarreras_4.php';
		?>

		<?php
	include 'includes/carreras/includecarreras_5.php';
		?>
		<?php
	include 'includes/carreras/includecarreras_6.php';
		?>
		<?php
	include 'includes/carreras/includecarreras_7.php';
		?>
		<?php
	include 'includes/carreras/includecarreras_8.php';
		?>
		<?php
	include 'includes/carreras/includecarreras_9.php';
		?>
		<?php
	include 'includes/carreras/includecarreras_10.php';
		?>
				<?php
	include 'includes/carreras/includecarreras_11.php';
		?>
		<?php
	include 'includes/carreras/includecarreras_12.php';
		?>

		<?php
	include 'includes/carreras/includecarreras_12.php';
		?>
		<?php
	include 'includes/carreras/includecarreras_13.php';
		?>
				<?php
	include 'includes/carreras/includecarreras_14.php';
		?>
		<?php
	include 'includes/carreras/includecarreras_15.php';
		?>




    <!-- Py de pagina--->
	<?php 
    include 'includes/py.php';
    ?>

  

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#002441"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#efb810"/></svg></div>


  <script src="js/jquery.min.js"></script>
  <script src="js/jquery-migrate-3.0.1.min.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquery.easing.1.3.js"></script>
  <script src="js/jquery.waypoints.min.js"></script>
  <script src="js/jquery.stellar.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.magnific-popup.min.js"></script>
  <script src="js/aos.js"></script>
  <script src="js/jquery.animateNumber.min.js"></script>
  <script src="js/scrollax.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="js/google-map.js"></script>
  <script src="js/main.js"></script>
    
  </body>
</html>
