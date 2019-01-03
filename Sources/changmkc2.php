
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
          //tinh tien
     
        if(isset($_POST['doi'])){
            foreach($depot as &$value){
                if($value['userName']==$userName){
                    
                    if(!preg_match('/^[A-Za-z0-9_\.]{6,322}$/', $_POST['Newmkc2'])){			// kiem tra pass 
					    $error21 = 'Mật khẩu cấp 2 tối thiểu có 6 số.';
				    }
                    
                    if($_POST['Newmkc2']==$_POST['Anewmkc2'] && $_POST['mkc2cu']==$value['mk2']&&!isset($error21)){
                        $newmk2 = $_POST['Newmkc2'];
                        $sqlUmk = "update users set mk2 = '$newmk2' where userName = '$userName'";
                        mysqli_query($conn,$sqlUmk);
                        $tc = "Successfully✓ Đổi mật khẩu cấp 2 thành công.";
                        break;
                    }
                    else
                        $tb = "Mật khẩu cấp 2 cũ không đúng.
                        <br>Hoặc nhập lại MKC2 mới không chính xác.";
                }
            }
        }

    ?>

        <p id = "title-login">Đổi mật khẩu cấp 2</p>
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
                if(isset($tc)){
                    echo "<p class = 'success'>$tc</p>";
                }
        //         if(isset($error21)) 
				    // echo '<p class = "error">' .$error21.'</p>'; 
                else if(isset($tb)){
                    echo "<p class = 'error' style='text-align:center'>$tb</p>";
                }
           ?>
        <form method = "POST" action = "" class="form-horizontal" role="form">
            <div class="form-group">
                <label for="inputEmail3" class="col-sm-4 control-label">Mật khẩu cấp 2 cũ:</label>
                <div class="col-sm-8">
                <input type="text" class="form-control ip-dknh" name = "mkc2cu" id="inputEmail3" required placeholder="Mật khẩu cấp 2 hiện tại">
                </div>
            </div>

            <div class="form-group">
                <label for="inputPassword3" class="col-sm-4 control-label">Mật khẩu cấp 2 mới:</label>
                <div class="col-sm-8">
                <input type="number" class="form-control ip-dknh" name = "Newmkc2" id="inputPassword3" placeholder="Nhập mật khẩu cấp 2 mới(Chỉ số )">
                <?php
                if(isset($error21)) 
				    echo '<p class = "error">' .$error21.'</p>';
			    ?>
                </div>
            </div>
            <div class="form-group">
                <label for="inputPassword3" class="col-sm-4 control-label">Nhập lại mật khẩu cấp 2:</label>
                <div class="col-sm-8">
                <input type="number" class="form-control ip-dknh" name = "Anewmkc2" id="inputPassword3" placeholder="Nhập lại mật khẩu cấp 2 mới(Chỉ số )">
                </div>
            </div>

            <div class="form-group">
                <div style = "text-align: center;" class="col-sm-offset-2 col-sm-10">
                    <d><p>- Lưu ý : Mật khẩu cấp 2 chỉ được phép nhập <e>SỐ</e>
                    <br>+) Không chia sẻ cho bất cứ ai, Cảm ơn !</p></d>
                    <button type="submit" name = "doi" class="btn btn-default">Thực hiện</button>
                </div>
            </div>
        </form>
    
    <?php include 'bottom_page.php' ?>