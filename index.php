<?php include 'includes/session.php'; ?>
<?php include 'includes/header.php'; ?>

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
	<script src="https://use.fontawesome.com/releases/v5.0.8/js/all.js"></script>
	
<style> <?php include 'includes/style.css'; ?> </style>
<body class="hold-transition skin-blue layout-top-nav">
<div class="wrapper">

	<?php include 'includes/navbar.php'; ?>
	 
	  <div class="content-wrapper">
	   

	      <!-- Main content -->
	      <section class="content">
	        <div class="row">
	        	<div class="col-sm-12">
	        		<?php
	        			if(isset($_SESSION['error'])){
	        				echo "
	        					<div class='alert alert-danger'>
	        						".$_SESSION['error']."
	        					</div>
	        				";
	        				unset($_SESSION['error']);
	        			}
	        		?>
					
					<div id="themeSlider" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
        <li data-target="#themeSlider" data-slide-to="0" class="active"></li>
        <li data-target="#themeSlider" data-slide-to="1"></li>
        <li data-target="#themeSlider" data-slide-to="2"></li>
    </ol>

    <div class="carousel-inner">
        <div class="item active">
            <div class="imgOverlay"></div>
            <img style="height:420px;width:100%" src="images/cozy1.png" alt="First slide">
            <div class="carousel-caption">
                
                
            </div>
        </div>
        <div class="item">
            <div class="imgOverlay"></div>
            <img style="height:420px;width:100%" src="images/cozy2.png" alt="Second slide">
            <div class="carousel-caption">
                
                
            </div>
        </div>
        <div class="item">
            <div class="imgOverlay"></div>
            <img style="height:420px;width:100%" src="images/cozy3.jpg" alt="Third slide">
            <div class="carousel-caption">
                
                
            </div>
        </div>
    </div>

    <a class="left carousel-control" href="#themeSlider" data-slide="prev">
        <span class="fa fa-chevron-left"></span>
    </a>
    <a class="right carousel-control" href="#themeSlider" data-slide="next">
        <span class="fa fa-chevron-right"></span>
    </a>

    
</div>




<!--- Welcome Section -->
<div class="container fluid padding">
<div class="row welcome text-center">
   <div class="col-12">
		 <h1 class="display-4">Top Selling Brands at Cozy.</h1>
	 </div>
	 <hr>
	 <div class="col-12">
		  <p class="lead">The three brands listed below are the top selling and favourite brands.</p>
	</div>
</div>
</div>

<!--- Three Column Section -->
<div class="containter-fluid padding">
<div class="row text-center padding">
    <div class="col-xs-12 col-sm-6 col-md-4">
       <div class="logo"></div>
			 <img src="images/samsung.png">
			 <h3>Samsung Company</h3>
			 <p>Samsung's most popular product is the Galaxy S.</p>
		</div>

		<div class="col-xs-12 col-sm-6 col-md-4">
       <div class="logo"></div>
			 <img src="images/Apple.png">
			 <h3>APPLE</h3>
			 <p>Apple's most popular product is the iPhone.</p>
		</div>

		<div class="col-xs-12 col-sm-6 col-md-4">
       <div class="logo"></div>
			 <img src="images/huawei.png">
			 <h3>Huawei Company</h3>
			 <p>Huaweis's most popular product is the Huawei Mate 30 PRO.</p>
		</div>

</div>
<hr class="my-4">
</div>


<!--- Two Column Section -->
<div class="container-fluid padding">
<div class="row padding">
	  <div class="col-lg-6">
			<h2>CozyPhones Website</h2>
			<p>The importance of a website for marketing extends to every aspect of your digital marketing strategy. As the backbone of your online presence, every type of communication, piece of content, or advertisement that you put online will drive the consumer back to your website.</p>
			<p>As such, it’s important that your website gives consumers a clear idea of what your brand is about and what types of products or services you offer.</p>
			<p>Cell phone store owners choose CellStore Software for a comprehensive system that is easy to use and affordable, that is why CozyPhones wants to expand it's Technology. All modules were built to support CozyPhones operations! Features include: Point of sale, User Creation, Product Managemment, inventory management, Brand management, User System, more....</p>
			<br>
		</div>
		<div class="col-lg-6">
			   <img src="images/cozy2 (2).png" class="img-fluid">
		</div>
	</div>
</div>
<hr class="my-4">

<!--- Connect -->
<div class="container-fluid padding">
<div class="row text-center padding">
  <div class="col-12">
      <h2>Connect</h2>
	</div>
	<div class="col-12 social padding">
          <a href="https://www.facebook.com/cozyphoness/" target='_blank'><i class="fab fa-facebook"></i></a>
					<a href="#" target='_blank'><i class="fab fa-twitter"></i></a>
					<a href="#" target='_blank'><i class="fab fa-youtube"></i></a>
					<a href="https://www.instagram.com/cozyphone/?hl=en" target='_blank'><i class="fab fa-instagram"></i></a>

	</div>
</div>
</div>



		       		
	        	</div>
	        	
	        </div>
	      </section>
	     
	    </div>
	  </div>
  
  	<?php include 'includes/footer.php'; ?>
</div>

<?php include 'includes/scripts.php'; ?>
</body>
</html>