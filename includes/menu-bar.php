<div class="header-color animate-dropdown" header-nav> 
    <div class="container">
        <div class="yamm navbar navbar-default" role="navigation">
            <div class="navbar-header">
                <button data-target="#mc-horizontal-menu-collapse" data-toggle="collapse" class="navbar-toggle collapsed" type="button">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>
            <div class="nav-bg-class">
                <div class="navbar-collapse collapse" id="mc-horizontal-menu-collapse">
	<div class="nav-outer">
		<ul class="nav navbar-nav">
			<li class="active dropdown yamm-fw">
				<a href="index.php" data-hover="dropdown" class="dropdown-toggle">Inicio</a>
				
			</li>
              <?php $sql=mysqli_query($con,"select id,categoryName  from category limit 6");
while($row=mysqli_fetch_array($sql))
{
    ?>

			<li class="dropdown yamm">
				<a href="category.php?cid=<?php echo $row['id'];?>"> <?php echo $row['categoryName'];?></a>
			
			</li>
			<?php } ?>
   <li><a href="Blog.php"> Blog</a> </a></li>
   <li><a href="faq.php" >FAQ</a></li>
   
			
		</ul><!-- /.navbar-nav -->
		<div class="clearfix"></div>				
	</div>
</div>


            </div>
        </div>
    </div>
</div>