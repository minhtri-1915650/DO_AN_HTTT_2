<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.css">
  <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>
  <script src="//cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
  <script src="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.min.js"></script>

<?php
$d=getdate();
$year=$d['year'];
$total = 0; $cost = 0;
for ($i=1; $i <= 12 ; $i++) 
{   
  $list_orrders = $this->Morders->order_follow_month($year, $i);
  $sum = 0;
  foreach ($list_orrders as $row_orrder) 
  {
    $order_detail = $this->Morderdetail->orderdetail_orderid($row_orrder['id']);
    foreach ($order_detail as $value) {
      $sum += $value['count'];
    }
    $total += $row_orrder['money'];
  }
}
?>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
  <!-- Content Header (Page header) -->

  <!-- Main content -->
  <section class="content">
    <!-- Small boxes (Stat box) -->
    <div class="row">
      <div class="col-lg-3 col-xs-6">
        <!-- small box -->
        <a class="small-box bg-aqua"  href="<?php echo base_url() ?>admin/product">
          <div class="inner">
            <h3><?php echo $total1; ?></h3>
            <p>Sản phẩm</p>
            <div class="icon">
              <i class="ion ion-bag"></i>
            </div>
          </div>
          <div class="small-box-footer">Danh sách sản phẩm</div>
        </a>
      </div>
      <!-- ./col -->
      <div class="col-lg-3 col-xs-6">
        <!-- small box -->
        <a class="small-box bg-green" href="<?php echo base_url() ?>admin/content" >
          <div class="inner">
            <h3><?php echo $total2; ?></h3>
            <p>Bài viết</p>
          </div>
          <div class="icon">
            <i class="ion ion-android-chat "></i>
          </div>
          <div class="small-box-footer">Danh sách bài viết</div>
        </a>
      </div>
      <!-- ./col -->
      <a class="col-lg-3 col-xs-6" href="<?php echo base_url() ?>admin/customer">
        <!-- small box -->
        <div class="small-box bg-yellow">
          <div class="inner">
            <h3><?php echo $total3; ?></h3>
            <p>Khách hàng</p>
          </div>
          <div class="icon">
            <i class="ion ion-email"></i>
          </div>
          <!-- <a href="<?php echo base_url() ?>admin/customer" class="small-box-footer">Danh sách khách hàng</a> -->
          <div class="small-box-footer">Danh sách khách hàng</div>
        </div>
      </a>
      <!-- ./col -->
      <div class="col-lg-3 col-xs-6">
        <!-- small box -->
        <a class="small-box bg-red" href="<?php echo base_url() ?>admin/orders" >
          <div class="inner">
            <h3><?php echo $total4; ?></h3>
            <p>Đơn hàng</p>
          </div>
          <div class="icon">
            <i class="ion ion-cube"></i>
          </div>
          <div class="small-box-footer">Danh sách đơn hàng</div>
        </a>
      </div>
      <!-- ./col -->
    </div>
    <!-- /.row -->
  </section>
  <section class="content">
    <div class="row">
      <!-- /.col (LEFT) -->
      <div class="col-md-12">
        <!-- LINE CHART -->
        <div class="box box-info">
          <div class="box-header with-border">
            <h3 class="box-title">Bán hàng & Doanh thu</h3>
            <div class="box-tools pull-right">
              <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
              </button>
              <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
            </div>
          </div>
          <div class="box-body">
            <div class="chart">
              <div id="chart_div" style="width: 100%; height: 250px;"></div>
            </div>
          </div>
          <div class="box-footer">
            <div class="row">
              <div class="col-sm-4 col-xs-6">
                <div class="description-block border-right">
                  <h5 class="description-header" style="color: #e90000;"><?php echo number_format($total);?> VNĐ</h5>
                  <span class="description-text">Tổng doanh thu</span>
                </div>
                <!-- /.description-block -->
              </div>
              <!-- /.col -->
            </div>
            <?php
          $d=getdate();
          $year=$d['year'];
          for ($i=1; $i <= 12 ; $i++) 
          {   
            $list_orrders = $this->Morders->order_follow_month($year, $i);
            $total_month = 0;
            foreach ($list_orrders as $row_orrder) 
            {
              $total_month += $row_orrder['money'];
            }
            echo '<div class="col-sm-4 col-xs-6">
                <div class="description-block border-right" style="display: inline-flex;">
                  <span class="description-text">Doanh thu tháng '.$i.' :  </span> 
                  <h5 class="description-header" style="color: #e90000;padding-left: 10px;">'.number_format($total_month).' VNĐ</h5>
                </div>
                <!-- /.description-block -->
              </div>';
          }
          ?>
            <!-- /.row -->
          </div>
          <!-- /.box-body -->
        </div>
      </div> 
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
 

  <script>
   google.charts.load('current', {'packages':['corechart']});
   google.charts.setOnLoadCallback(drawVisualization);

   function drawVisualization() {
    var data = google.visualization.arrayToDataTable([
     ['Month', 'Bán ra', 'Đơn hàng'],
     <?php
     $d=getdate();
     $year=$d['year'];
     for ($i=1; $i <= 12 ; $i++) 
     {   
      $list_orrders = $this->Morders->order_follow_month($year, $i);
      $sum = 0;
      foreach ($list_orrders as $row_orrder) 
      {
        $order_detail = $this->Morderdetail->orderdetail_orderid($row_orrder['id']);
        foreach ($order_detail as $value) {
          $sum += $value['count'];
        }
      }
      if($i >= 1 && $i <=9)
      {
        echo "['0".$i.'/'.$year."',".$sum.",".count($list_orrders)."],";
      }
      else
      {
        echo "['".$i.'/'.$year."',".$sum.",".count($list_orrders)."],";
      }
    }
    ?>

    ]);

    var options = {
      title: 'Số lượng đơn hàng trong năm 2022',
      seriesType: 'bars'
    };

    var chart = new google.visualization.ComboChart(document.getElementById('chart_div'));
    chart.draw(data, options);
  }
  
  

</script>
<div id="chart"></div>
<!-- <?php 
//index.php
$connect = mysqli_connect("localhost", "root", "", "testing");
$query = "SELECT * FROM account";
$result = mysqli_query($connect, $query);
$chart_data = '';
while($row = mysqli_fetch_array($result))
{
 $chart_data .= "{ year:'".$row["year"]."', profit:".$row["profit"].", purchase:".$row["purchase"].", sale:".$row["sale"]."}, ";
}
$chart_data = substr($chart_data, 0, -2);
?> -->
<script>
Morris.Bar({
 element : 'chart',
 data:[<?php echo $chart_data; ?>],
 xkey:'year',
 ykeys:['profit', 'purchase', 'sale'],
 labels:['Profit', 'Purchase', 'Sale'],
 hideHover:'auto',
 stacked:true
});
</script>