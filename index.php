<?php include 'includes/session.php'; ?>
<?php include 'includes/header.php'; ?>
<?php
	

	$conn = $pdo->open();

	try{
		$stmt = $conn->prepare("SELECT * FROM products");
	
		$cat = $stmt->fetch();
		$catid = $cat['id'];
	}
	catch(PDOException $e){
		echo "There is some problem in connection: " . $e->getMessage();
	}

	$pdo->close();

?>

<body class="hold-transition skin-blue layout-top-nav">
<div class="wrapper">

	<?php include 'includes/navbar.php'; ?>
	 
	  <div class="content-wrapper">
	    <div class="container">

	      <!-- Main content -->
	      <section class="content">
	        <div class="row">
	        	<div class="col-sm-9">
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
					
	        		<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
		                <ol class="carousel-indicators">
		                  <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
		                  <li data-target="#carousel-example-generic" data-slide-to="1" class=""></li>
		                  <li data-target="#carousel-example-generic" data-slide-to="2" class=""></li>
						  <li data-target="#carousel-example-generic" data-slide-to="3" class=""></li>
		                  <li data-target="#carousel-example-generic" data-slide-to="4" class="active"></li>
		                </ol>
		                <div class="carousel-inner">
		                  <div class="item active">
		                    <img src="images/banner/iPhone 8 Plus.jpg" alt="First slide">
		                  </div>
		                  <div class="item">
		                    <img src="images/banner/Samsung Galaxy Note 10+.jpg" alt="Second slide">
		                  </div>
		                  <div class="item">
		                    <img src="images/banner/huawei-p30-pro.jpg" alt="Third slide">
		                  </div>
						  <div class="item">
		                    <img src="images/banner/Vsmart Active 1+.jpg" alt="Four slide">
		                  </div>
						  <div class="item">
		                    <img src="images/banner/htc-u11-plus.jpg" alt="Five slide">
		                  </div>
		                </div>
		                <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
		                  <span class="fa fa-angle-left"></span>
		                </a>
		                <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
		                  <span class="fa fa-angle-right"></span>
		                </a>
						
		            </div>
					
	        	</div>

	        	<div class="col-sm-3">
	        		<?php include 'includes/sidebar.php'; ?>
	        	</div>

	        </div>
	      </section>
		  
		  <div class="content-wrapper">
	    <div class="container">
		<h4><b>Sản phẩm bán chạy:</b></h4>
	      <section class="content">
		  
	        <div class="row">
	        	<div class="col-sm-9">
		            <h1 class="page-header"><?php echo $cat['name']; ?></h1>
		       		<?php
		       			
		       			$conn = $pdo->open();

		       			try{
							$l =9;
							$c=1;
							$f=($c-1)*$l;

								$inc = 3;
					
						    $stmt = $conn->prepare("SELECT * FROM products WHERE name Like '%(HOT)' order by 'id' asc limit ".$l." offset ".$f  );
						    $stmt->execute(['catid' => $catid]);
						    foreach ($stmt as $row) {
						    	$image = (!empty($row['photo'])) ? 'images/'.$row['photo'] : 'images/noimage.jpg';
						    	$inc = ($inc == 3) ? 1 : $inc + 1;
	       						if($inc == 1) echo "<div class='row'>";
	       						echo "
	       							<div class='col-sm-4'>
	       								<div class='box box-solid'>
		       								<div class='box-body prod-body'>
		       									<img src='".$image."' width='100%' height='230px' class='thumbnail'>
		       									<h5><a href='product.php?product=".$row['slug']."'>".$row['name']."</a></h5>
		       								</div>
		       								<div class='box-footer'>
		       									<b> ".number_format($row['price'])." &#208;</b>
		       								</div>
	       								</div>
	       							</div>
	       						";
	       						if($inc == 3) echo "</div>";
						    }
						    if($inc == 1) echo "<div class='col-sm-4'></div><div class='col-sm-4'></div></div>"; 
							if($inc == 2) echo "<div class='col-sm-4'></div></div>";
						}
						catch(PDOException $e){
							echo "Lỗi kết nối!" . $e->getMessage();
						}

						$pdo->close();

		       		?> 
	        	</div>
	        
	        </div>
	      </section>
	     
	    </div>
	  </div>
	    </div>
	  </div>
	  
	  
  
  	<?php include 'includes/footer.php'; ?>
</div>

<?php include 'includes/scripts.php'; ?>
</body>
</html>