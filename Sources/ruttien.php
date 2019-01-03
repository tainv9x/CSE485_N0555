<?php include 'top_page.php' ?>

<?php
 $_SESSION['cuUrl'] = (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] === 'on' ? "https" : "http") . "://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]";
        if(isset($depot)){				    
            foreach($depot as &$value){
                if(isset($value)){
                    if(isset($_SESSION['login'])&&$value['userName']==$_SESSION['login']){
                        $name = $value['name'];
                        $sodu = $value['sodu'];
                        $id = $value['id'];
                        $userName = $value['userName'];
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

        if(isset($checkStatus)&&$checkStatus=="not found")
            header('Location: login.php');
            
        else if(isset($checkStatus)&&$checkStatus=="exist"){
        }

        date_default_timezone_set('Asia/Ho_Chi_Minh');
        $phi = 0;
    if(isset($_POST['rut'])){
        if($_POST['so-tien']<500000)
            $phi = 5500;
        else
            $phi = 7700;
        $tong_tien_rut = $_POST['so-tien'] +$phi;
        if($tong_tien_rut>$sodu){
            $error10 = "<p class = 'error'>+) Số tiền của bạn không đủ để thực hiện giao dịch !
                                    <br>+) Vui lòng nạp thêm tiền để sử dụng. Xin cảm ơn !</p>";
        }
        if($_POST['mkc2']!=$mkc2){
            $error11 = "<p class = 'error'>Mật khẩu cấp 2 không đúng !</p>";
        }

        if($tong_tien_rut<=$sodu && $_POST['mkc2']==$mkc2){
            
			$time_now = date("Y-m-d H:i:sa");
            $st = "Rút <d>' $tong_tien_rut '</d> THÀNH CÔNG, <d>xin chờ xét duyệt.</d>
            <br><d>Chủ tài khoản:</d> $ten_gd
            <br><d>Số tài khoản:</d> $so_tk_gd
            <br><d>Ngân hàng:</d> $ngan_hang_gd ";
            $ma_gd = mt_rand(100000, 999999999);
            $sotien_rut = $_POST['so-tien'];
            $ghichu = $_POST['ghi-chu'];
            
            $sqlRt = "insert into cho_rut(userName,sotien,ma_gd,so_tk,so_in_tren_the,ten,ngan_hang,chi_nhanh,ghichu,time) values(n'$userName',n'$sotien_rut','$ma_gd',n'$so_tk_gd',n'$so_in_tren_the_gd','$ten_gd',n'$ngan_hang_gd',n'$chi_nhanh_gd',n'$ghichu',n'$time_now')";
			mysqli_query($conn, $sqlRt);
		
            
            $sqlRt = "insert into ls_rut_tien(userName,ma_gd,sotien,time,trangthai,nganhang) values(n'$userName',n'$ma_gd',n'$sotien_rut',n'$time_now',n'Chờ xét duyệt',n'$ngan_hang_gd')";
            mysqli_query($conn, $sqlRt);

            $sqlU2 = "update users set sodu = sodu-$tong_tien_rut where userName = '$userName'";
            mysqli_query($conn,$sqlU2);
           $mail = 1; // gửi
		
		//goi thu vien
		include('send/class.smtp.php');
		include "send/class.phpmailer.php";
		include "send/functions.php";
		$title = 'Rút tiền - Hệ Thống 24H NET';
		$content = "Tài khoản rút : <strong>$userName</strong><br><br>
                    Số tiền :	<strong>$sotien_rut</strong><br><br>
                    Tên chủ tài khoản : <strong>$ten_gd</strong><br><br>
                    Số tài khoản : <strong>$so_tk_gd</strong><br><br>
                    Số in trên thẻ : <strong>$so_in_tren_the_gd</strong><br><br>
                    Ngân hàng  : <strong>$ngan_hang_gd</strong><br><br>
                    Chi nhánh : <strong>$chi_nhanh_gd</strong><br><br>
                    Nội dung : <strong>$ghichu</strong><br><br>";
		
		$nTo = 'Admin 24H NET';
		$mTo = 'tainv62@wru.vn';
		$diachicc = '';
		//test gui mail
		$mail = sendMail($title, $content, $nTo, $mTo,$diachicc='');
// 		 if($mail==1)
// 		echo '<p style = "color: green; margin-top: 15px;text-align: center;">Bạn vừa thực hiện yêu cầu, Xin chờ được phê duyệt.</p>';
// 		else echo 'Địa chỉ email của bạn không tồn tại hoặc không đúng !'; 
        }
        
    }
?>


        <h2 class = "title-tknh">Rút tiền về ngân hàng</h2>
<style>
    d{
    color:#f15626;
    }
    .success{
        font-size:15px;
    }
    e{
        color:green;
    }
</style>
        <?php 
                if(isset($st)){
                    echo "<p class = 'success'>$st</p>";
                }
           ?>
		<form method = "POST" action = "" class="form-horizontal" role="form">
            <div class="form-group">
                <label for="inputEmail3" class="col-sm-3 control-label">Số tiền rút:</label>
                <div class="col-sm-9">
                    
                <input type="number" min = "10000" max = "5000000" class="form-control ip-dknh" name = "so-tien" id="inputEmail3" required placeholder="Bạn hãy nhập số tiền muốn rút">
                
                <?php
                if(isset($error10))
                    echo $error10;
                ?>
                </div>
            </div>

            <div class="form-group">
                <label for="inputPassword3" class="col-sm-3 control-label">Ghi chú / Nội dung:</label>
                <div class="col-sm-9">
                <input type="text" class="form-control ip-dknh" name = "ghi-chu" id="inputPassword3" placeholder="Ghi chú">
                </div>
            </div>
            <div class="form-group">
                <label for="inputPassword3" class="col-sm-3 control-label">Mật khẩu cấp 2:</label>
                <div class="col-sm-9">
                <input type="number" class="form-control ip-dknh" name = "mkc2" id="inputPassword3" placeholder="Nhập mật khẩu cấp 2 của bạn">
                <?php
                if(isset($error11))
                    echo $error11;
                ?>
                </div>
            </div>

           
           <p style = "    padding-left: 17%;color: #747474;font-size: 14px;">
               <e>- Lưu ý:</e>
           <br><e>+)</e> <d>Phải cập nhật tài khoản</d> <e>NGÂN HÀNG</e> <d>trước khi rút.</d>
           <br><e>-</e> <d>Nếu không mất tiền <e>24H NET</e> không chịu trách nhiệm !</d>
           <br><e>+)</e> <d>Số tiền rút từ <e>10.000 > 499.999đ</e> phí 5,500đ</d>
           <br><e>+)</e> <d>Số tiền rút từ <e>500.000đ > 10.000.000đ</e> phí 7,700đ.<d>
           <br><e>-</e> <d>Thời gian nhận tiền:</d>
           <br><e>+)</e> <d>Từ <e>10p - 1h</e> tùy ngân hàng.</d>
           <br><e>+)</e> <d>Một số ngân hàng chỉ làm việc <e>giờ hành chính.</e></d>
           <br><e>+</e> <d>Tổng số tiền rút được tính = <e>số tiền rút + phí rút.</e></p></d>

  <div class="form-group">
    <div style = "    text-align: center;" class="col-sm-offset-2 col-sm-10">
      <button type="submit" name = "rut" class="btn btn-default">Thực hiện</button>
    </div>
  </div>
</form>

<?php include 'bottom_page.php' ?>