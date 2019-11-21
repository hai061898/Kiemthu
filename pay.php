
<?php
  if(isset($_SESSION['user'])){
    header('location: cart_view.php');
  }

  if(isset($_SESSION['captcha'])){
    $now = time();
    if($now >= $_SESSION['captcha']){
      unset($_SESSION['captcha']);
    }
  }

?>
<?php include 'includes/header.php'; ?>
<body class="hold-transition register-page">
<div class="register-box">
  	<?php
      if(isset($_SESSION['error'])){
        echo "
          <div class='callout callout-danger text-center'>
            <p>".$_SESSION['error']."</p> 
          </div>
        ";
        unset($_SESSION['error']);
      }

      if(isset($_SESSION['success'])){
        echo "
          <div class='callout callout-success text-center'>
            <p>".$_SESSION['success']."</p> 
          </div>
        ";
        unset($_SESSION['success']);
      }
    ?>
  	<div class="register-box-body">
    	<p class="login-box-msg">Thanh toán và đặt vị trí giao hàng</p>

    	<form method="POST" action="" enctype="multipart/form-data">
      <p>Điền  tên, số điện thoại, địa chỉ, số lượng, tên sản phẩm vào bảng này <i>(thông tin này sẽ được ghi lên bưu kiện hàng)</i>:</p>
          <div class="form-group has-feedback">
            
            <textarea class="form-control " name="address" placeholder=" " rows="5"></textarea>
            
          </div>
          <p>Gmail tài khoản:</p>
      		<div class="form-group has-feedback">
            
        		<input type="gmail" class="form-control" name="user_id" placeholder="" value="" required>
        		<span class="glyphicon glyphicon-pencil form-control-feedback"></span>
      		</div>
          
          
          <div class="form-group has-feedback">
            <input type="checkbox" name="pay" value="<?php  include 'details.php'?> &#208;" required> Đồng ý thanh toán
          </div>
          
          
          <?php
            if(!isset($_SESSION['captcha'])){
              echo '
                <di class="form-group" style="width:100%;">
                  <div class="g-recaptcha" data-sitekey="6LevO1IUAAAAAFX5PpmtEoCxwae-I8cCQrbhTfM6"></div>
                </di>
              ';
            }
          ?>
          <hr>
      		<div class="row">
    			<div class="col-xs-4">
         
          
          <button type="submit" class="btn btn-primary btn-block btn-flat" name="check">Xác nhận</button>
                
            
        		</div>
            <p>Sau khi xác nhận vui lòng quay về trang chủ !   <a href="index.php"><i class="fa fa-home"></i>Về trang Chủ</a><p>
      		</div>
    	</form>
      <br>
      <a href="https://momo.vn/">Thanh toán online qua momo.vn</a><br>
    
  	</div>
</div>
	
<?php include 'includes/scripts.php' ?>
<?php

if(isset($_POST['check'])){
	$pay = $_POST['pay'];
	$user_id = $_POST['user_id'];
	$address = $_POST['address'];
	$conn = $pdo->open();
	$stmt = $conn->prepare("SELECT *, COUNT(*) AS numrows FROM sales WHERE user_id=:user_id");
	$stmt->execute(['user_id'=>$user_id]);
	$row = $stmt->fetch();
  $now = date('Y-m-d');
  echo"<script>alert('Thanh toán và đặt hàng thành công')</script>";
	if($row['numrows'] > 0){
	
	}
	else{
		try{
			$stmt = $conn->prepare("INSERT INTO sales (user_id,	pay_id,	sales_date,address) VALUES (:user_id, :pay_id, :sales_date, :address)");
			$stmt->execute(['user_id'=>$user_id,'pay_id'=>$pay,'sales_date'=>$now, 'address'=>$address]);
			$_SESSION['success'] = 'Thanh toán thành công';

		}
		catch(PDOException $e){
			$_SESSION['error'] = $e->getMessage();
		}
	}

	$pdo->close();
}

else{
	
}


?>
</body>
</html>