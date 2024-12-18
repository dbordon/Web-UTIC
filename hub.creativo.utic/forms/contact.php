<?php
if(isset($_POST['email'])) {

$email_to = "hub.creativo.utic@gmail.com";
$email_subject = "Contacto desde el sitio web";

if(!isset($_POST['name']) ||
!isset($_POST['email']) ||
!isset($_POST['message'])) {

echo "<b>Ocurrió un error y el formulario no ha sido enviado. </b><br />";
echo "Por favor, vuelva atrás y verifique la información ingresada<br />";
die();
}

$email_message = "Detalles del formulario de contacto:\n\n";
$email_message .= "Nombre: " . $_POST['name'] . "\n";
$email_message .= "E-mail: " . $_POST['email'] . "\n";
$email_message .= "Comentarios: " . $_POST['message'] . "\n\n";


$headers = 'From: '.$email_from."\r\n".
'Reply-To: '.$email_from."\r\n" .
'X-Mailer: PHP/' . phpversion();
$email = @mail($email_to, $email_subject, $email_message, $headers);
if($email){
  echo "¡El formulario se ha enviado con éxito!";
}else {
  echo "No se pudo enviar el mensaje";
}


}
?>
