<?php 

if (isset($_POST['submit'])){
    if(!empty($_POST['fullname'])  &&!empty($_POST['password']) &&!
        empty($_POST['emailid'])) {
        $fullname = $_POST['fulname'];
        $emailid = $_POST['emailid'];
        $password = $_POST['password'];
        $header = "From: noreply@example.com" . "\r\n";
        $herader.= "Reply-to: noreply@example.com" . "\r\n";
        $herader.= "X-Mailer: PHP/" . phpversion();
        $mail = @mail($fullname,$emailid,$password);
        if ($emailid) {
            echo "<h2>Enviado exitosamente!! </h2>";
        }
          
    }
}