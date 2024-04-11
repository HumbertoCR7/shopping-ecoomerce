<?php
session_start();
error_reporting(0);
include('includes/config.php');
if(isset($_GET['action']) && $_GET['action']=="add"){
	$id=intval($_GET['id']);
	if(isset($_SESSION['cart'][$id])){
		$_SESSION['cart'][$id]['quantity']++;
	}else{
		$sql_p="SELECT * FROM products WHERE id={$id}";
		$query_p=mysqli_query($con,$sql_p);
		if(mysqli_num_rows($query_p)!=0){
			$row_p=mysqli_fetch_array($query_p);
			$_SESSION['cart'][$row_p['id']]=array("quantity" => 1, "price" => $row_p['productPrice']);
		
		}else{
			$message="Product ID is invalid";
		}
	}
		echo "<script>alert('Product has been added to the cart')</script>";
		echo "<script type='text/javascript'> document.location ='my-cart.php'; </script>";
}


?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Blog ARIAT</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link rel="stylesheet" href="/shopping/css/estilo.css">
   
	    
  
	    
	    <!-- Customizable CSS -->
	    <link rel="stylesheet" href="assets/css/main.css">
	    <link rel="stylesheet" href="assets/css/green.css">
	    <link rel="stylesheet" href="assets/css/owl.carousel.css">
		<link rel="stylesheet" href="assets/css/owl.transitions.css">
		<!--<link rel="stylesheet" href="assets/css/owl.theme.css">-->
		<link href="assets/css/lightbox.css" rel="stylesheet">
		<link rel="stylesheet" href="assets/css/animate.min.css">
		<link rel="stylesheet" href="assets/css/rateit.css">
		<link rel="stylesheet" href="assets/css/bootstrap-select.min.css">

		<!-- Demo Purpose Only. Should be removed in production -->
		<link rel="stylesheet" href="assets/css/config.css">

		<link href="assets/css/green.css" rel="alternate stylesheet" title="Green color">
		<link rel="stylesheet" href="css/stylo.css">
		<link href="assets/css/blue.css" rel="alternate stylesheet" title="Blue color">
		<link href="assets/css/red.css" rel="alternate stylesheet" title="Red color">
		<link href="assets/css/orange.css" rel="alternate stylesheet" title="Orange color">
		<link href="assets/css/dark-green.css" rel="alternate stylesheet" title="Darkgreen color">
		<link rel="stylesheet" href="assets/css/font-awesome.min.css">
		<link href='http://fonts.googleapis.com/css?family=Roboto:300,400,500,700' rel='stylesheet' type='text/css'>
		
		<!-- Favicon -->
		<link rel="shortcut icon" href="assets/images/favicon.ico">
</head>
<body>
<header class="header-style-1">
<?php include('includes/top-header.php');?>
<?php include('includes/main-header.php');?>

</header>

<main class="container">
    
<section class="row">
    <section class="col-2"></section>
    <section class="col-8"><br>
    <center><h1>Preguntas frecuentes</h1><br><br></center>  
    <div class="accordion" id="accordionExample">
  <div class="accordion-item">
    <h2 class="accordion-header" id="headingOne">
      <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
       <h5>¿Quiénes somos?</h5>
      </button>
    </h2>
    <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
      <div class="accordion-body">
        <p>En ARIAT, nos enorgullecemos de ser más que una marca de calzado; somos una pasión arraigada en la artesanía, la innovación y el compromiso con la excelencia. Desde nuestros humildes comienzos en México en 1990, hemos cultivado una reputación de calidad inigualable y rendimiento incomparable en la industria del calzado.</p>
        <p>Nuestro nombre, ARIAT, encarna nuestra filosofía de "advance", "redefine" e "innovate", impulsando constantemente los límites de lo que es posible en la fabricación de calzado. Nos esforzamos por crear productos que no solo sean estéticamente hermosos, sino también funcionales y duraderos, diseñados para acompañarte en cada paso de tu vida.</p>
        <p>Nos enorgullece nuestra herencia mexicana, que infunde en cada par de zapatos ARIAT una mezcla única de tradición y modernidad. Desde las calles de las ciudades hasta los senderos de montaña, nuestros zapatos están diseñados para adaptarse a cualquier entorno y estilo de vida.</p>
        <p>En ARIAT, nuestra dedicación a la calidad se extiende más allá de nuestros productos hasta nuestra atención al cliente. Nos esforzamos por ofrecer un servicio excepcional y una experiencia de compra sin igual, porque creemos que cada cliente merece ser tratado con el máximo respeto y atención.</p>
        <p>Únete a nosotros en nuestro viaje mientras continuamos innovando, reinventando y avanzando en el mundo del calzado, llevando la excelencia mexicana a cada paso del camino. Somos ARIAT: más que una marca, una experiencia de vida.</p>
      </div>
    </div>
  </div>
  <div class="accordion-item">
    <h2 class="accordion-header" id="headingTwo">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
        <h5>¿Cuales nuestra misión?</h5>
      </button>
    </h2>
    <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
      <div class="accordion-body">
Nuestra misión en Zapatería ARIAT es proporcionar a nuestros clientes una experiencia excepcional al comprar calzado, ofreciendo una amplia selección de productos de alta calidad que se adaptan a sus necesidades y estilos de vida. Nos comprometemos a brindar un servicio al cliente excepcional, asesoramiento experto y una experiencia de compra cómoda y satisfactoria. Nos esforzamos por ser un destino confiable para encontrar el calzado perfecto para cualquier ocasión, desde botas duraderas hasta elegantes zapatos formales, cómodas sandalias y modernos tenis.
      </div>
    </div>
  </div>
  <div class="accordion-item">
    <h2 class="accordion-header" id="headingThree">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
      <h5>¿Cual es nuestra visión?</h5>
      </button>
    </h2>
    <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
      <div class="accordion-body">
Nuestra visión en Zapatería Paso Firme es convertirnos en el referente líder en la industria del calzado, reconocidos por nuestra excelencia en calidad, servicio al cliente y variedad de productos. Nos esforzamos por ser una marca que inspira confianza y estilo en cada paso que das. Buscamos expandir nuestra presencia para llegar a más clientes, manteniendo siempre nuestro compromiso con la calidad y la satisfacción del cliente. Aspiramos a ser una empresa innovadora, adaptándonos constantemente a las tendencias del mercado y ofreciendo una experiencia de compra única que fomente la lealtad de nuestros clientes y el crecimiento continuo de nuestro negocio.
      </div>
    </div>
  </div>
  <div class="accordion-item">
    <h2 class="accordion-header" id="headingThree">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFour" aria-expanded="false" aria-controls="collapseThree">
      <h5>¿Es seguro nuestro metodo de pago?</h5>
      </button>
    </h2>
    <div id="collapseFour" class="accordion-collapse collapse" aria-labelledby="headingFour" data-bs-parent="#accordionExample">
      <div class="accordion-body">
        <p>En ARIAT, la seguridad y la confiabilidad son nuestras principales prioridades, especialmente cuando se trata de proteger la información financiera de nuestros clientes. Entendemos completamente las preocupaciones sobre la seguridad de los métodos de pago en línea y queremos asegurar a nuestros clientes que tomamos medidas exhaustivas para garantizar un proceso de pago seguro y protegido.</p>
       <p>Utilizamos tecnologías de encriptación avanzadas para proteger toda la información confidencial que se comparte durante las transacciones en nuestro sitio web. Además, colaboramos con procesadores de pago confiables y reconocidos a nivel mundial que cumplen con los más altos estándares de seguridad de la industria.</p>
        <p>Nuestro equipo de seguridad de la información monitorea continuamente nuestro eCommerce para detectar y prevenir cualquier actividad sospechosa. Además, cumplimos con todas las regulaciones y normativas relevantes en materia de protección de datos y privacidad del consumidor.</p>
        <p>Entendemos que la confianza del cliente es fundamental en el comercio electrónico, por lo que nos esforzamos por proporcionar una experiencia de compra en línea segura y sin preocupaciones para todos nuestros clientes. Pueden estar seguros de que sus datos personales y financieros están protegidos cuando realizan una compra en nuestro sitio web.</p>
        <p>Para mayor tranquilidad, también ofrecemos opciones de pago seguras y ampliamente reconocidas, como tarjetas de crédito, PayPal y otros métodos de pago confiables.</p>
        <p>En ARIAT, nos comprometemos a brindar una experiencia de compra en línea segura, confiable y satisfactoria para todos nuestros clientes. Su seguridad y satisfacción son nuestra máxima prioridad.</p>
      </div>
    </div>
  </div>
  <div class="accordion-item">
    <h2 class="accordion-header" id="headingfive">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapsefive" aria-expanded="false" aria-controls="collapseThree">
      <h5>¿Cómo puedo estar seguro de que el calzado que compro en línea me quedará bien?</h5>
      </button>
    </h2>
    <div id="collapsefive" class="accordion-collapse collapse" aria-labelledby="headingfive" data-bs-parent="#accordionExample">
      <div class="accordion-body">
        <p>En ARIAT entendemos la importancia de encontrar el ajuste perfecto. Para garantizar la mejor experiencia de compra en línea, ofrecemos una guía de tallas detallada en nuestro sitio web. Además, si tienes alguna pregunta sobre el ajuste de un producto específico, nuestro equipo de servicio al cliente está disponible para brindarte asesoramiento personalizado y recomendaciones.</p>
      </div>
    </div>
  </div>
  <div class="accordion-item">
    <h2 class="accordion-header" id="headingsix">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapsesix" aria-expanded="false" aria-controls="collapsesix">
      <h5>¿Cuáles son las políticas de devolución y cambio de ARIAT para las compras en línea?</h5>
      </button>
    </h2>
    <div id="collapsesix" class="accordion-collapse collapse" aria-labelledby="headingsix" data-bs-parent="#accordionExample">
      <div class="accordion-body">
        <p>Nuestro objetivo en ARIAT es garantizar tu completa satisfacción con tu compra. Por lo tanto, ofrecemos una política de devolución y cambio sin problemas. Si no estás satisfecho con tu compra por cualquier motivo, puedes devolver o cambiar el artículo dentro de un plazo determinado después de la recepción, sujeto a ciertas condiciones. Consulta nuestra política de devoluciones en línea o ponte en contacto con nuestro equipo de servicio al cliente para obtener más detalles.</p>
      </div>
    </div>
  </div>
  <div class="accordion-item">
    <h2 class="accordion-header" id="headingseven">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseseven" aria-expanded="false" aria-controls="collapseseven">
      <h5>¿Cuánto tiempo tarda en llegar mi pedido una vez realizado en el sitio web?</h5>
      </button>
    </h2>
    <div id="collapseseven" class="accordion-collapse collapse" aria-labelledby="headingseven" data-bs-parent="#accordionExample">
      <div class="accordion-body">
        <p>El tiempo de entrega de tu pedido en ARIAT puede variar según tu ubicación y el método de envío seleccionado. Sin embargo, nos esforzamos por procesar y enviar todos los pedidos lo más rápido posible. Una vez que se haya procesado tu pedido, recibirás una confirmación por correo electrónico con información sobre el seguimiento de tu envío. Te recomendamos consultar nuestra página de políticas de envío para obtener estimaciones más precisas sobre los tiempos de entrega según tu ubicación.</p>
      </div>
    </div>
  </div>

  
</section>
    <section class="col-2"></section>
</section>

</main>

    <Footer>

    </Footer>

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js" integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V" crossorigin="anonymous"></script>
</body>
</html>