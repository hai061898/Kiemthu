<?php 
  include 'includes/session.php';
 
?>
<?php 
  
  $today = date('Y-m-d');
  $year = date('Y');
  if(isset($_GET['year'])){
    $year = $_GET['year'];
  }
  $conn = $pdo->open();
?>
<?php



$stmt = $conn->prepare("SELECT Sum(number) AS numrows FROM sales ");
$stmt->execute();
$urow =  $stmt->fetch();

echo "<h3>".$urow['numrows']."</h3>";

?>

<p>Số thành viên</p>
</div>

<?php



$stmt = $conn->prepare("SELECT Sum(pay_id) AS i FROM sales");
$stmt->execute();
$urow =  $stmt->fetch();

echo "<h3>".$urow['i']."</h3>";

?>

<p>Số thành viên</p>
</div>

