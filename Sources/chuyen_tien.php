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
            // echo "Số dư: ".$sodu."<br>";
        }

    if(isset($_POST['chuyen'])){
        date_default_timezone_set('Asia/Ho_Chi_Minh').
        $time_now = date("Y-m-d H:i:sa");

        $tienchuyen = $_POST['sotienchuyen'];
        $user_nhan = $_POST['usernhan'];
        $note = $_POST['ndchuyen'];
        $check = "";
        foreach($depot as &$value){
            if($user_nhan!=$value['userName'])
                $check = "not found";
            else{
                $check = "found";
                break;
            }
        }
        if($check =="found"){
            if($_POST['sotienchuyen']>$sodu){
                $error10 = "<p class = 'error'>+) Số tiền trong tài khoản không đủ để thực hiện giao dịch !
                <br>+) Vui lòng nạp thêm tiền vào để sử dụng, Xin cảm ơn !</p>";
            }
            if($_POST['mkc2']!=$mkc2){
                $error11 = "<p class = 'error'>- Mật khẩu cấp 2 không đúng !</p>";
            }
            if($_POST['sotienchuyen']<=$sodu && $_POST['mkc2']==$mkc2){
                $accct = "<p class = 'success'>Successfully✔ <d>chuyển tiền</d> 24H NET.
                <br><d>Số tiền chuyển:</d> $tienchuyen
                <br><d>Tài khoản nhận:</d> $user_nhan
                <br><d>Trạng thái:</d> Thành công</p>";
                $sqlU2 = "update users set sodu = sodu+$tienchuyen where userName = '$user_nhan'";
                mysqli_query($conn,$sqlU2);

                $sqlU1 = "update users set sodu = sodu-$tienchuyen where userName = '$userName'";
                mysqli_query($conn,$sqlU1);

                $sqlLs = "insert into lichsu_gd(userName,menhgia,hinhthuc,user_nhan,time,noidung) values('$userName',$tienchuyen,n'chuyển tiền',n'$user_nhan','$time_now',n'$note')";
				mysqli_query($conn, $sqlLs);

            }
        }    
    }
?>
<h2 style = "color: green;">Chuyển tiền</h2>
<style>
    d{
    color:#f15626;
    }
    .success{
        font-size:15px;
    }
</style>
<form method = "POST" action = "" class="form-horizontal" role="form">
            <?php 
                if(isset($accct))
                    echo $accct;
            ?>
            <div class="form-group">
                <label for="inputEmail3" class="col-sm-3 control-label">Người nhận:</label>
                <div class="col-sm-9">
                <input type="text" class="form-control ip-dknh" name = "usernhan" id="inputEmail3" required placeholder="Nhập tài khoản người nhận">
                <?php 
                if(isset($check)&&$check == "not found")
                    echo"<p class = 'error'>- Không tồn tại tài khoản bạn muốn chuyển tiền.</p>";
                ?>
                <div style = "margin-top: 10px;" id = "ngnhan"></div>
                <script>
                    $("input[name='usernhan']").keyup(function(){
                    var usernhan = $("input[name='usernhan']").val();
                    var ngnhan = $("#ngnhan");
                    $.ajax({
                        url:"xuly_chuyentien.php",
                        method: "post",
                        dataType: "text",
                        data:{usernhan:usernhan},
                        success: function(re){
                            if(re!=0){
                                 ngnhan.css("color","green");
                                ngnhan.html("Tên người nhận: "+re+" ✔");
                            }
                            else{
                                ngnhan.css("color","red");
                                ngnhan.html("Không tồn tại người nhận");
                            }
                        }
                    });
                    });
                </script>
                </div>
            </div>
            
            <div class="form-group">
                <label for="inputPassword3" class="col-sm-3 control-label">Số tiền chuyển:</label>
                <div class="col-sm-9">
                <input type="number" min = "5000" class="form-control ip-dknh" name = "sotienchuyen" id="inputPassword3" placeholder="Tối thiểu: 5,000đ" required>
                <?php 
                if(isset($error10))
                    echo $error10;
                ?>
                </div>
            </div>
            <p style = "    padding-left: 17%;color: #747474;font-size: 12px;">- Phí chuyển 0đ.
            <br>- Chuyển tiền tự động 24/7.</p>
            <div class="form-group">
                <label for="inputPassword3" class="col-sm-3 control-label">Nội dung giao dịch:</label>
                <div class="col-sm-9">
                <input type="text" class="form-control ip-dknh" name = "ndchuyen" id="inputPassword3" placeholder="Nhập nội dung chuyển tiền" >
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


            
  <div class="form-group">
    <div style = "    text-align: center;" class="col-sm-offset-2 col-sm-10">
      <button type="submit" name = "chuyen" class="btn btn-default">Thực hiện</button>
    </div>
  </div>
</form>

<?php include 'bottom_page.php' ?>  
        <!-- - thêm code select nhiều -->
