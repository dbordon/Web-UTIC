<!DOCTYPE html>
   <!-- Cabecera -->
   <?php
     include 'includes/cabecera.php';

     include 'includes/conexion.php';   
    ?>
      



    <!-- END nav -->
    
    <section class="hero-wrap hero-wrap-2" style="background-image: url('images/slide/Egresados.jpg');">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
          <div class="col-md-9 ftco-animate text-center">
            <h1 class="mb-2 bread">Noticias destacadas</h1>
             <p class="breadcrumbs"><span class="mr-2"><a href="index.php">Inicio <i class="ion-ios-arrow-forward"></i></a></span> <span> <a href="destacados.php?pagina=1">Noticias destacadas <i class="ion-ios-arrow-forward"></i></a></span></p>
          </div>
        </div>
      </div>
    </section>
 

    <?php  
          
          $n_por_pagina=5;
          $inicar=($_GET['pagina']-1)*$n_por_pagina;

            $query = mysqli_query($conn, "SELECT *FROM v_noticiass ORDER BY fecha_publicacion DESC  LIMIT  $inicar, $n_por_pagina;")
                                            or die('error: '.mysqli_error($conn));

            $sql = "SELECT COUNT(*) total FROM v_noticias_destacadas";

           $query2 = mysqli_query($conn, $sql)
           or die('error: '.mysqli_error($conn));

           while ($data2 = mysqli_fetch_assoc($query2))  {
             $total_paginas= $data2['total'];
           }
           
            while ($data = mysqli_fetch_assoc($query)) {
              
          
           $categoria= utf8_encode($data['descrip_categoria']);
           $sede= utf8_encode($data['descrip_sede']);
           $titulo= utf8_encode($data['titulo']);
           $foto= $data['foto'];
           $texto= $data['texto'];
           $enlace= $data['enlace'];
           $fecha = date('d/m/Y', strtotime($data['fecha_publicacion']));

           $noticias_por_pagina=5;
         
           $paginas=ceil($total_paginas/$noticias_por_pagina);
         
         // echo $paginas;
	    ?>


      <table class="table table-dark">              
		<section class="ftco-section" id="pagina1">  
			<div class="container">
				<div class="row">
          <div class="col-lg-8 ftco-animate">            
            <h2 class="mb-3"><?php echo utf8_decode($titulo); ?></h2>
           <p>Categoría:<strong> <?php echo "$categoria"; ?></strong></p>
            <p> Sede:<strong> <?php echo "$sede"; ?></strong></p>
            <p>  Fecha de publicación:<strong> <?php echo "$fecha"; ?></strong>
            </p>
        <p>  <img src="http://www.utic.edu.py/webnoticias/<?php echo $foto; ?>" alt="" class="img-fluid">
           </p>
            <p align="left"><?php
            echo $texto;            
            ?></p>
<p align="center">
<a href="<?php echo $enlace; ?>" target=_bank> Ver más
<img src="images/icono_facebook.png" width="120" height="120" alt="Image placeholder" class="img-fluid mb-4">
</a>
</p>
<hr>
<?php
}

?>

          
   
            </div>
          </div><!-- END COL -->
        </div>
			</div>
		</section>
    </table>
<hr>
<div class=container>
<nav  aria-label="Page navigation example">
  <ul class="pagination">
    <li class="page-item <?php echo $_GET['pagina']<=1 ? 'disabled' : ''?>">

    <a class="page-link" href="destacados.php?pagina=<?php echo $_GET['pagina']-1?> ">
    Anterior
    </a>
    </li>
    <?php 

    for($i=0;$i<$paginas;$i++) :?>
      <li class="page-item <?php echo $_GET['pagina']==$i+1 ? 'active': '' ?>">  
        <a class="page-link" href="destacados.php?pagina=<?php echo $i+1;?>">
        <?php echo $i+1;?>  
        </a> 
      </li>
   
     <?php
    endfor
    ?>



    <li class="page-item <?php echo $_GET['pagina']>=$paginas ? 'disabled' : ''?>">    
    <a class="page-link" href="destacados.php?pagina=<?php echo $_GET['pagina']+1?> ">
Siguiente</a></li>
  </ul>
</nav>
</div>


    <?php
    include 'includes/py.php';
    ?>
    
  

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#002441"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


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
