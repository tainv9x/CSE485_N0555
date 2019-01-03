<!-- Load Facebook SDK for JavaScript -->
<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = 'https://connect.facebook.net/vi_VN/sdk/xfbml.customerchat.js#xfbml=1&version=v2.12&autoLogAppEvents=1';
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>

<!-- Your customer chat code -->
<div class="fb-customerchat"
  attribution=setup_tool
  page_id="171593056896839"
  theme_color="#8bc53f"
  logged_in_greeting="Hãy inbox chúng mình sẽ giúp bạn ?"
  logged_out_greeting="Hãy inbox chúng mình sẽ giúp bạn ?">
</div>
<?php
                    ob_start();
//change
// Start the session

session_start();
// $conn = mysqli_connect('localhost','root','','user');
$conn = mysqli_connect('localhost','axunlifohosting_tai','taikuteyh1','axunlifohosting_tai2');
// $conn = mysqli_connect('localhost','root','','axunlifohosting_dbtai');

mysqli_set_charset($conn, 'UTF8');
    if(!$conn){
        die("Kết nối thất bại". mysqli_connect_error());
    }
    $sql2 = "select * from users";
    $s = mysqli_query($conn,$sql2);

    if(mysqli_num_rows($s)>0)
        {
            while($row = mysqli_fetch_assoc($s)){
                $depot[$row['userName']] = $row;
            }
        }
        
        
?>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    
    <script
  src="https://code.jquery.com/jquery-3.3.1.js"
  integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
  crossorigin="anonymous"></script>
  	<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap-theme.min.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css" />
  <script defer src="https://use.fontawesome.com/releases/v5.0.8/js/solid.js" integrity="sha384-+Ga2s7YBbhOD6nie0DzrZpJes+b2K1xkpKxTFFcx59QmVPaSA8c7pycsNaFwUK6l" crossorigin="anonymous"></script>
    <script defer src="https://use.fontawesome.com/releases/v5.0.8/js/fontawesome.js" integrity="sha384-7ox8Q2yzO/uWircfojVuCQOZl+ZZBg2D2J5nkpLqzH1HY0C1dHlTKIbpRz/LG23c" crossorigin="anonymous"></script>
    <link rel="shortcut icon" href="/images/favicon.ico"/>
    <link rel="stylesheet" href="index.css" /> 
    
    <title>Hệ thống 24h - Hệ thống quản lý thành viên Page</title>
    <script type="text/javascript">
    	$(document).ready(function(){
            $("li").focus(){
                $("this").css('background-color','grey');
            }
            else{}
            $('.js-example-basic-multiple').select2();

        });
    </script>
</head>
<body>

<?php
    

        if(isset($depot)){				
            foreach($depot as &$value){
                if(isset($value)){
                    if(isset($_SESSION['login'])&&$value['userName']==$_SESSION['login']){
                        $name = $value['name'];
                        $sodu = $value['sodu'];
                        $gender = $value['gender'];
                        $level = $value['level'];
                        $bthday= $value['bthdate'];
                        $mkc2 = $value['mk2'];
                        $email_current = $value['email'];
                        $userName = $value['userName'];
                        $passUserCurrent =$value['password'];
                        $pages = $value['page'];
                        $cre_current = $value['cre'];
                        $checkStatus="exist";

                        $so_tk_gd = $value['so_tk'];
                        $so_in_tren_the_gd = $value['so_in_tren_the'];
                        $ten_gd = $value['ten'];
                        $ngan_hang_gd = $value['ngan_hang'];
                        $chi_nhanh_gd = $value['chi_nhanh'];

                        break;
                    }
                    else {
                        $checkStatus = "not found";
                    }
                }
            }
        }
        else
            $checkStatus = "not found";

         if(isset($checkStatus)&&$checkStatus=="exist"){
                
        }
            if(isset($_POST['logOut'])){
                if(isset($_SESSION['pageSelect']))
                    unset($_SESSION['pageSelect']);                    
                unset($_SESSION['login']);
                unset($_SESSION['cuUrl']);

             header('Location: index.php');
            }
            
    ?>
    <div class = "container">
            <div id = "row-header" class = "row">
                    
                        <?php 
                        // if(isset($name)){
                        //     echo "<div style = 'padding-right: 0px;'     class = 'col-md-12'  >";
                        //     echo "<form method = 'POST'>";
                        //     echo " <input class = 'Out' type = 'submit' name = 'logOut' value = 'Đăng xuất' >";
                        //     echo "</form>";
                            
                        // }
                            if(isset($sodu)){
                                echo "<div style = 'margin-top: 11px;' class = 'col-xs-3 col-md-3'>
                                    <p><img src = '/images/icon_sodu.png' style = 'width: 25px; height: 25px;' > ";
                                    echo "<span style = 'font-weight: bold;color:green;'>".$sodu."  VND</span>"."</p>";     
                                    echo "</p></div>";
                                        
                                }
                                ?>
                                <div style = 'margin-top: 3px;padding-left: 0px;color: green;font-weight: bold;' class = 'col-xs-3 col-md-3'><!--<i class="fas fa-phone-volume fa-2x"></i><!--></div>
                                <?php
                            if(isset($name)){
                                echo "
                            <div class = 'col-md-5 col-xs-5 taikhoan'>
                            <div class='btn-group'>
                            <button type='button' id = 'btn-taikhoan' class='btn btn-default dropdown-toggle' data-toggle='dropdown'>
                                $name <span class='caret'></span>
                            </button>
                            <ul style = 'min-width: 201px;' class='dropdown-menu' role='menu'>
                                <li><a href='naptk.php'>Nạp tiền</a></li>
                                <li><a href='changePass.php'>Đổi mật khẩu</a></li>
                                <li><a href='dangky_tknh.php'>Tài khoản ATM</a></li>
                                <li><a href='quenmk2.php'>Mật khẩu cấp - 2</a></li>
                                <li><a href='info.php'>Thông tin tài khoản</a></li>
                                <li class='divider'></li>
                                <li><form method = 'POST'>
                                <input class = 'Out' type = 'submit' name = 'logOut' value = 'Đăng xuất' >
                                </form>
                                </li>
                            </ul>
                            </div>
                            </div>
                            ";    
                            }

                            
                            
                        if(!isset($name)){
                            echo "
                            <div style = 'text-align: right;' class = 'col-md-9 col-xs-9 box-dk-dn'>
                            <span class = 'dangky'><i class='fas fa-user-plus'></i><a style = 'color: #fff;margin-left: 5px;' href = 'dangky.php'>Đăng ký</a></span>
                            <span class = 'dangnhap'><i class='fas fa-sign-in-alt'></i><a style = 'color: #fff;    margin-left: 6px;' href = 'login.php'>Đăng nhập</a></span>
                            <div class='clear'></div>
                            </div>
                            ";
                        }
                        ?>
                        </div>
                <div style = "background: #fff;border: 1px solid #f4f4f4;" class = "row">
                    <a href = "index.php">
                        <div style = "margin-top: 19px;margin-bottom: 19px;" class = "col-md-6 col-xs-8">
                            <img id = "logo" src = "/images/icon2.png">
                        </div>
                    </a>
                    <div style = "margin-top: 11px;" class = "col-md-6 col-xs-4 info-admin">
                        <img src = "/images/icon_facebook.png"><a style = "color: green;font-weight: bold;" href="https://www.facebook.com/hethong24h.net" target="_blank">  Hệ Thống 24H</a> 
                        <p></p><img src = "/images/icon_email.png"><a style = "color: green;font-weight: bold;margin-top: 4px;" href="mailto:Admin@hethong24h.net?Subject=Hello 24h" target="_top"> Admin@HeThong24h.Net</a></p>
                    </div>
                </div>
                <div>
                <div class = "row"> <!--menu-->
                <nav class="navbar navbar-default ">
  <div style = "background: #fff;" class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Menu</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="index.php">Trang chủ</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
          <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Mua thẻ Online <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="muathe.php">Thẻ nạp điện thoại</a></li>
            <li><a href="thegame.php">Thẻ nạp Game</a></li>
            <li><a href="topup.php">Nạp tiền cho điện thoại</a></li>
          </ul>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Tài khoản<span class="caret"></span></a>
          <ul class="dropdown-menu">
        <li><a href="naptk.php">Nộp tiền vào tài khoản</a></li> 
        <li><a href="info.php">Thông tin tài khoản</a></li>
        <li><a href="dangky_tknh.php">Tài khoản ngân hàng</a></li>
        <li><a href="changePass.php">Đổi mật khẩu đăng nhập</a></li>
        <li><a href="changmkc2.php">Đổi mật khẩu cấp 2</a></li>
        <li><a href="quenmk2.php">Lấy lại mật khẩu cấp 2</a></li>
        </ul>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Quản lý thành viên <span class="caret"></span></a>
          <ul class="dropdown-menu">
        <li><a href="danhsach.php">Danh sách thành viên</a></li>
        <li><a href="ds_cho.php">Yêu cầu chờ phê duyệt (Quản lý)</a></li>
        <li><a href="dkdv.php">Đăng ký sử dụng</a></li>
        <li><a href="https://m.me/hethong24h.net?ref=giahan" target="_blank">Gia hạn (Quản lý)</a></li>
        </ul>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Chức năng <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="chuyen_tien.php">Chuyển tiền</a></li>
            <li><a href="ruttien.php">Rút tiền về ATM</a></li>
            <li><a href="naptk.php">Nộp tiền vào tài khoản</a></li>
          </ul>
          <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Tin tức<span class="caret"></span></a>
          <ul class="dropdown-menu">
          <li><a href="/tintuc/huong-dan-nap-tien.php">Nộp tiền vào tài khoản</a></li>
          <li><a href="/hoidap/huong-dan-su-dung-quan-ly-thanh-vien.php">Sử dụng quản lý thành viên</a></li>
          <li><a href="#">Tin tức bán thẻ</a></li>
          <li><a href="#">Hướng dẫn</a></li>
          <li><a href="#">Hỏi đáp</a></li>
          
          </ul>
          <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Lịch sử giao dịch <span class="caret"></span></a>
          <ul class="dropdown-menu">
          <li><a href="ls_mua_the.php">Mua thẻ cào</a></li>
          <li><a href="ls_nap_sdt.php">Nạp tiền điện thoại</a></li>
          <li><a href="ls_chuyen_tien.php">Chuyển tiền</a></li>
          <li><a href="ls_nhan_tien.php">Nhận tiền</a></li>
          <li><a href="ls_rut_tien.php">Rút tiền</a></li>
          <li><a href="ls_dky_dv.php">Đăng ký dịch vụ</a></li>
          </ul>
        </li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
       
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
                </div>
        <div class = "row">
           
            <div id = "right" class = "col-md-12 col-xs-12">