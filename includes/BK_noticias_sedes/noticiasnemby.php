<!DOCTYPE html>
   <!-- Cabecera -->
   <?php
    include 'cabeceranembynoti.php';
    include 'conexion.php';    
    ?>
      
  

    <!-- END nav -->
    
    <section class="hero-wrap hero-wrap-2" style="background-image: url('../includes/sedes/Ñemby.jpg');">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
          <div class="col-md-9 ftco-animate text-center">
            <h1 class="mb-2 bread">Noticias - Ñemby</h1>
             <p class="breadcrumbs"><span class="mr-2"><a href="../index.php">Inicio <i class="ion-ios-arrow-forward"></i></a></span> <span class="mr-2"><a href="../sedes.php">Sedes <i class="ion-ios-arrow-forward"></i></a></span> <span> <a href="Nemby.php">Sede Ñemby <i class="ion-ios-arrow-forward"></i></a></span></p>
          </div>
        </div>
      </div>
    </section>
 

    <?php  
          
          $n_por_pagina=3;
          $inicar=($_GET['pagina']-1)*$n_por_pagina;

            $query = mysqli_query($conn, "SELECT *FROM v_noticias_nemby LIMIT  $inicar, $n_por_pagina;")
                                            or die('error: '.mysqli_error($conn));

            $sql = "SELECT COUNT(*) total FROM v_noticias_nemby";

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


           $noticias_por_pagina=3;
         
           $paginas=ceil($total_paginas/$noticias_por_pagina);
         
         // echo $paginas;
	    ?>


      <table class="table table-dark">
  

              
		<section class="ftco-section" >
  
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
<img src="../images/icono_facebook.png" width="120" height="120" alt="Image placeholder" class="img-fluid mb-4">
</a>
</p>
<hr>
<?php
}

?>

            
            <!--<div class="tag-widget post-tag-container mb-5 mt-5">
              <div class="tagcloud">
                <a href="#" class="tag-cloud-link">Life</a>
                <a href="#" class="tag-cloud-link">Sport</a>
                <a href="#" class="tag-cloud-link">Tech</a>
                <a href="#" class="tag-cloud-link">Travel</a>
              </div>
            </div>-->
        <!--    <h2>Funcionarios</h2>
            <div class="about-author d-flex p-4 bg-light">
              <div class="bio mr-5">
              <a title="Los Tejos" href="http://www.lostejos.com">  <img src="../images/funcionarios/Abg. Ryan Ferreira - Fernando de la Mora.jpg" width="120" height="120" alt="Image placeholder" class="img-fluid mb-4">
              </a>
              </div>
              <div class="desc">
                <h3>Abog. Ryan Ferreira</h3>
                <p>Dirección de Sede</p>
              </div>
            </div>

            <div class="about-author d-flex p-4 bg-light">
              <div class="bio mr-5">
                <a href="../images/funcionarios/Plantel_Fernando.jpg" target=_bank><img src="../images/funcionarios/plantel.png" width="350" height="250" alt="" class="img-fluid mb-4"></a>
              </div>              
            </div>

            <div class="about-author d-flex p-4 bg-light">
              <div class="bio mr-5">
                <img src="../images/funcionarios/Daniela Godoy - Ing Comercial -Fernando.jpg" width="120" height="120" alt="Image placeholder" class="img-fluid mb-4">
              </div>
              <div class="desc">
                <h3>Daniela Godoy</h3>
                <p>Representante Estudiantil</p>
              </div>

             
            </div>
            <div  align=center>
            <h2>Dirección</h2>
            
            <p><a href="https://goo.gl/maps/iz3snxPKdF2rAgGh9"target="_blank"><img src="../images/iconos/ubicacion.png" alt=""> <a></p>								
              <p>Atyrá 1750 c/ Capitán Rivas</p>
               <p><img src="../images/iconos/telefono.png" alt=""> Tels. (021) 575 276 / 7 / (0971) 596 992 </p>
           </div>
            


            <div class="pt-5 mt-5">              
              <ul class="comment-list">
                <li class="comment">
                <h3 class="mb-5 h4 font-weight-bold">Servicios a la Comunidad</h3>
                  <div class="vcard bio">
                    <img src="../images/funcionarios/Abg.-Synthia-Chamorro.jpg"  alt="Image placeholder">
                  </div>
                  <div class="comment-body">
                    <h3>Consultorio Jurídico Gratuito</h3>
                    <h3>Abg. Synthia Chamorro</h3>
                   <div class="meta mb-2"><strong>Horario de atención: Martes y miércoles de 14:00 a 16:30 horas</strong></div>
                    <p><strong>Horario de atención: Martes y miércoles de 14:00 a 16:30 horas</strong></p>
                  <p><a href="#" class="reply">Reply</a></p>
                  </div>
                </li>

                <li class="comment">
                <div class="vcard bio">
                    <img src="../images/funcionarios/CPN-Liz-Villalba.jpg"  alt="Image placeholder">
                  </div>
                  <div class="comment-body">
                    <h3>Gabinete Empresarial Gratuito – Ciencias Contables</h3>
                    <h3>CPN Liz Villalba</h3>
                    <p>Tutora del Gabinete Empresarial</p>
                    <div class="meta mb-2"><strong>Horario de atención: Martes y miércoles de 14:00 a 16:30 horas</strong></div>
                    <p><strong>Horario de atención: Lunes a viernes de 14:00 a 18:00 horas</strong></p>
                 <p><a href="#" class="reply">Reply</a></p>
                  </div>

                  <li class="comment">
                <div class="vcard bio">
                    <img src="../images/funcionarios/Lic.-Carlos-Sosa.jpg"  alt="Image placeholder">
                  </div>
                  <div class="comment-body">
                    <h3>Gabinete Empresarial Gratuito – Ciencias Administrativas</h3>
                    <h3>Lic. Carlos Sosa</h3>
                    <p>Tutor del Gabinete Empresarial</p>
                  <div class="meta mb-2"><strong>Horario de atención: Martes y miércoles de 14:00 a 16:30 horas</strong></div>
                    <p><strong>Horario de atención: Lunes a viernes de 14:00 a 18:00 horas</strong></p>
                  <p><a href="#" class="reply">Reply</a></p>
                  
                  <li class="comment">
                <div class="vcard bio">
                    <img src="../images/funcionarios/Lic.-Amada-Lpez.jpg"  alt="Image placeholder">
                  </div>
                  <div class="comment-body">
                    <h3>Gabinete Empresarial Gratuito – Ciencias Administrativas</h3>
                    <h3>Lic. Carlos Sosa</h3>
                    <p>Tutor del Gabinete Empresarial</p>
                  <div class="meta mb-2"><strong>Horario de atención: Martes y miércoles de 14:00 a 16:30 horas</strong></div>
                    <p><strong>Horario de atención: Lunes a viernes de 14:00 a 18:00 horas</strong></p>
                    <p><a href="#" class="reply">Reply</a></p>
                  </div>


                    
                        </li>
                      </ul>
                    </li>
                  </ul>
                </li>

             
              </ul>
              END comment-list -->
              
              <!--<div class="comment-form-wrap pt-5">
                <h3 class="mb-5 h4 font-weight-bold">Leave a comment</h3>
                <form action="#" class="p-5 bg-light">
                  <div class="form-group">
                    <label for="name">Name *</label>
                    <input type="text" class="form-control" id="name">
                  </div>
                  <div class="form-group">
                    <label for="email">Email *</label>
                    <input type="email" class="form-control" id="email">
                  </div>
                  <div class="form-group">
                    <label for="website">Website</label>
                    <input type="url" class="form-control" id="website">
                  </div>

                  <div class="form-group">
                    <label for="message">Message</label>
                    <textarea name="" id="message" cols="30" rows="10" class="form-control"></textarea>
                  </div>
                  <div class="form-group">
                    <input type="submit" value="Post Comment" class="btn py-3 px-4 btn-primary">
                  </div>

                </form>
              </div>
            </div>-->
      <!--    </div>  .col-md-8 -->

         <!--   <div class="col-lg-4 sidebar ftco-animate">
            <div class="sidebar-box">
            <form action="#" class="search-form">
                <div class="form-group">
                  <span class="icon icon-search"></span>
                  <input type="text" class="form-control" placeholder="Type a keyword and hit enter">
                </div>
              </form>-->
           
             <!--<div class="sidebar-box ">
            	<h2>Carreras de Grado</h2>
              <ul class="categories">
                <li>Ciencias Administrativas</li>
                <li>Ciencias Contables</li>
                <li>Ingeniería Comercial</li>
                <li>Comercio Exterior</li>
                <li>Análisis de Sistemas Informáticos</li>
                <li>Psicológico</li>
                <li>Derecho</li>
              </ul>
            </div>

            </div>
             
            <div class="sidebar-box ">
            	<h2>Servicios a la comunidad</h2>
              <ul class="categories">


                <li>
                <p>
                <div class="vcard bio">                    
                    <h3>Consultorio Jurídico Gratuito</h3>
                    <img src="../images/funcionarios/Abg.-Synthia-Chamorro.jpg" width="100" height="100"  alt="Image placeholder">
                  </div>
                  <div class="comment-body">
                    <h3>Abg. Synthia Chamorro</h3>
                    -->
                    <!--<div class="meta mb-2"><strong>Horario de atención: Martes y miércoles de 14:00 a 16:30 horas</strong></div>-->
                  <!--   <p><strong>Horario de atención: Martes y miércoles de 14:00 a 16:30 horas</strong></p>
                   <p><a href="#" class="reply">Reply</a></p>
                  </div>     
                </p>
                </li>



                <li>
                <p>                
                <div class="comment-body">
                  <h3>Gabinete Empresarial Gratuito – Ciencias Contables</h3>
                  <div class="vcard bio">
                  <img src="../images/funcionarios/CPN-Liz-Villalba.jpg" width="100" height="100" alt="Image placeholder">
                </div>
                  <h3>CPN Liz Villalba</h3>
                  <p>Tutora del Gabinete Empresarial</p>-->
                  <!--<div class="meta mb-2"><strong>Horario de atención: Martes y miércoles de 14:00 a 16:30 horas</strong></div>
                  <p><strong>Horario de atención: Lunes a viernes de 14:00 a 18:00 horas</strong></p>
                 <p><a href="#" class="reply">Reply</a></p>
                </div>
                </p>
                </li>


               <li>
                <p>                
                <div class="comment-body">
                  <h3>Gabinete Empresarial Gratuito – Ciencias Administrativas</h3>
                  <div class="vcard bio">
                  <img src="../images/funcionarios/Lic.-Carlos-Sosa.jpg" width="100" height="100" alt="Image placeholder">
                </div>
                  <h3>Lic. Carlos Sosa</h3>
                  <p>Tutor del Gabinete Empresarial</p>
                <div class="meta mb-2"><strong>Horario de atención: Martes y miércoles de 14:00 a 16:30 horas</strong></div>
                  <p><strong>Horario de atención: Lunes a viernes de 14:00 a 18:00 horas</strong></p>
                 <p><a href="#" class="reply">Reply</a></p>
                </div>
                </p>
                </li>


               <li>
                <p>                
                <div class="comment-body">
                  <h3>Consultorio de Orientación y Consejería Psicológica Gratuito</h3>
                  <div class="vcard bio">
                  <img src="../images/funcionarios/Lic.-Amada-Lpez.jpg" width="100" height="100" alt="Image placeholder">
                </div>
                  <h3>Lic. Amada López</h3>
                  <p>Tutora del Consultorio de Orientación y Consejería Psicológica</p>
                 <div class="meta mb-2"><strong>Horario de atención: Martes y miércoles de 14:00 a 16:30 horas</strong></div>
                  <p><strong>Horario de atención: Lunes a viernes de 13:00 a 18:00 horas</strong></p>
                 <p><a href="#" class="reply">Reply</a></p>
                </div>
                </p>
                </li>

              </ul>
            </div> -->
<!--
            <div class="sidebar-box ftco-animate">
              <h3>Popular Articles</h3>
              <div class="block-21 mb-4 d-flex">
                <a class="blog-img mr-4" style="background-image: url(images/image_1.jpg);"></a>
                <div class="text">
                  <h3 class="heading"><a href="#">Even the all-powerful Pointing has no control about the blind texts</a></h3>
                  <div class="meta">
                    <div><a href="#"><span class="icon-calendar"></span> June 27, 2019</a></div>
                    <div><a href="#"><span class="icon-person"></span> Dave Lewis</a></div>
                    <div><a href="#"><span class="icon-chat"></span> 19</a></div>
                  </div>
                </div>
              </div>
              <div class="block-21 mb-4 d-flex">
                <a class="blog-img mr-4" style="background-image: url(images/image_2.jpg);"></a>
                <div class="text">
                  <h3 class="heading"><a href="#">Even the all-powerful Pointing has no control about the blind texts</a></h3>
                  <div class="meta">
                    <div><a href="#"><span class="icon-calendar"></span> June 27, 2019</a></div>
                    <div><a href="#"><span class="icon-person"></span> Dave Lewis</a></div>
                    <div><a href="#"><span class="icon-chat"></span> 19</a></div>
                  </div>
                </div>
              </div>
              <div class="block-21 mb-4 d-flex">
                <a class="blog-img mr-4" style="background-image: url(images/image_3.jpg);"></a>
                <div class="text">
                  <h3 class="heading"><a href="#">Even the all-powerful Pointing has no control about the blind texts</a></h3>
                  <div class="meta">
                    <div><a href="#"><span class="icon-calendar"></span> June 27, 2019</a></div>
                    <div><a href="#"><span class="icon-person"></span> Dave Lewis</a></div>
                    <div><a href="#"><span class="icon-chat"></span> 19</a></div>
                  </div>
                </div>
              </div>
            </div>

            <div class="sidebar-box ftco-animate">
              <h3>Tag Cloud</h3>
              <ul class="tagcloud m-0 p-0">
                <a href="#" class="tag-cloud-link">School</a>
                <a href="#" class="tag-cloud-link">Kids</a>
                <a href="#" class="tag-cloud-link">Nursery</a>
                <a href="#" class="tag-cloud-link">Daycare</a>
                <a href="#" class="tag-cloud-link">Care</a>
                <a href="#" class="tag-cloud-link">Kindergarten</a>
                <a href="#" class="tag-cloud-link">Teacher</a>
              </ul>
            </div>
            <div class="sidebar-box ftco-animate">
            	<h3>Actividades</h3>
              <ul class="categories">
              	<li>Actividades de Sede<a href="https://www.facebook.com/utic.mora.1/" target=_bank> <span>Ver Actividades</span></a></li>
              
              </ul>
            </div>-->


         <!--   <div class="sidebar-box ftco-animate">
              <h3><strong>Docentes</strong></h3>
              <p>Docentes Investigadores <span><a href="../images/funcionarios/docen_inves_fernando.jpeg" target=_bank> -> Ver</a></span></p>
              <p>Docentes a tiempo completo<span><a href="../images/funcionarios/Fernando de la Mora DTC.jpg" target=_bank> -> Ver</a></span></p>
          --->
          	<!--FIN DE NOTICIAS PHP -->

   
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

    <a class="page-link" href="noticiasnemby.php?pagina=<?php echo $_GET['pagina']-1?> ">
    Anterior
    </a>
    </li>
    <?php 

    for($i=0;$i<$paginas;$i++) :?>
      <li class="page-item <?php echo $_GET['pagina']==$i+1 ? 'active': '' ?>">  
        <a class="page-link" href="noticiasnemby.php?pagina=<?php echo $i+1;?>">
        <?php echo $i+1;?>  
        </a> 
      </li>
   
     <?php
    endfor
    ?>



    <li class="page-item <?php echo $_GET['pagina']>=$paginas ? 'disabled' : ''?>">    
    <a class="page-link" href="noticiasnemby.php?pagina=<?php echo $_GET['pagina']+1?> ">
Siguiente</a></li>
  </ul>
</nav>
</div>


    <?php
    include 'pysedes.php';
    ?>
    
  

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#002441"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#efb810"/></svg></div>


  <script src="../js/jquery.min.js"></script>
  <script src="../js/jquery-migrate-3.0.1.min.js"></script>
  <script src="../js/popper.min.js"></script>
  <script src="../js/bootstrap.min.js"></script>
  <script src="../js/jquery.easing.1.3.js"></script>
  <script src="../js/jquery.waypoints.min.js"></script>
  <script src="../js/jquery.stellar.min.js"></script>
  <script src="../js/owl.carousel.min.js"></script>
  <script src="../js/jquery.magnific-popup.min.js"></script>
  <script src="../js/aos.js"></script>
  <script src="../js/jquery.animateNumber.min.js"></script>
  <script src="../js/scrollax.min.js"></script>
  <script src="../https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="../js/google-map.js"></script>
  <script src="../js/main.js"></script>
    
  </body>
</html>
