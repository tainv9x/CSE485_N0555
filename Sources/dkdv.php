<?php include 'top_page.php' ?>
<?php
 $_SESSION['cuUrl'] = (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] === 'on' ? "https" : "http") . "://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]";
        // --------------------------------
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
            // echo "Số dư: ".$sodu."<br>";
        }
        
    $arrError = array();
    $tmp = 0;
    date_default_timezone_set('Asia/Ho_Chi_Minh');
    
    if(isset($_POST['dky'])){
        if($_POST['goi']=='dungthu'){
            $goi = "Dùng thử";

            $time_now2 = date("Y-m-d H:i:sa");

            $time_now = new DateTime();
            date_modify($time_now, "+10 days");
            $date_now = $time_now->format('Y-m-d H:i:sa');

            $tien = 0;

        }
        else if ($_POST['goi']=='goi1'){
            $goi = "Gói 1";

            $time_now2 = date("Y-m-d H:i:sa");

            $time_now = new DateTime();
            date_modify($time_now, "+30 days");
            $date_now = $time_now->format('Y-m-d H:i:sa');

            $tien = 50000;
        }
        else if ($_POST['goi']=='goi2'){
            $goi = "Gói 2";

            $time_now2 = date("Y-m-d H:i:sa");

            $time_now = new DateTime();
            date_modify($time_now, "+60 days");
            $date_now = $time_now->format('Y-m-d H:i:sa');

            $tien = 100000;
        }

            if(preg_match('/\s/', $_POST['tenpage2']) ){			// kiem tra ten page2 co khoang trang ko
                array_push($arrError, 0);					
                $error3 = '<p class = "error">Vui lòng nhập đúng định dạng tên page viết liền không dấu !</p>';
            }
            else{
                array_push($arrError, 1);				
            }
            if(!preg_match('/^[a-zA-Z0-9]+$/', $_POST['tenpage2']) ){			// kiem tra ten page2 có toàn chữ và số ko
                array_push($arrError, 0);					
                $error3 = '<p class = "error">+) Vui lòng nhập đúng định dạng tên Page viết liền không dấu !
                <br>+) Và không được có các ký tự đặc biệt, Chấp nhận có số !  </p>';
            }
            else{
                array_push($arrError, 1);				
            }
            if(!preg_match('/^[A-Za-z0-9_\.]{1,32}$/', $_POST['tenpage2'])){			// kiem tra ten page2 co dấu ko
                array_push($arrError, 0);					
                $error3 = '<p class = "error">+) Vui lòng nhập đúng định dạng tên Page viết liền không dấu !
                <br>+) Và không được có các ký tự đặc biệt, Chấp nhận có số !  </p>';
            }
            else{
                array_push($arrError, 1);				
            }
            for($i = 0; $i < count($arrError);$i++){
                if($arrError[$i]==0){
                    $tmp = 0;
                    break;
                }
                else{
                    $tmp = 1;
                }
            }
            if($tmp == 1 && $sodu >= $tien){
                $st = "Đăng ký thành công, Yêu cầu của bạn sẽ được xét duyệt sau 1h-12h <br> Xin cảm ơn !";
                $time_now = date("Y-m-d H:i:sa");
                $tenpage = $_POST['tenpage'];
                $ma_page = mt_rand(1000, 9999999);
                $tenpage2 = $_POST['tenpage2']."_".$ma_page;
                $linkad = $_POST['linkad'];
                if(isset($tenpage2)&&$pages!="")
				    $npage =$tenpage2.",". $pages;
				else if(isset($tenpage2)&&$pages=="")
				    $npage =$tenpage2;
                $sql = "insert into dsdky_dv(userthue,tenpage,tenpage2,linkad,goi,ngaydky,ngayhet,note,tien) values(n'$userName',n'$tenpage','$tenpage2',n'$linkad',n'$goi','$time_now2','$date_now','','$tien')";
                mysqli_query($conn, $sql);
                
                $sqlcr = "CREATE TABLE `$tenpage2` (
                    `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
                    `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
                    `gender` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
                    `bthdate` date DEFAULT NULL,
                    `userName` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
                    `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
                    `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
                    `sodu` int(11) NOT NULL,
                    `cre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
                    `level` int(11) DEFAULT NULL,
                    `active` tinyint(4) DEFAULT NULL,
                    PRIMARY KEY (`id`)
                ) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;";
                mysqli_query($conn, $sqlcr);

                $sql07 = "insert into $tenpage2(name,gender,bthdate,userName,password,email,cre,level,active) values(n'$name',n'$gender','$bthday',n'$userName',n'$passUserCurrent','$email_current',n'$cre_current',2,1)";
                mysqli_query($conn, $sql07);
                
                $sqlU2 = "update users set sodu = sodu-$tien, page = n'$npage' where userName = '$userName'";
                mysqli_query($conn,$sqlU2);

                $sqllsdk = "insert into ls_dky_dvu(userName,goi,tien,ngaydky,ngayhet,page) values(n'$userName',n'$goi','$tien',n'$time_now2','$date_now',n'$tenpage')";
                mysqli_query($conn, $sqllsdk);
        $mail = 1; // gửi
		
		//goi thu vien
		include('send/class.smtp.php');
		include "send/class.phpmailer.php";
		include "send/functions.php";
		$title = 'Đăng ký dịch vụ - Hệ Thống 24H NET';
		$content = "Tài khoản đăng ký : <strong>$userName</strong><br><br>
                    Tên Page :	<strong>$tenpage</strong><br><br>
                    Gói :	<strong>$goi</strong><br><br>
                    Số tiền :	<strong>$tien</strong><br><br>
                    Tên Database :	<strong>$tenpage2</strong><br><br>
                    Facebook BOSS :	<strong>$linkad</strong><br><br>";
		
		$nTo = 'Admin 24H NET';
		$mTo = 'tainv62@wru.vn';
		$diachicc = '';
		//test gui mail
		$mail = sendMail($title, $content, $nTo, $mTo,$diachicc='');
// 		 if($mail==1)
// 		echo '<p style = "color: green; margin-top: 15px;text-align: center;">Bạn vừa thực hiện yêu cầu, Xin chờ được phê duyệt.</p>';
// 		else echo 'Địa chỉ email của bạn không tồn tại hoặc không đúng !'; 
            }
            if($sodu<$tien)
                $error09 = "<p class = 'error'>+) Tài khoản của bạn không đủ để thực hiện giao dịch !
                <br>+) Vui lòng nạp thêm tiền để sử dụng, Xin cảm ơn !</p>";
        

    }
?>


 <h2 class = "title-tknh">Đăng ký sử dụng dịch vụ</h2>
		<form method = "POST" action = "" class="form-horizontal" role="form">
            <div class="form-group">
                <label for="inputEmail3" class="col-sm-4 control-label">Tên Page có dấu</label>
                <div class="col-sm-8">
                <input type="text" class="form-control ip-dknh" name = "tenpage" id="inputEmail3" required placeholder="Nhập tên Page như trên Facebook">
                </div>
            </div>

            <div class="form-group">
                <label for="inputEmail3" class="col-sm-4 control-label">Tên Page viết liền không dấu</label>
                <div class="col-sm-8">
                <input type="text" class="form-control ip-dknh" name = "tenpage2" id="inputEmail3" required placeholder="Nhập tên page của bạn viết liền không dấu">
                </div>
            </div>

            <div class="form-group">
                <label for="inputPassword3" class="col-sm-4 control-label">Tên Facebook của Boss</label>
                <div class="col-sm-8">
                <input type="text" class="form-control ip-dknh" name = "linkad" id="inputPassword3" placeholder="Tên Boss để admin dễ tìm thấy Page">
                </div>
            </div>
            <div class="form-group">
                <label for="inputPassword3" class="col-sm-4 control-label">Chọn gói</label>
                <div class="col-sm-8">
                    <select  class="form-control" id="sel2" name="goi" >
						<!--<option value="dungthu">Dùng thử (10 ngày) - 0đ</option>-->
						<option value="goi1">Gói 1 - 30 ngày - 50000đ</option>
						<option value="goi2">Gói 2 - 60 ngày - 100000đ</option>
					</select>
                </div>
            </div>

           <?php 
                if(isset($st)){
                    echo "<p class = 'success'>$st</p>";
                }
                if(isset($error3))
                    echo $error3;
                if(isset($error09))
                    echo $error09;
           ?>
          

  <div class="form-group">
    <div style = "    text-align: center;" class="col-sm-offset-2 col-sm-10">
      <button type="submit" name = "dky" class="btn btn-default">Thực hiện</button>
    </div>
  </div>
</form>


<?php include 'bottom_page.php' ?>
