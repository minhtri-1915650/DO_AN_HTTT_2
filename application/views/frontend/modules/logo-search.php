<section class="logo-search">
  <div class="bg-info">
    <div class="container">
      <div class="row">
        <div class="col-sm-3 col-md-4 col-lg-4 search hidden-xs">

          <form action="search" method="get" role="form">
            <div class="input-search" style='padding-top: 10px'>
              <input type="text" class="form-control" id="search_text" name="search" style="  background-image: url('https://cdn-icons-png.flaticon.com/128/54/54481.png');
background-repeat: no-repeat;
/* background-position: 5px center; */
background-position:95% 50%;
background-size: 25px 25px;" placeholder=" Tìm kiếm sản phẩm ...">
              <!-- <button>
  <i class="fa fa-search" ></i>
</button> -->
            </div>
          </form>
        </div>
        <div class="col-xs-6 col-sm-5 col-md-4 col-lg-4 logo">
          <a href="<?php echo base_url() ?>"><img src="<?php echo base_url() ?>public/images/new-logo.png" alt="Logo Construction"></a>

        </div>

        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-6" style='padding-top: 12px'>
          <!-- Account -->
          <div class="user_login dropdown">
             <i class="fa fa-user" aria-hidden="true"></i>
            <button class="btn dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
              <!-- <a href="thong-tin-khach-hang" title="Tài khoản"> Tài khoản</a>  -->
              <strong>Profile</strong>
              
              <span class="caret"></span>
            </button>
            <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
              <!-- <li><a href="thong-tin-khach-hang" title="Tài khoản"> Tài khoản</a> </li> -->
              <!-- <li role="separator" class="divider"></li> -->
              <!-- <li>                		 -->
                <?php 
                              if($this->session->userdata('sessionKhachHang')){
                                $name=$this->session->userdata('sessionKhachHang_name');
                                echo "<li><a href='thong-tin-khach-hang''> $name</a></li>";
                                echo "<li><a href='dang-xuat'>Đăng xuất</a></li>";
                              }else{
                                echo "<li  style='padding: 2px;'><a href='dang-ky' >Đăng ký</a></li>";
                                echo "<li  style='padding: 2px;'><a href='dang-nhap' >Đăng nhập</a></li>";
                              }
                              ?>
                              <!-- </li> -->
            </ul>
          </div>
          <!-- Cart -->
          <div class="cart_header" style="margin-right: 24px; margin-left:0;">
            <a href="gio-hang" title="Giỏ hàng">
              <div>
               
                  <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                <span>  <strong class="cart_header_count">Giỏ hàng (<?php
                                                              if ($this->session->userdata('cart')) {
                                                                $val = $this->session->userdata('cart');
                                                                echo count($val);
                                                              } else {
                                                                echo 0;
                                                              }
                                                              ?>)</strong> </span>
                  <div class="cart_price">
                    <?php if ($this->session->userdata('cart')) :
                      $cart = $this->session->userdata('cart');
                      $money = 0;
                      foreach ($cart as $key => $value) :
                        $row = $this->Mproduct->product_detail_id($key); ?>
                        <?php
                        $total = 0;
                        if ($row['price_sale'] > 0) {
                          $total = $row['price_sale'] * $value;
                        } else {
                          $total = $row['price'] * $value;
                        }
                        $money += $total;
                        ?>
                      <?php endforeach; ?>
                      <?php echo number_format($money) . ' VNĐ'; ?>
                    <?php else : ?>
                      <p>0 VNĐ</p>
                    <?php endif; ?>
                    </div>
                
              </div>




            </a>
            <!-- <div class="cart_clone_box">
              <div class="cart_box_wrap hidden">
                <div class="cart_item original clearfix">
                  <div class="cart_item_image">
                  </div>
                  <div class="cart_item_info">
                    <p class="cart_item_title"><a href="" title=""></a></p>
                    <span class="cart_item_quantity"></span>
                    <span class="cart_item_price"></span>
                    <span class="remove"></span>
                  </div>
                </div>
              </div>
            </div> -->
          </div>
          <!-- End Cart -->


          <!-- <div class="user_login ">
            <a href="thong-tin-khach-hang" title="Tài khoản">
              <div class="user_login_icon">
               
                <i class="fa fa-user" aria-hidden="true"></i>
                <span><strong>Tài khoản</strong></span>

              </div>
      
            </a>
          </div> -->
        </div>
      </div>
    </div>
  </div>
</section>