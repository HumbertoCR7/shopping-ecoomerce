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
   
    <section class="container"><br>
       <center><h1>ARIAT-Blog</h1></center> <br> <br>
      <section class="row">
          <section class="col">
              <div class="card h-100" style="width: 25rem;">
                  <img src="/shopping/Zapatos/fondo1.png" width="150px" class="card-img-top" alt="...">
                  <div class="card-body">
                      <h5 class="card-title">Tendencias de Moda en Botas para caballero</h5>
                      <p class="card-text">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Laboriosam error nihil vitae laudantium ea. Accusamus cupiditate qui odit eveniet laborum. Facere dolore recusandae sequi Conoce la historia y recomendacion que hya detras de nuestras botas, que mantienen un legado...</p>
                      <a href="/shopping/Blog/Bota.php" class="btn btn-primary">Leer Blog</a>
                  </div>
              </div>
          </section>
          <section class="col">
              <div class="card h-100 tenis" style="width: 25rem;">
                  <img class="teni" height="" src="/shopping/Zapatos/Fondo-nike.png" class="card-img-top" alt="...">
                  <div class="card-body">
                      <h5 class="card-title">Entrenamiento y Rendimiento Deportivo</h5>
                      <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                      <a href="/shopping/Blog/Tenis.php" class="btn btn-primary">Leer Blog</a>
                  </div>
              </div>
          </section>
          <section class="col">
              <div class="card h-100" style="width: 25rem;">
                  <img src="/shopping/Zapatos/sandalia.png" class="card-img-top" alt="...">
                  <div class="card-body">
                      <h5 class="card-title">Guía de Compra de Sandalias para Hombres:</h5>
                      <p class="card-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Maiores quasi, a voluptatum neque obcaecati, vero quam unde aspernatur perferendis iusto Maiores quasi, a voluptatum neque obcaecati, vero quam unde aspernatur perferendis iusto consequuntur fugit? In, vero deleniti! Accusantium  consequuntur fugit? In, vero deleniti! Accusantium ducimus libero est recusandae!Some quick example text to build on the.</p>
                      <a href="/shopping/Blog/Sandalia.php" class="btn btn-primary">Leer Blog</a>
                  </div>
              </div>
          </section>
      </section>
      <section class="row">
          <section class="col"><br><br>
              <div class="card h-100" style="width: 25rem;">
                  <img src="/shopping/Zapatos/fondo-plantilla.png" class="card-img-top" alt="...">
                  <div class="card-body">
                      <h5 class="card-title">Consejos y Recomendaciones para el Uso de Plantillas</h5>
                      <p class="card-text">content Some quick example text Lorem ipsum dolor sit amet consectetur, adipisicing elit. Reprehenderit optio odio ipsum, placeat impedit inventore quae distinctio perferendis ex, officia autem voluptatibus porro ducimus. Laudantium soluta laborum consequuntur cumque sint!
                      Quisquam, officia  and make up the bulk of the card's content..</p>
                      <a href="/shopping/Blog/Bota_2.php" class="btn btn-primary">Leer Blog</a>
                  </div>
              </div>
          </section>
          <section class="col"><br><br>
              <div class="card h-100" style="width: 25rem;">
                  <img src="/shopping/Zapatos/zapato_fondo.png" class="card-img-top" alt="...">
                  <div class="card-body">
                      <h5 class="card-title">Cuidado y Mantenimiento de Zapatos de Vestir:</h5>
                      <p class="card-text">Some quick example text Lorem ipsum dolor sit amet consectetur, adipisicing elit. Reprehenderit optio odio ipsum, placeat impedit inventore quae distinctio perferendis ex, officia autem voluptatibus porro ducimus. Laudantium soluta laborum consequuntur cumque sint!
                      Quisquam, officia laboriosam? Rerum deleniti suscipit maxime repellat deserunt?to build on the card title and make up the bulk of the card's content.</p>
                      <a href="/shopping/Blog/Zapato.php" class="btn btn-primary">Leer Blog</a>
                  </div>
              </div>
          </section>
          <section class="col"><br><br>
              <div class="card h-100" style="width: 25rem;">
                  <img src="/shopping/Zapatos/fondo-relleno.png" class="card-img-top" alt="...">
                  <div class="card-body">
                      <h5 class="card-title">Zapato</h5>
                      <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                      <a href="/shopping/Blog/Zapato.php" class="btn btn-primary">Leer Blog</a>
                  </div>
              </div>
          </section>
          </section>
          <section class="row">
               <section class="col">
        <br><br><br><br>
       <a href="index.php"> <button type="button" class="btn btn-outline-dark">Regresar</button></a>
       <br><br>
        </section>
      </section>
  </section>
  

  

    <Footer>

    </Footer>

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js" integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V" crossorigin="anonymous"></script>
</body>
</html>