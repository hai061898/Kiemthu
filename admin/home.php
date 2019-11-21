<?php 
  include 'includes/session.php';
  include 'includes/format.php'; 
?>
<?php 
  $today = date('Y-m-d');
  $year = date('Y');
  if(isset($_GET['year'])){
    $year = $_GET['year'];
  }

  $conn = $pdo->open();
?>
<?php include 'includes/header.php'; ?>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

  <?php include 'includes/navbar.php'; ?>
  <?php include 'includes/menubar.php'; ?>


  <div class="content-wrapper">
  
    <section class="content-header">
      <h1>
        Thống kê
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Trang chủ</a></li>
        <li class="active">Thống kê</li>
      </ol>
    </section>

   
    <section class="content">
      <?php
        if(isset($_SESSION['error'])){
          echo "
            <div class='alert alert-danger alert-dismissible'>
              <button type='button' class='close' data-dismiss='alert' aria-hidden='true'>&times;</button>
              <h4><i class='icon fa fa-warning'></i> Error!</h4>
              ".$_SESSION['error']."
            </div>
          ";
          unset($_SESSION['error']);
        }
        if(isset($_SESSION['success'])){
          echo "
            <div class='alert alert-success alert-dismissible'>
              <button type='button' class='close' data-dismiss='alert' aria-hidden='true'>&times;</button>
              <h4><i class='icon fa fa-check'></i> Success!</h4>
              ".$_SESSION['success']."
            </div>
          ";
          unset($_SESSION['success']);
        }
      ?>
     
      <div class="row">
        <div class="col-lg-3 col-xs-6">
     
          <div class="small-box bg-aqua">
            <div class="inner">
              <?php
               $stmt = $conn->prepare("SELECT Sum(pay_id) AS i FROM sales");
               $stmt->execute();
               $urow =  $stmt->fetch();

               
              
               echo "<h3>".number_format($urow['i'])." <p>VNĐ</p> </h3>";

              ?>
              <p>Tổng tiền</p>
            </div>
            <div class="icon">
              <i class="fa fa-shopping-cart"></i>
            </div>
           
          </div>
        </div>
       
        <div class="col-lg-3 col-xs-6">
       
          <div class="small-box bg-green">
            <div class="inner">
              <?php
                $stmt = $conn->prepare("SELECT *, COUNT(*) AS numrows FROM products");
                $stmt->execute();
                $prow =  $stmt->fetch();

                echo "<h3>".$prow['numrows']."</h3>";
              ?>
          
              <p>Số sản phẩm</p>
            </div>
            <div class="icon">
              <i class="fa fa-barcode"></i>
            </div>
            
          </div>
        </div>
      
        <div class="col-lg-3 col-xs-6">
     
          <div class="small-box bg-yellow">
            <div class="inner">
              <?php
                $stmt = $conn->prepare("SELECT *, COUNT(*) AS t FROM users");
                $stmt->execute();
                $urow =  $stmt->fetch();

                echo "<h3>".$urow['t']."<br/></h3>";
              ?>
             
              <p>Số thành viên</p>
            </div>
            <div class="icon">
              <i class="fa fa-users"></i>
            </div>
           
          </div>
        </div>
      
        <div class="col-lg-3 col-xs-6">
         
          <div class="small-box bg-red">
            <div class="inner">
            <?php
           $stmt = $conn->prepare("SELECT *, COUNT(*) AS numrows FROM sales  WHERE sales_date=:sales_date");
           $stmt->execute(['sales_date'=>$today]);
           $urow =  $stmt->fetch();

          
           echo "<h3>".$urow['numrows']."<br/></h3>";
           
             ?>
              
              <p>Số đơn đặt hàng trong ngày</p>
            </div>
            <div class="icon">
              <i class="fa fa-money"></i>
            </div>
            
          </div>
        </div>
       
      </div>
    
      <div class="row">
        <div class="col-xs-12">
          <div class="box">
            <div class="box-header with-border">
              <h3 class="box-title">Báo cáo năm</h3>
              <div class="box-tools pull-right">
                <form class="form-inline">
                  <div class="form-group">
                    <label>Năm: </label>
                    <select class="form-control input-sm" id="select_year">
                      <?php
                        for($i=2015; $i<=2065; $i++){
                          $selected = ($i==$year)?'selected':'';
                          echo "
                            <option value='".$i."' ".$selected.">".$i."</option>
                          ";
                        }
                      ?>
                    </select>
                  </div>
                </form>
              </div>
            </div>
            <div class="box-body">
              <div class="chart">
                <br>
                <div id="legend" class="text-center"></div>
                <canvas id="barChart" style="height:350px"></canvas>
              </div>
            </div>
          </div>
        </div>
      </div>

      </section>
      
    </div>
  	<?php include 'includes/footer.php'; ?>

</div>

<?php
  $months = array();
  $sales = array();
  for( $m = 1; $m <= 12; $m++ ) {
    try{
      $stmt = $conn->prepare("SELECT * FROM details LEFT JOIN sales ON sales.id=details.sales_id LEFT JOIN products ON products.id=details.product_id WHERE MONTH(sales_date)=:month AND YEAR(sales_date)=:year");
      $stmt->execute(['month'=>$m, 'year'=>$year]);
      $total = 0;
      foreach($stmt as $srow){
        $subtotal = $srow['price']*$srow['quantity'];
        $total += $subtotal;    
      }
      array_push($sales, round($total, 2));
    }
    catch(PDOException $e){
      echo $e->getMessage();
    }

    $num = str_pad( $m, 2, 0, STR_PAD_LEFT );
    $month =  date('M', mktime(0, 0, 0, $m, 1));
    array_push($months, $month);
  }

  $months = json_encode($months);
  $sales = json_encode($sales);

?>


<?php $pdo->close(); ?>
<?php include 'includes/scripts.php'; ?>
<script>
$(function(){
  var barChartCanvas = $('#barChart').get(0).getContext('2d')
  var barChart = new Chart(barChartCanvas)
  var barChartData = {
    labels  : <?php echo $months; ?>,
    datasets: [
      {
        label               : 'Thống Kê Từng Tháng',
        fillColor           : 'rgba(60,141,188,0.9)',
        strokeColor         : 'rgba(60,141,188,0.8)',
        pointColor          : '#3b8bba',
        pointStrokeColor    : 'rgba(60,141,188,1)',
        pointHighlightFill  : '#fff',
        pointHighlightStroke: 'rgba(60,141,188,1)',
        data                : <?php echo $sales; ?>
      }
    ]
  }

  var barChartOptions                  = {
    
    scaleBeginAtZero        : true,
    
    scaleShowGridLines      : true,
    
    scaleGridLineColor      : 'rgba(0,0,0,.05)',
    
    scaleGridLineWidth      : 1,
    
    scaleShowHorizontalLines: true,
    
    scaleShowVerticalLines  : true,
    
    barShowStroke           : true,
    
    barStrokeWidth          : 2,
    
    barValueSpacing         : 5,
   
    barDatasetSpacing       : 1,
    
    legendTemplate          : '<ul class="<%=name.toLowerCase()%>-legend"><% for (var i=0; i<datasets.length; i++){%><li><span style="background-color:<%=datasets[i].fillColor%>"></span><%if(datasets[i].label){%><%=datasets[i].label%><%}%></li><%}%></ul>',
   
    responsive              : true,
    maintainAspectRatio     : true
  }

  barChartOptions.datasetFill = false
  var myChart = barChart.Bar(barChartData, barChartOptions)
  document.getElementById('legend').innerHTML = myChart.generateLegend();
});
</script>
<script>
$(function(){
  $('#select_year').change(function(){
    window.location.href = 'home.php?year='+$(this).val();
  });
});
</script>
</body>
</html>
