
<?php
	include 'includes/session.php';

	if(isset($_POST['add'])){
		$name = $_POST['name'];
		$slug = $_POST['slug'];
		$conn = $pdo->open();
		$stmt = $conn->prepare("SELECT *, COUNT(*) AS numrows FROM category WHERE name=:name");
		$stmt->execute(['name'=>$name]);
		$row = $stmt->fetch();

		if($row['numrows'] > 0){
			$_SESSION['error'] = 'Lỗi danh mục';
		}
		else{
			try{
				$stmt = $conn->prepare("INSERT INTO category (name,cat_slug) VALUES (:name, :slug)");
				$stmt->execute(['name'=>$name,'slug'=>$slug]);
				$_SESSION['success'] = 'Thêm thành công nhà cung cấp hàng';

				
			}
			catch(PDOException $e){
				$_SESSION['error'] = $e->getMessage();
			}
		}

		$pdo->close();
	}
	else{
		$_SESSION['error'] = 'Điền thông tin danh mục vào';
	}

	header('location: category.php');

?>