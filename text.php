<form action="" method="post" enctype="multipart/form-data">
        <table align="center" width="500" border="1" >
            <tr align="center">
                <td colspan="5"><h2>Pay</h2></td>
            </tr>
            <tr>
                <td align="right"><b>Pay</b></td>
                <td><input type="text" name="pay" value="&#36;<?php  include 'details.php'?>" ></td>
            </tr>
            <tr>
                <td align="right"><b>Email</b></td>
                <td><input  type="email" name="user_id" size="60" require/></td>
            </tr>
			<tr>
                <td align="right"><b>Address</b></td>
                <td><input  type="text" name="address" size="60" require/></td>
            </tr>
            <tr align="center" >
                <td colspan="5"><input  type="submit" name="check" value="check" size="60" ></td>
            </tr>
        </table>
</form>


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
	if($row['numrows'] > 0){
		$_SESSION['error'] = 'Category already exist';
	}
	else{
		try{
			$stmt = $conn->prepare("INSERT INTO sales (user_id,	pay_id,	sales_date,address) VALUES (:user_id, :pay_id, :sales_date, :address)");
			$stmt->execute(['user_id'=>$user_id,'pay_id'=>$pay,'sales_date'=>$now, 'address'=>$address]);
			$_SESSION['success'] = 'Mua sản phẩm thành công';

		}
		catch(PDOException $e){
			$_SESSION['error'] = $e->getMessage();
		}
	}

	$pdo->close();
}
else{
	$_SESSION['error'] = 'Fill up category form first';
}


?>

