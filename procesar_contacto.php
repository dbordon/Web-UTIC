<!DOCTYPE html>
<META HTTP-EQUIV="REFRESH" CONTENT="10;URL=http://www.utic.edu.py/v7/contactos.php">

<?php


      include 'includes/cabeceracontactos.php';
     include 'includes/conexion_contactos.php';

     $secret = "6Leg5r4ZAAAAAMj-_XZdVbgeoyW2Vv7ny0WdftW2";
     if (isset($_POST['g-recaptcha-response'])) {
    $captcha = $_POST['g-recaptcha-response']; 
    $url = 'https://www.google.com/recaptcha/api/siteverify';
    $data = array(
      'secret' => $secret,
      'response' => $captcha,
      'remoteip' => $_SERVER['REMOTE_ADDR']
      );
      $curlConfig = array(
        CURLOPT_URL => $url,
        CURLOPT_POST => true,
        CURLOPT_RETURNTRANSFER => true,
        CURLOPT_POSTFIELDS => $data
        );

        $ch = curl_init();
        curl_setopt_array($ch, $curlConfig);
        $response = curl_exec($ch);
        curl_close($ch);
     }
     $jsonResponse = json_decode($response);
     if ($jsonResponse->success === true) {


    if(filter_input(INPUT_POST, 'btnEnviar'))  {
          
              // creamos las variables para subir a la db
                $persona= $_POST['persona'];
                $celular= $_POST['celular'];         
                $email= $_POST['email'];
                $tema= $_POST['tema'];
                $consulta= $_POST['consulta'];
                $estado='PENDIENTE'; 
       
           $insertar = "INSERT INTO consulta_web (persona, celular, email, tema, consulta, fecha_consulta, estado) 
       VALUES('$persona', '$celular','$email','$tema','$consulta', CURDATE( ),'$estado');";
       
       $resultado=mysqli_query($conn, $insertar);
          
       }
      } else { 

       echo "error de recaptcha";
        
        }
       ?>

                  
<div class="jumbotron">

<div class="container">
<div class="row">
    <div class="col-md-12">
    <div class="well well-sm">
    <?php
     if($resultado){
     
      echo "<span>Tu mensaje ha sido recibido exitosamente. </span>";
      echo "<br>";
      echo "<span>El equipo de Marketing te contactará en la brevedad posible </span>";
      echo "<br>";
      echo "<span>o también puedes contactarnos a los siguientes números: </span>";
      echo "<br>";
      echo "<span> 0982 466 412 o al *590 gratis desde tu Tigo </span>";?>

      <span><a class="abc" href="https://api.whatsapp.com/send?phone=+595971904922" target="_blank"><img src="images/whatsapp.png" alt=""></a></span>

      <?php 
      echo "<br>";

  
  }
  else{
      echo "<h2>Ya se encuentran Registros con esos datos :)</h2>";      
  } 

    ?>

        
    </div>
   
</div>
</div>
</div>
</div>
  <!-- loader -->
  <?php 
    include 'includes/py.php';
    ?>
    
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
