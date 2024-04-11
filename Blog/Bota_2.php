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
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Blog de Zapatos</title>
    <style>
        /* Estilos CSS para el menú de navegación */
        nav {
             /* Color de fondo del menú */
            overflow: hidden;
        }

        nav ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
        }

        nav ul li {
            float: left;
        }

        nav ul li a {
            display: block;
            color: rgb(82, 178, 125);
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
        }

        nav ul li a:hover {
            background-color: #ddd; /* Cambio de color al pasar el ratón por encima */
            color: black;
        }
    </style>
    <!-- Enlaces a tus archivos CSS y JavaScript -->
    <link rel="stylesheet" href="/shopping/css/estilo.css">
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
	    
	    <!-- Customizable CSS -->
        <link rel="stylesheet" href="/shopping/assets/css/main.css">
	    <link rel="stylesheet" href="/shopping/assets/css/main.css">
	    <link rel="stylesheet" href="/shopping/assets/css/green.css">
	    <link rel="stylesheet" href="/shopping/assets/css/owl.carousel.css">
		<link rel="stylesheet" href="/shopping/assets/css/owl.transitions.css">
		<!--<link rel="stylesheet" href="assets/css/owl.theme.css">-->
		<link href="/shopping/assets/css/lightbox.css" rel="stylesheet">
		<link rel="stylesheet" href="/shopping/assets/css/animate.min.css">
		<link rel="stylesheet" href="/shopping/assets/css/rateit.css">
		<link rel="stylesheet" href="/shopping/assets/css/bootstrap-select.min.css">

		<!-- Demo Purpose Only. Should be removed in production -->
		<link rel="stylesheet" href="/shopping/assets/css/config.css">

		<link href="/shopping/assets/css/green.css" rel="alternate stylesheet" title="Green color">
		<link rel="stylesheet" href="/shopping/css/stylo.css">
		<link href="/shopping/assets/css/blue.css" rel="alternate stylesheet" title="Blue color">
		<link href="/shopping/assets/css/red.css" rel="alternate stylesheet" title="Red color">
		<link href="/shopping/assets/css/orange.css" rel="alternate stylesheet" title="Orange color">
		<link href="/shopping/assets/css/dark-green.css" rel="alternate stylesheet" title="Darkgreen color">
		<link rel="stylesheet" href="/shopping/assets/css/font-awesome.min.css">
		<link href='http://fonts.googleapis.com/css?family=Roboto:300,400,500,700' rel='stylesheet' type='text/css'>
		
		<!-- Favicon -->
		<link rel="shortcut icon" href="/shopping/assets/images/favicon.ico">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <script src="js/script.js" defer></script>
</head>
<body>
       
    <!-- Encabezado de la página -->
    <header>
    <?php include('/laragon/www/shopping/includes/top-header.php');?>
    <nav>
    <section class="container">
        <section class="row">
            <hr>
            <section class="col-2"> <br> <a href="/shopping/index.php"><h3>ARIAT</h3></a></section>
            <section class="col-6"><ul><br>
                <li><a href="/shopping/index.php">Inicio</a></li>
                <li><a href="/shopping/Blog.php">Blog</a></li>
                <li><a href="/contacto">Tenis</a></li>
                <li><a href="/contacto">Zapatos</a></li>
                <li><a href="/contacto">Sandalias</a></li>
                <li><a href="/contacto">Contacto</a></li>
                <!-- Puedes agregar más opciones de navegación según sea necesario -->
            </ul>
        </section>
            <section class="col-4"></section>
            <hr>
        </section>
            </section>
    </nav>

    </header>

 <!-- Contenido principal del blog -->
 <main class="container">
        <!-- Listado de entradas del blog -->
          <section class="row">
            <section class="col-2"></section>
            
            <section class="col-6"><br><center><h2>Consejos y Recomendaciones para el Uso de Plantillas</h2></center><br>
                <img src="/shopping/Zapatos/fondo-plantilla.png" width="650px" alt=""><br> <br>
                <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Laudantium nobis voluptatum adipisci earum provident? Assumenda voluptate nemo dicta reprehenderit! Error molestiae modi voluptas nostrum, eveniet ipsam nihil dolorum ab sapiente?</p>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam autem, odio nulla eligendi cumque pariatur nobis, exercitationem consequuntur molestiae tempora consequatur, esse illo rerum eius ipsum sit ex ducimus minima?
                Architecto nihil ipsam officia enim id vitae molestias numquam consequuntur, corporis dolorum quae officiis. Ipsa minus accusantium, assumenda dolore quam alias ab sequi vero, eaque, ipsam consequuntur aspernatur ut quia!</p><br><br>
            

                <center><h4>Consejos para la transición al uso de plantillas en el calzado.</h4></center><br><br>
                <center><img src="/shopping/Zapatos/plantilla/plantilla1.png" width="350px" alt=""></center><br><br>
                <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Deleniti aliquam magni commodi fugit dolorem. Nesciunt dicta tempore voluptates iusto qui voluptate, id recusandae eum, officia repudiandae odio consequuntur placeat labore!
                Corporis non veniam quod placeat. Quia, velit tempore voluptatem iusto magnam et iure accusantium perferendis illum odit consectetur recusandae! Nesciunt non ut perspiciatis sint quidem officia amet tempore doloribus molestiae!
                Quisquam aperiam l|abore quos tempora ut consequuntur enim sequi consectetur nesciunt cupiditate, explicabo pariatur corporis, quo nostrum, nam ducimus facilis consequatur? Quia aliquid, hic ullam accusamus dignissimos et error porro.
                Repellendus iure unde quaerat architecto cumque animi accusamus delectus, alias dolorum vero qui numquam velit sequi. Reprehenderit esse molestiae, officia, nobis labore dignissimos tempore illum perspiciatis dolorum, aliquam debitis accusamus?</p><br><br>
                <section class="row">
                    <section class="col-6"><img src="/shopping/Zapatos/plantilla/plantilla7.png" width="200px" alt=""></section>
                    <section class="col-6"><img src="/shopping/Zapatos/plantilla/plantilla5.png" width="250px" alt=""></section>
                </section> <br><br>

               <center><h4>Recomendaciones para el uso adecuado y cómodo de plantillas en diferentes tipos de zapatos.</h4></center>
               <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Suscipit inventore nesciunt eveniet eligendi harum illo repellendus? Atque illo, id rerum nihil unde quaerat ipsum, fugit voluptatibus possimus itaque magni hic?
               Eveniet officiis eaque sit atque sunt facere quos beatae voluptas hic in, harum ex quasi tenetur, unde vitae ad nemo qui voluptatem recusandae. Ullam obcaecati tempora maiores quia eveniet voluptas.
               Nulla non in perferendis dolor ad ex eum tempora praesentium impedit dicta repudiandae enim ut reiciendis saepe blanditiis molestiae, perspiciatis qui, architecto voluptatibus nihil illo! Provident nihil beatae illo a.</p>
               <section class="row">
                <section class="col-4"><img src="/shopping/Zapatos/plantilla/plantilla2.png" width="200px" alt=""></section>
                <section class="col-4"><img src="/shopping/Zapatos/plantilla/plantilla3.png" width="200px" alt=""></section>
                <section class="col-4"><img src="/shopping/Zapatos/plantilla/plantilla4.png" width="200px" alt=""></section>
            </section><br>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Sint, porro eum rerum, quaerat eligendi dolor ipsam perspiciatis ea nostrum repellendus a corrupti, at quas. In laboriosam error quibusdam hic sed.</p>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Sunt commodi sapiente in a ipsa, fuga nostrum dicta ad eum enim molestiae accusantium autem at nesciunt. Sit voluptatum facere ad ipsam.
            Ut unde pariatur aspernatur debitis. Ad animi ducimus quia quasi porro aspernatur quis rem sequi asperiores eius corporis error earum, quisquam cum, dolor facilis corrupti harum, quibusdam magni minus. Aliquid.</p>
            <section class="row">
                <section class="col-4"></section>
                <center><section class="col-4"><img src="/shopping/Zapatos/plantilla/plantilla2.png" width="300px" alt=""></section></center><br>
                <section class="col-4"></section>
            </section><br>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Rem, alias labore quae quo quaerat consequatur ducimus fugiat doloremque maiores odit ipsa aspernatur, veritatis porro reiciendis iusto itaque. Adipisci, maiores dignissimos.</p>
            <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quos aliquid incidunt dignissimos nobis rerum perspiciatis nemo maxime quis tempora, exercitationem perferendis suscipit delectus nostrum dicta, quae quod at. Dolores, earum?</p>
            <center><section class="col-4"><img src="/shopping/Zapatos/plantilla/plantilla3.png" width="300px" alt=""></section></center><br>
            <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Ullam facere ut perferendis voluptatibus dolorum. Dolores non nobis officia adipisci ea unde aliquid asperiores hic tempore, suscipit sit quasi, perferendis eligendi.</p>
            <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Esse excepturi eligendi earum nobis. Modi, dignissimos maxime impedit est sunt perferendis expedita quos ipsa velit laudantium enim, et doloremque explicabo suscipit!</p>
            <center> <section class="col-4"><img src="/shopping/Zapatos/plantilla/plantilla4.png" width="300px" alt=""></section></center><br>
            <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Omnis deleniti perspiciatis ab repudiandae delectus maiores inventore! Illo dicta veniam voluptate cumque sunt natus, corrupti neque necessitatibus id quam voluptatem velit.
            Lorem ipsum dolor sit amet consectetur adipisicing elit. Tenetur illo fugit, nam minima officiis tempore nisi expedita perspiciatis maxime, iste eaque culpa. Cum totam perspiciatis velit odit sapiente laboriosam quis.</p><br><br>
           
            <center><h4>Soluciones para problemas comunes al usar plantillas, como el deslizamiento o la incomodidad inicial.</h4></center>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Eligendi doloribus excepturi repellat commodi facilis dolor quo saepe incidunt illum fugit! Aliquid laboriosam, fuga reprehenderit officia voluptatibus obcaecati nisi ut dolore?
            Sint perferendis facilis sequi laudantium repellendus eum fuga sapiente placeat maxime temporibus omnis provident similique enim alias nulla ducimus blanditiis expedita quod aliquam veniam dolorum natus, atque officia. Fugit, necessitatibus.</p><br>
            <section class="row">
                <section class="col-6"><img src="/shopping/Zapatos/plantilla/plantilla8.png" width="300px" alt=""></section>
                <section class="col-6"><img src="/shopping/Zapatos/plantilla/plantilla9.png" width="300px" alt=""></section>
                </section><br>
                <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Earum ut incidunt quidem excepturi iste, labore, cupiditate provident sunt iusto maiores nulla aspernatur! Illo repudiandae, facilis ullam exercitationem iusto corrupti voluptatibus!</p>
                <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Atque exercitationem explicabo aliquam alias voluptates! Nostrum natus laudantium a impedit alias modi inventore, labore expedita iure architecto quibusdam quas autem nisi.
                Quisquam nesciunt autem aliquam sunt, atque, culpa a aperiam dignissimos, eveniet beatae eum. Voluptatibus, ipsa, corrupti incidunt consequatur enim eaque architecto, beatae totam ad quidem id praesentium corporis quia iste!</p><br><br>

                <center><img src="/shopping/Zapatos/plantilla/plantilla10.png" width="350" alt=""></center><br><br>
                <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Sed explicabo commodi dolore ex atque possimus nisi tempora ab quis quo assumenda dolorum magnam, minima cupiditate aliquam sit, nulla saepe beatae.</p>
                 <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Perferendis aspernatur molestiae, aut soluta iusto dolorem alias, consectetur beatae fugit quas magnam qui, autem neque deserunt ullam vitae unde ipsam aliquid!</p><br><br><br>
                 <a href="/shopping/Blog.php"> <button type="button" class="btn btn-outline-dark">Regresar</button></a>
       <br><br>            </section>
            <section class="col-4"></section>
    
          </section>
          
    </main>

    <!-- Pie de página -->
    
    <?php include('/laragon/www/shopping/includes/footer.php');?>
    <hr>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js" integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V" crossorigin="anonymous"></script>
</body>
</html>