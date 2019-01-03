
    <?php include 'top_page.php' ?>
    <?php 
        if(isset($_POST['doi'])){
            foreach($depot as &$value){
                if(trim($_POST['tk_quenmk'])==$value['userName']){
                    $_SESSION['ma_xn'] = mt_rand(1000, 999999);
                    $_SESSION['email_tkqmk'] = $value['email'];
                    $_SESSION['userName_qmk'] = $value['userName'];
                    $_SESSION['user_start'] = time();
 

                    $ok = 1;
                    // echo "OK<br>";
                    break;
                    // $sqlUmk = "update users set password = '$email_tkqmk' where userName = '$userName_qmk'";
                    // mysqli_query($conn,$sqlUmk);
                }
                
            }
            if(isset($ok)){
                $user_yc= $_SESSION['userName_qmk'];
                $maxn_yc= $_SESSION['ma_xn'];
                $email_yc= $_SESSION['email_tkqmk'];

                $mail = 1; // gửi
		
		//goi thu vien
            include('send/class.smtp.php');
            include "send/class.phpmailer.php";
            include "send/functions.php";
            $title = 'Mã xác nhận quên mật khẩu 24H NET';
            $content = "Tài khoản thực hiện yêu cầu: <strong>$user_yc</strong><br><br>
                        Mã xác nhận :	<strong>$maxn_yc</strong><br><br>
                        Mã xác nhận chỉ có hiệu lực trong vòng 3 phút kể từ thời điểm bạn nhận được.";
            
            $nTo = 'Admin 24H NET';
            $mTo = $email_yc;
            $diachicc = '';
            //test gui mail
            $mail = sendMail($title, $content, $nTo, $mTo,$diachicc='');
            if($mail==1)
                header('Location: xacnhan.php');
            else echo '<p style = "text-align: center" class = "error">Địa chỉ Email gắn với tài khoản của bạn không phải là Email có thật !</p>'; 
            }
            else {
                $tb = "Tài khoản không tồn tại.";
            }
        }

    ?>

        <p id = "title-login">Quên mật khẩu</p>
        <form method = "POST" action = "" class="form-horizontal" role="form">
            <div class="form-group">
                <label for="inputEmail3" class="col-sm-2 control-label">Tài khoản:</label>
                <div class="col-sm-10">
                <input type="text" class="form-control ip-dknh" name = "tk_quenmk" id="inputEmail3" required placeholder="Nhập tài khoản muốn lấy lại mật khẩu">
                </div>
            </div>

            <!-- <div class="form-group">
                <label for="inputPassword3" class="col-sm-2 control-label">Mật khẩu cấp 2:</label>
                <div class="col-sm-10">
                <input type="number" class="form-control ip-dknh" name = "mkc2" id="inputPassword3" placeholder="Nhập mật khẩu cấp 2 của bạn">
                </div>
            </div> -->
            <p style = "    padding-left: 17%;color: #747474;font-size: 12px;">+) Một mã xác nhận sẽ được gửi về <strong>Email</strong> của bạn sau khi chọn <a style="color:#337ab7 ">" Gửi mã xác nhận "</a>.
             <br>+) Mã xác nhận chỉ tồn tại trong <strong>3 phút</strong> sau khi yêu cầu được gửi !
            <!--<br>+) Mọi yêu cầu hỗ trợ vui lòng inbox cho Page để được trợ giúp.
            <br>+) Xin cảm ơn !</p> -->
           <?php 
                
                if(isset($tb)){
                    echo "<p style = 'text-align: center' class = 'error'>$tb</p>";
                }
           ?>
            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <button type="submit" name = "doi" class="btn btn-default">Gửi mã xác nhận</button>
                </div>
            </div>
        </form>
    
    <?php include 'bottom_page.php' ?>