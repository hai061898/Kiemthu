<?php include 'includes/session.php'; ?>
<?php include 'includes/header.php'; ?>
<body class="hold-transition login-page">
<div class="login-box">
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
            <p>t</p> 
          </div>
        ";
        unset($_SESSION['success']);
      }
    ?>
  	<div class="login-box-body">
    	

    	<form action="reset.php" method="POST">
      	
      		<div class="row">
          <p >Sử dụng mật câu trả lời câu hỏi bí mật của bạn đặt lại mật khẩu cho tài khoản của bạn</p>
    	</form>
      <form action="text2.php" method="POST">
      		<div class="form-group has-feedback">
        		<input type="email" class="form-control" name="email" placeholder="Email" required>
        		<span class="glyphicon glyphicon-envelope form-control-feedback"></span>
      		</div>

         <div class="form-group has-feedback">
            <input type="password" class="form-control" name="password" placeholder="Đặt lại mật Khẩu" required>
            <span class="glyphicon glyphicon-lock form-control-feedback"></span>
          </div>
          <p>Bạn thích gì nhất ?<p>
          <div class="form-group has-feedback">
            <input type="text" class="form-control" name="reset_code" placeholder="Câu trả lời bí mật " required>
            <span class="glyphicon glyphicon-eye-open form-control-feedback"></span>
          </div>
          
      		<div class="row">
    			<div class="col-xs-4">
          			<button type="submit" class="btn btn-primary btn-block btn-flat " name="reset"></i>Xác Minh</button>
        		</div>
      		</div>
          <div>
          <p >Nếu bạn không nhớ câu trả lời bí mật hãy gmail hoặc hotline cho chúng tôi để lấy lại tài khoảng và mật khẩu của bạn:</p>
          <p >Gửi mail cho chúng tôi để lấy lại mật khẩu:</p>
          <button type="button" class="btn btn-info btn-flat"><a href="https://accounts.google.com/signin/v2/identifier?service=mail&passive=true&rm=false&continue=https%3A%2F%2Fmail.google.com%2Fmail%2F&ss=1&scc=1&ltmpl=default&ltmplcache=2&emr=1&osid=1&flowName=GlifWebSignIn&flowEntry=ServiceLogin"><i class="fa fa-envelope"></i></a> </button>
          </div>
          
          <p >Gmail hỗ trợ:1651012047hai@gmail.com</p>
          <p> Số điện thoại hỗ trợ:123456789</p>
    	</form>

      <br>
      <a href="login.php">Tôi nhớ mật khẩu</a><br>
      <a href="index.php"><i class="fa fa-home"></i> Trang chủ</a>
  	</div>
</div>
	
<?php include 'includes/scripts.php' ?>
</body>
</html>