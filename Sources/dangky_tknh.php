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
            if(isset($_POST['dang-ky'])){
                $so_tk = $_POST['so-tk'];
                $so_in_the = $_POST['so-in-tren-the'];
                $ten_tknh = $_POST['ten'];
                $ngan_hang = $_POST['ngan-hang'];
                $chi_nhanh = $_POST['chi-nhanh'];

                $sqlU = "update users set so_tk = '$so_tk',so_in_tren_the = '$so_in_the',ten = n'$ten_tknh',ngan_hang= n'$ngan_hang',chi_nhanh = n'$chi_nhanh' where userName = '$userName'"; 

              
				if(mysqli_query($conn, $sqlU)){
                    header('Location: dangky_tknh.php');
                }
				else    
					echo "insert fail"."<br>". mysqli_error($conn);
				}
            
        ?>
            
                <h2 class = "title-tknh">Thông tin tài khoản ngân hàng</h2>
                <br>
        <div class = "tttknh">
            <p>Số tài khoản:&emsp; <?php echo $so_tk_gd ?></p><br>
            <p>Số in trên thẻ:&emsp; <?php echo $so_in_tren_the_gd ?></p><br>
            <p>Họ và Tên:&emsp; <?php echo $ten_gd ?></p><br>
            <p>Ngân hàng:&emsp; <?php echo $ngan_hang_gd ?></p><br>
            <p>Chi nhánh:&emsp; <?php echo $chi_nhanh_gd ?></p><br>
        </div>
        <hr>
		<form method = "POST" action = "" class="form-horizontal" role="form">
            <div class="form-group">
                <label for="inputEmail3" class="col-sm-3 control-label">Số tài khoản</label>
                <div class="col-sm-9">
                <input type="number" class="form-control ip-dknh" name = "so-tk" id="inputEmail3" required placeholder="Số tài khoản ngân hàng" required>
                </div>
            </div>

            <div class="form-group">
                <label for="inputPassword3" class="col-sm-3 control-label">Số in trên mặt thẻ</label>
                <div class="col-sm-9">
                <input type="number" class="form-control ip-dknh" name = "so-in-tren-the" id="inputPassword3" placeholder="Số in nổi trên mặt trước thẻ" required>
                <p>- Số in trên mặt thẻ nếu không có điền số 0 !</p>
                </div>
            </div>

            <div class="form-group">
                <label for="inputPassword3" class="col-sm-3 control-label">Họ và Tên</label>
                <div class="col-sm-9">
                <input type="text" class="form-control ip-dknh" name = "ten" id="inputPassword3" placeholder="Tên chủ tài khoản ngân hàng" required>
                </div>
            </div>

            <div class="form-group">
                <label for="inputPassword3" class="col-sm-3 control-label">Ngân hàng</label>
                <div class="col-sm-9">
                <input type="text" class="form-control ip-dknh" name = "ngan-hang" id="inputPassword3" placeholder="Vd: Vietcombank, Techcombank ,Agribank..v.v" required>
                </div>
            </div>

            <div class="form-group">
                <label for="inputPassword3" class="col-sm-3 control-label">Chi nhánh - TP</label>
                <div class="col-sm-9">
                <input type="text" class="form-control ip-dknh" name = "chi-nhanh" id="inputPassword3" placeholder="Vd: Ba Đình - Hà Nội" required required>
                </div>
            </div>
  <div class="form-group">
    <div style= 'text-align: center;' class="col-sm-offset-2 col-sm-10">
      <button type="submit" name = "dang-ky" class="btn btn-default">Cập nhật</button>
    </div>
  </div>
</form>

<?php include 'bottom_page.php' ?>