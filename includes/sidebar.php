<div class="row">
	<div class="box box-solid">
	  	<div class="box-header with-border">
	    	<h3 class="box-title"><b>Sản phẩm xem nhiều trong ngày</b></h3>
	  	</div>
	  	<div class="box-body">
	  		<ul id="trending">
	  		<?php
	  			$now = date('Y-m-d');
	  			$conn = $pdo->open();

	  			$stmt = $conn->prepare("SELECT * FROM products WHERE date_view=:now ORDER BY counter DESC LIMIT 10");//liêt kệ sp xem nhiều giới hạn 10
	  			$stmt->execute(['now'=>$now]);
	  			foreach($stmt as $row){
	  				echo "<li><a href='product.php?product=".$row['slug']."'>".$row['name']."</a></li>";
	  			}

	  			$pdo->close();
	  		?>
	    	<ul>
	  	</div>
	</div>
</div>

<div class="row">
	<div class="box box-solid">
	  	<div class="box-header with-border">
	    	<h3 class="box-title"><b>Đăng ký báo tin qua gmail</b></h3>
	  	</div>
	  	<div class="box-body">
	    	<p>Nhận cập nhật miễn phí về các sản phẩm mới nhất và giảm giá, thẳng đến hộp thư của bạn.</p>
	    	<form method="POST" action="">
		    	<div class="input-group">
	                
	                <span class="input-group-btn">
	                    <button type="button" class="btn btn-info btn-flat"><a href="https://accounts.google.com/signin/v2/identifier?service=mail&passive=true&rm=false&continue=https%3A%2F%2Fmail.google.com%2Fmail%2F&ss=1&scc=1&ltmpl=default&ltmplcache=2&emr=1&osid=1&flowName=GlifWebSignIn&flowEntry=ServiceLogin"><i class="fa fa-envelope"></i></a> </button>
	                </span>
	            </div>
		    </form>
	  	</div>
	</div>
</div>

<div class="row">
	<div class='box box-solid'>
	  	<div class='box-header with-border'>
	    	<h3 class='box-title'><b>Theo Dõi Sản Phẩm Mới Nhất</b></h3>
	  	</div>
	  	<div class='box-body'>
	    	<a href="https://www.facebook.com/" class="btn btn-social-icon btn-facebook"><i class="fa fa-facebook"></i></a>
	    	<a href="https://twitter.com/" class="btn btn-social-icon btn-twitter"><i class="fa fa-twitter"></i></a>
	    	<a href="https://www.instagram.com/"  class="btn btn-social-icon btn-instagram"><i class="fa fa-instagram"></i></a>
	    	<a href="https://accounts.google.com/signin/v2/identifier?passive=1209600&continue=https%3A%2F%2Faboutme.google.com%2Fu%2F0%2F%3Freferer%3Dgplus&followup=https%3A%2F%2Faboutme.google.com%2Fu%2F0%2F%3Freferer%3Dgplus&flowName=GlifWebSignIn&flowEntry=ServiceLogin" class="btn btn-social-icon btn-google"><i class="fa fa-google-plus"></i></a>
	    	<a href="https://www.linkedin.com/" class="btn btn-social-icon btn-linkedin"><i class="fa fa-linkedin"></i></a>
	  	</div>
	</div>
</div>
