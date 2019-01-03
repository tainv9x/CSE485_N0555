
    <?php include 'top_page.php' ?>
    <?php 
    if (time() - $_SESSION['user_start'] > 180) { // sau 3p tự động xóa mã xác nhận
        unset($_SESSION['ma_xn']); // 

    }
        if(isset($_POST['doi'])){
                if(!isset($_SESSION['ma_xn']))
                    $tb2 = "<p style = 'text-align: center' class= 'error'>Mã xác nhận không tồn tại, hoặc đã hết hạn.</p>";
                else if(trim($_POST['maxn'])==$_SESSION['ma_xn']){  
                    $email_tkqmk = $_SESSION['email_tkqmk'];
                    $user_yc= $_SESSION['userName_qmk'];
                    $tc = "<p style = 'text-align: center' class= 'success'>Successfully! Khôi phục mật khẩu thành công.
                    <br> Mật khẩu mới là địa chỉ Email bạn đã đăng ký.</p>";
                    // echo "OK<br>";
                    unset($_SESSION['ma_xn']);
                    $sqlUmk = "update users set password = '$email_tkqmk' where userName = '$user_yc'";
                    mysqli_query($conn,$sqlUmk);
                }
                else if(trim($_POST['maxn'])!=$_SESSION['ma_xn']){
                    $tb = "Mã xác nhận không chính xác.";
                }                       
        }

    ?>

        <p id = "title-login">Xác nhận </p>
        <form method = "POST" action = "" class="form-horizontal" role="form">
            <div class="form-group">
                <label for="inputEmail3" class="col-sm-2 control-label">Nhập mã xác nhận:</label>
                <div class="col-sm-10">
                <input type="number" class="form-control ip-dknh" name = "maxn" id="inputEmail3" required placeholder="Nhập mã xác nhận được gửi về Email của bạn đã đăng ký">
                </div>
            </div>

            <!-- <div class="form-group">
                <label for="inputPassword3" class="col-sm-2 control-label">Mật khẩu cấp 2:</label>
                <div class="col-sm-10">
                <input type="number" class="form-control ip-dknh" name = "mkc2" id="inputPassword3" placeholder="Nhập mật khẩu cấp 2 của bạn">
                </div>
            </div> -->
            <p style = "    padding-left: 17%;color: #747474;font-size: 12px;">+) Mật khẩu mới sẽ được đổi thành địa chỉ <strong>Email</strong> của bạn đã đăng ký.
            <!-- <br>+) Sau khi quên mật khẩu xong, bạn vui lòng đăng nhập lại và đổi mật khẩu mới !
            <br>+) Mọi yêu cầu hỗ trợ vui lòng inbox cho Page để được trợ giúp.
            <br>+) Xin cảm ơn !</p> -->
           <?php 
                if(isset($tb2)){
                    echo $tb2;
                }
                if(isset($tc)){
                    echo $tc;
                }
                if(isset($tb)){
                    echo "<p style = 'text-align: center' class = 'error'>$tb</p>";
                }
           ?>
            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <button type="submit" name = "doi" class="btn btn-default">Xác nhận mã</button>
                </div>
            </div>
        </form>
    
    <?php include 'bottom_page.php' ?>