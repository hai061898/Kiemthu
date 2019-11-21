
	
<?php
	include 'includes/session.php';

	$conn = $pdo->open();

	if(isset($_POST['reset'])){
		
		$email = $_POST['email'];
        $password = $_POST['password'];
        $reset_code = $_POST['reset_code'];
        $stmt = $conn->prepare("SELECT * FROM users WHERE reset_code=:reset_code");
		$stmt->execute(['reset_code'=>$reset_code]);
		$row = $stmt->fetch();

		if($password == $row['password']){
			$password = $row['password'];
		}
		else{
			$password = password_hash($password, PASSWORD_DEFAULT);
		}

        try{
            $stmt = $conn->prepare("UPDATE users SET password=:password  WHERE email=:email and reset_code=:reset_code");
        $stmt->execute([ 'password'=>$password, 'email'=>$email,'reset_code'=>$reset_code]);
       
        $_SESSION['success'] = 'Successfully';

        }
    
        catch(PDOException $e){
            $_SESSION['error'] = $e->getMessage();
        }
    
        $pdo->close();
        
    }

			

   
    else{
		$_SESSION['error'] = 'Fill up edit user form first';
	}

	

?>
<?php
  session_start();
  if(!isset($_SESSION["username"])){
  header("Location: login.php");
  exit(); }
?>