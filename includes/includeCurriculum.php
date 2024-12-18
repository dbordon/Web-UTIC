<?php

include '../config/conexion.php';
 if(is_uploaded_file($_FILES['adjunto']['tmp_name'])) { 

    echo 'hasta aca funciona';
    $ruta = "archivos/";
    $nombrefinal= trim ($_FILES['adjunto']['name']); //Eliminamos los espacios en blanco
    $nombrefinal= ereg_replace (" ", "", $nombrefinal);//Sustituye una expresión regular
    $upload= $ruta . $nombrefinal; 
    
    $subir=move_uploaded_file($_FILES['adjunto']['tmp_name'], $upload);

          $nombre = strtoupper($_POST['nombres']);
          $apellidos = strtoupper($_POST['apellidos']);
          $cedula = $_POST['ci'];
          $telefono = $_POST['telefono'];
          $sede = ($_POST['seleccionado']);


      $query = mysqli_query($mysqli, "INSERT INTO curriculumn (nombres, apellidos, ci, telefono, adjunto, id_sede) 
      VALUES ('$nombre', '$apellidos', '$cedula', '$telefono', '$subir',$sede)")
                                      or die('error al insertar'.mysqli_error($mysqli));    
          if ($query) {
            echo 'insertado correctamente';
              /*header("location: ../../main.php?module=segundo&alert=2");*/
          }
          else {
            echo 'problemas de insertado';
          }         
      
  


    mysqli_close($conn);


}
?>


<div class="modal fade" id="regiscurri" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Registrar tus datos </h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form  action="registrar.php" method="POST" enctype="multipart/form-data">
        <div class="form-group">
            <label for="recipient-name" class="col-form-label">Nombre/s:</label>
            <input type="text" class="form-control" id="nombres">
          </div>

          <div class="form-group">
            <label for="recipient-name" class="col-form-label">Apellido/s:</label>
            <input type="text" class="form-control" id="apellidos">
          </div>

          <div class="form-group">
            <label for="recipient-name" class="col-form-label">Nro de Cédula de identidad</label>
            <input type="number" class="form-control" id="ci">
          </div>

          <div class="form-group">
            <label for="recipient-name" class="col-form-label">Nro de Teléfono</label>
            <input type="number" class="form-control" id="telefono">
          </div>

          <div class="form-group col-md-12">

<label for="sede">Sede o ciudad donde te gustaría trabajar</label>
<select name="seleccionado"  class="form-control">
<?php
include 'config/conexion.php';
$query=mysqli_query($conn, "select *from sedes");             
while($dato= mysqli_fetch_assoc($query))
{                 
echo "<option value='".$dato['id_sede']."'";
if($_POST['seleccionado']==$dato['id_sede'])
echo "SELECTED";
echo ">";
echo utf8_encode($dato['descrip_sede']);
echo "</option>";            
}
?>
</select>
</div>



          <div class="custom-file">
  <input type="file" class="custom-file-input" id="adjunto" lang="es">
  <label class="custom-file-label" for="customFileLang">Sube tu curriculumn(Formato PDF)</label>
</div>
<div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                     <input type="submit" class="btn btn-primary" style="FONT-SIZE: 15pt;"  value="Acepto guardar mis datos">  </div>
        </form>
      </div>
     <!-- <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                     <input type="submit" class="btn btn-primary" style="FONT-SIZE: 15pt;"  value="Acepto guardar mis datos">  </div>-->
      </div>
    </div>
  </div>
</div>