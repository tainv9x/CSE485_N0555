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
    <link rel="shortcut icon" href="../images/favicon.ico"/>
    <link rel="stylesheet" href="../index.css" />

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
                        $level = $value['level'];

                        $userName = $value['userName'];
                        $pages = $value['page'];
                        $checkStatus="exist";
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
             header('Location: ../index.php');
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
                                    <p><img src = '../images/icon_sodu.png' style = 'width: 25px; height: 25px;' > ";
                                    echo "<span style = 'font-weight: bold;color:green;'>".$sodu."  VND</span>"."</p>";
                                    echo "</p></div>";

                                }
                                ?>
                                <div style = 'margin-top: 3px;padding-left: 0px;color: green;font-weight: bold;' class = 'col-xs-3 col-md-3'><!--<i class="fas fa-phone-volume fa-2x"></i> 01658.654.111<!--></div>
                                <?php
                            if(isset($name)){
                                echo "
                            <div class = 'col-md-5 col-xs-5 taikhoan'>
                            <div class='btn-group'>
                            <button type='button' id = 'btn-taikhoan' class='btn btn-default dropdown-toggle' data-toggle='dropdown'>
                                $name <span class='caret'></span>
                            </button>
                            <ul style = 'min-width: 201px;' class='dropdown-menu' role='menu'>
                                <li><a href='../info.php'>Thông tin tài khoản</a></li>
                                <li><a href='../changePass.php'>Đổi mật khẩu</a></li>
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
                            <span class = 'dangky'><i class='fas fa-user-plus'></i><a style = 'color: #fff;margin-left: 5px;' href = '../dangky.php'>Đăng ký</a></span>
                            <span class = 'dangnhap'><i class='fas fa-sign-in-alt'></i><a style = 'color: #fff;    margin-left: 6px;' href = '../login.php'>Đăng nhập</a></span>
                            <div class='clear'></div>
                            </div>
                            ";
                        }
                        ?>
                        </div>
                <div style = "background: #fff;border: 1px solid #f4f4f4;" class = "row">
                    <a href = "../index.php">
                        <div style = "margin-top: 19px;margin-bottom: 19px;" class = "col-md-6 col-xs-8">
                            <img id = "logo" src = "../images/icon2.png">
                        </div>
                    </a>
                    <div style = "margin-top: 11px;" class = "col-md-6 col-xs-4 info-admin">
                        <img src = "../images/icon_facebook.png"><a style = "color: green;font-weight: bold;" href="https://www.facebook.com/hethong24h.net" target="_blank">  Hệ Thống 24H</a>
                        <p></p><img src = "../images/icon_email.png"><a style = "color: green;font-weight: bold;margin-top: 4px;" href="mailto:Admin@hethong24h.net?Subject=Hello 24h" target="_top"> Admin@HeThong24h.Net</a></p>
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
      <a class="navbar-brand" href="/admin">Trang chủ</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
          <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Chức năng<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="dsdky_dvu.php">Kích hoạt dịch vụ</a></li>
          </ul>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Yêu cầu<span class="caret"></span></a>
          <ul class="dropdown-menu">
        <li><a href="duyet_rut_tien.php">Duyệt rút tiền</a></li>
        <li><a href="ds_nap.php">Duyệt nạp tiền</a></li>
        </ul>
          <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Lịch sử server <span class="caret"></span></a>
          <ul class="dropdown-menu">
          <li><a href="ls_muathe_sv.php">Mua thẻ cào</a></li>
          <li><a href="ls_nap_dt_sv.php">Nạp tiền điện thoại</a></li>
          <li><a href="ls_chuyen_tien_sv.php">Chuyển - Nhận tiền</a></li>
          <li><a href="ls_rut_tien_sv.php">Rút tiền</a></li>
          <li><a href="ls_dky_dvu_sv.php">Đăng ký dịch vụ</a></li>
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
