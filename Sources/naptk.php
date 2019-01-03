
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
    
	if(isset($_POST['gui'])){
		switch ($_POST['nhnhan']) {
            case "vietcombank":
                 $tmp = "Vietcombank";
                break;
            case "techcombank":
                $tmp = "Techcombank";
                break;
            case "vietinbank":
                $tmp = "Vietinbank";
                break;
            case "agribank":
                $tmp = "Agribank";
                break;
            case "bidv":
                $tmp = "BIDV";
                break;
            case "tpbank":
                $tmp = "TPBank";
                break;
            case "Sacombank":
                $tmp = "Sacombank";
                break;
            case "timo":
                $tmp = "Timo - VPBank";
                break;
            case "tcsr":
                $tmp = "Thecaosieure.com";
                break;
            case "zalopay":
                $tmp = "Zalo Pay";
                break;
            case "viettelpay":
                $tmp = "Viettel Pay";
                break;
            case "Other":
                $tmp = "Ngân hàng khác";
                break;
            default:                    // thêm case mới thì thêm trc dòng này
    			$tmp = "Chưa chọn";
    			break;
        }	
        switch ($_POST['nhchuyen']) {
            case "vietcombank":
                 $tmp2 = "Vietcombank";
                break;
            case "techcombank":
                $tmp2 = "Techcombank";
                break;
            case "tpbank":
                $tmp2 = "TPBank";
                break;
            case "vietinbank":
                $tmp2 = "Vietinbank";
                break;
            case "agribank":
                $tmp2 = "Agribank";
                break;
            case "bidv":
                $tmp2 = "BIDV";
                break;

            // case "ACB":
            //     $tmp2 = "ACB";
            //     break;

            // case "donga":
            //     $tmp2 = "Đông Á";
            //     break;

            // case "Maritimebank":
            //     $tmp2 = "Maritimebank";
            //     break;
            case "Sacombank":
                $tmp2 = "Sacombank";
                break;
            case "timo":
                $tmp2 = "Timo - VPBank";
                break;
            case "tcsr":
                $tmp2 = "Thecaosieure.com";
                break;
            case "zalopay":
                $tmp2 = "Zalo Pay";
                break;
            case "viettelpay":
                $tmp2 = "Viettel Pay";
                break;
            // case "MBank":
            //     $tmp2 = "MBank";
            //     break;
            case "Other":
                $tmp2 = "Ngân hàng khác";
                break;
            
            default:                    // thêm case mới thì thêm trc dòng này
    			$tmp2 = "Chưa chọn";
    			break;
        }
        
        switch ($_POST['htchuyen']) {
            case "atm":
                 $tmp3 = "Chuyển khoản tại cây ATM";
                break;
            case "internetbanking":
                $tmp3 = "Chuyển khoản qua Internet Banking";
                break;
            case "tainganhang":
                $tmp3 = "Chuyển khoản tại Ngân hàng";
                break;
            
            default:                    // thêm case mới thì thêm trc dòng này
    			$tmp3 = "Chưa chọn";
    			break;
        }

        $sotien = $_POST['sotiennap'];
        // $hthuc = $_POST['htchuyen'];
        $tenchuyen = $_POST['ngchuyen'];
        $stkchuyen = $_POST['stkchuyen'];
        $sotien = $_POST['sotiennap'];
        date_default_timezone_set('Asia/Ho_Chi_Minh');
        $time_c1 = $_POST['ngaynop'];
        $time_chuyen = date('d-m-Y',strtotime($_POST['ngaynop']));
        $ma_gd = mt_rand(100000, 999999999);

        $sqldsn = "insert into ds_nap(magd,userchuyen,nhnhan,sotien,hthuc,nhchuyen,tenchuyen,stkchuyen,time,status) values('$ma_gd',n'$userName',n'$tmp',n'$sotien',n'$tmp3','$tmp2',n'$tenchuyen','$stkchuyen','$time_c1',0)";
        mysqli_query($conn, $sqldsn);

		$mail = 1; // gửi
		
		//goi thu vien
		include('send/class.smtp.php');
		include "send/class.phpmailer.php";
		include "send/functions.php";
		$title = 'Nạp tiền - Hệ Thống 24H NET';
		$content = "Username chuyển : <strong>$userName</strong><br><br>
                    Ngân hàng nhận :	<strong>$tmp</strong><br><br>
                    Số tiền nạp :	<strong>$sotien</strong><br><br>
                    Hình thức nạp :	<strong>$tmp3</strong><br><br>
                    Ngân hàng chuyển tiền :	<strong>$tmp2</strong><br><br>
                    Tên người chuyển :	<strong>$tenchuyen</strong><br><br>
                    Số tài khoản chuyển :	<strong>$stkchuyen</strong><br><br>
                    Thời gian chuyển :	<strong>$time_chuyen</strong><br>";
		
		$nTo = 'Admin 24H NET';
		$mTo = 'tainv62@wru.vn';
		$diachicc = '';
		//test gui mail
		$mail = sendMail($title, $content, $nTo, $mTo,$diachicc='');
		 if($mail==1)
		echo '<p style = "color: green; margin-top: 15px;text-align: center;">Bạn vừa thực hiện yêu cầu, vui lòng chờ hệ thống xác nhận.</p>';
		else echo 'Địa chỉ email của bạn không tồn tại hoặc không đúng !'; 
	}
?>

<form method = "POST" action = "" class="form-horizontal" role="form">
            <div class="form-group">
                <label for="inputEmail3" class="col-sm-3 control-label">Ngân hàng nhận tiền:</label>
                <div class="col-sm-9">
                
                <select class = "form-control ip-muathe" name="nhnhan" id = "nhnhan">
                    <option value="0">Ngân hàng nhận tiền</option>
                    <option value="vietcombank">Vietcombank</option>
                    <option value="techcombank">Techcombank</option>
                    <option value="tpbank">TPBank</option>
                    <option value="bidv">BIDV</option>
                    <option value="agribank">Agribank</option>
                    <option value="vietinbank">Vietinbank</option>
                    <option value="Sacombank">Sacombank</option>
                    <option value="timo">Timo - VPBank</option>
                    <option value="tcsr">Thecaosieure.com</option>
                    <option value="zalopay">Zalo Pay</option>
                    <option value="viettelpay">Viettel Pay</option>
                    <option value="Other">Ngân hàng khác</option>
                </select>
                </div>
                
            </div>
            <div style = "float: right;" class = "col-sm-9" >
            <div style="display: none;margin-bottom: 15px;border: 1px solid; padding: 20px;border-radius: 10px;" id="box_show_message" ></div>
            </div>
                    <div class = "col-sm-12"></div>

                <script language="javascript">
                        // Hàm xử lý khi thẻ select thay đổi giá trị được chọn
                        // obj là tham số truyền vào và cũng chính là thẻ select
                        var nhnhan = document.getElementById("nhnhan");
                       var mess = document.getElementById("box_show_message");
                       nhnhan.addEventListener("change",function(){
                            if(nhnhan.value=="vietcombank"){
                                mess.style.display = "block";
                                
                                mess.innerHTML = "<p class = 'tt-nhnt'>Ngân hàng nhận: Vietcombank</p><p class = 'nnht'>- Chủ tài khoản: Nguyễn Văn Tài</p><p class = 'nnht'> - Số tài khoản: 0451000388383</p><p class = 'nnht'>- Chi nhánh: Thành Công - Hà Nội</p><p class = 'tt-nhnt'>Nội dung chuyển tiền: [Tài khoản or Email] - Nap tien tai 24h NET</p>";
                            }

                            if(nhnhan.value=="techcombank"){
                                mess.style.display = "block";
                                
                                mess.innerHTML = "<p class = 'tt-nhnt'>Ngân hàng nhận: Techcombank</p><p class = 'nnht'>- Chủ tài khoản: Nguyễn Văn Tài</p><p class = 'nnht'> - Số tài khoản: 19032874617016</p><p class = 'nnht'>- Chi nhánh: Hà Tây - Hà Nội</p><p class = 'tt-nhnt'>Nội dung chuyển tiền: [Tài khoản or Email]- Nap tien tai 24h NET</p>";
                            }
                            if(nhnhan.value=="tpbank"){
                                mess.style.display = "block";
                                
                                mess.innerHTML = "<p class = 'tt-nhnt'>Ngân hàng nhận tiền: TPBank</p><p class = 'nnht'>- Chủ tài khoản: Nguyễn Văn Tài</p><p class = 'nnht'> - Số tài khoản: 02077426301</p><p class = 'nnht'>- Chi nhánh: Thanh Xuân - Hà Nội</p><p class = 'tt-nhnt'>Nội dung chuyển tiền: [Tài khoản or Email]- Nạp tien tai 24h NET</p>";
                            }
                            if(nhnhan.value=="agribank"){
                                mess.style.display = "block";
                                
                                mess.innerHTML = "<p class = 'tt-nhnt'>Ngân hàng nhận tiền: Agribank</p><p class = 'nnht'>- Chủ tài khoản: Nguyễn Văn Tài</p><p class = 'nnht'> - Số tài khoản: 1504205298460</p><p class = 'nnht'>- Chi nhánh: Đống Đa - Hà Nội</p><p class = 'tt-nhnt'>Nội dung chuyển tiền: [Tài khoản or Email]- Nạp tien tai 24h NET</p>";
                            }
                            if(nhnhan.value=="vietinbank"){
                                mess.style.display = "block";
                                
                                mess.innerHTML = "<p class = 'tt-nhnt'>Ngân hàng nhận tiền: Vietinbank</p><p class = 'nnht'>- Chủ tài khoản: Nguyễn Văn Tài</p><p class = 'nnht'> - Số tài khoản: 106003145540</p><p class = 'nnht'>- Chi nhánh: Đống Đa - Hà Nội</p><p class = 'tt-nhnt'>Nội dung chuyển tiền: [Tài khoản or Email]- Nạp tien tai 24h NET</p>";
                            }
                            if(nhnhan.value=="bidv"){
                                mess.style.display = "block";
                                
                                mess.innerHTML = "<p class = 'tt-nhnt'>Ngân hàng nhận tiền: BIDV</p><p class = 'nnht'>- Chủ tài khoản: Nguyễn Văn Tài</p><p class = 'nnht'> - Số tài khoản: 22210003058254</p><p class = 'nnht'>- Chi nhánh: Thanh Xuân - Hà Nội</p><p class = 'tt-nhnt'>Nội dung chuyển tiền: [Tài khoản email]- Mua the cao dien thoai tai web banthe247.com</p>";
                            }
                            if(nhnhan.value=="Sacombank"){
                                mess.style.display = "block";
                                
                                mess.innerHTML = "<p class = 'tt-nhnt'>Ngân hàng nhận tiền: Sacombank</p><p class = 'nnht'>- Chủ tài khoản: Nguyễn Văn Tài</p><p class = 'nnht'> - Số tài khoản: 020066960804</p><p class = 'nnht'>- Chi nhánh: Đống Đa - Hà Nội</p><p class = 'tt-nhnt'>Nội dung chuyển tiền: [Tài khoản or Email]- Nạp tien tai 24h NET</p>";
                            }
                            if(nhnhan.value=="tcsr"){
                                mess.style.display = "block";
                                
                                mess.innerHTML = "<p class = 'tt-nhnt'>Website nhận tiền: Thẻ cào siêu rẻ</p><p class = 'nnht'>- Chủ tài khoản: Nguyễn Văn Tài</p><p class = 'nnht'> - Tên tài khoản : kiuchoibe</p><p class = 'tt-nhnt'>Nội dung chuyển tiền: [Tài khoản or Email]- Nạp tien tai 24h NET</p>";
                            }
                            if(nhnhan.value=="timo"){
                                mess.style.display = "block";
                                
                                mess.innerHTML = "<p class = 'tt-nhnt'>Ngân hàng nhận tiền: VPBank</p><p class = 'nnht'>- Chủ tài khoản: Nguyễn Văn Tài</p><p class = 'nnht'> - Số tài khoản: 132390983</p><p class = 'nnht'>- Chi nhánh: NH Việt Nam Thinh Vượng - TP.HCM</p><p class = 'tt-nhnt'>Nội dung chuyển tiền: [Tài khoản or Email]- Nạp tien tai 24h NET</p>";
                            }
                            if(nhnhan.value=="zalopay"){
                                mess.style.display = "block";
                                
                                mess.innerHTML = "<p class = 'tt-nhnt'>Ứng dụng nhận tiền: Zalo Pay</p><p class = 'nnht'>- Chủ tài khoản: Nguyễn Văn Tài</p><p class = 'nnht'> - Tk Zalo Pay: 01658654111</p><p class = 'tt-nhnt'>Nội dung chuyển tiền: [Tài khoản or Email]- Nạp tien tai 24h NET</p>";
                            }
                            if(nhnhan.value=="viettelpay"){
                                mess.style.display = "block";
                                
                                mess.innerHTML = "<p class = 'tt-nhnt'>Ứng dụng nhận tiền: Viettel Pay</p><p class = 'nnht'>- Chủ tài khoản: Nguyễn Văn Tài</p><p class = 'nnht'> - Tk Viettel Pay: 0868.269.268</p><p class = 'tt-nhnt'>Nội dung chuyển tiền: [Tài khoản or Email]- Nạp tien tai 24h NET</p>";
                            }
                            if(nhnhan.value=="Other"){
                                mess.style.display = "block";
                                
                                mess.innerHTML = "<p class = 'tt-nhnt'>Bạn vui lòng chuyển tiền nhanh khác ngân hàng qua 1 in 8 ngân hàng:</p><p class = 'nnht'><p><p class = 'tt-nhnt'><strong>+ Ngân hàng TMCP Vietcombank</strong> </p><p>- Chủ tài khoản: Nguyễn Văn Tài</p><p class = 'nnht'> - Số tài khoản: 0451000388383</p><p class = 'nnht'>- Chi nhánh: Thành Công - Hà Nội</p><p><p class = 'tt-nhnt'><strong>+ Ngân hàng Kỹ Thương Việt Nam - Techcombank</strong></p><p class = 'nnht'>- Chủ tài khoản: Nguyễn Văn Tài</p><p class = 'nnht'> - Số tài khoản: 19032874617016</p><p class = 'nnht'>- Chi nhánh: Hà Tây - Hà Nội</p><p><p class = 'tt-nhnt'><strong>+ Ngân hàng Tiền Phong TPBank</strong></p><p class = 'nnht'>- Chủ tài khoản: Nguyễn Văn Tài</p><p class = 'nnht'> - Số tài khoản: 02077426301</p><p class = 'nnht'>- Chi nhánh: Thanh Xuân - Hà Nội</p><p class = 'tt-nhnt'>+ Ngân hàng nhận tiền: BIDV</p><p class = 'nnht'>- Chủ tài khoản: Nguyễn Văn Tài</p><p class = 'nnht'> - Số tài khoản : 22210003058254</p><p class = 'nnht'>- Chi nhánh: Thanh Xuân - Hà Nội</p><p class = 'tt-nhnt'><strong>+) Ngân hàng NN & PTNT Agribank</strong></p><p class = 'nnht'>- Chủ tài khoản: Nguyễn Văn Tài</p><p class = 'nnht'> - Số tài khoản: 1504205298460</p><p class = 'nnht'>- Chi nhánh: Đống Đa - Hà Nội</p><p class = 'tt-nhnt'><strong>+) Ngân hàng TMCP Công Thương Vietinbank</strong></p><p class = 'nnht'>- Chủ tài khoản: Nguyễn Văn Tài</p><p class = 'nnht'> - Số tài khoản: 106003145540</p><p class = 'nnht'>- Chi nhánh: Đống Đa - Hà Nội</p><p class = 'tt-nhnt'>+ Ngân hàng nhận tiền: Sacombank</p><p class = 'nnht'>- Chủ tài khoản: Nguyễn Văn Tài</p><p class = 'nnht'> - Số tài khoản :020066960804</p><p class = 'nnht'>- Chi nhánh: Đống Đa - Hà Nội</p><p class = 'tt-nhnt'>+ Ngân hàng nhận tiền: VPBank</p><p class = 'nnht'>- Chủ tài khoản: Nguyễn Văn Tài</p><p class = 'nnht'> - Số tài khoản :132390983</p><p class = 'nnht'>- Chi nhánh: NH Việt Nam Thinh Vượng - TP.HCM</p><p class = 'tt-nhnt'>Nội dung chuyển tiền: [Tài khoản or Email]- Nạp tien tai 24h NET</p>";
                            }
                            if(nhnhan.value=="0"){
                                mess.style.display = "none";
                                
                              
                            }
                        });
             
                    </script>

            <div class="form-group">
                <label for="inputPassword3" class="col-sm-3 control-label">Số tiền nạp (VNĐ)</label>
                <div class="col-sm-9">
                <input type="number" class="form-control ip-dknh" name = "sotiennap" id="inputPassword3" placeholder="Nhập số tiền cần nạp" required>
                </div>
            </div>
            
            <div class="form-group">
                <label for="inputPassword3" class="col-sm-3 control-label">Hình thức chuyển tiền</label>
                <div class="col-sm-9">
                <select class = "form-control ip-muathe" name="htchuyen" >
                    <option value="">Hình thức chuyển tiền</option>
                    <option value="atm">Chuyển khoản tại cây ATM</option>
                    <option value="internetbanking">Chuyển khoản qua Internet Banking</option>
                    <option value="tainganhang">Tại quầy giao dịch ngân hàng</option>
                </select>
                </div>
            </div>

            <div class="form-group">
                <label for="inputPassword3" class="col-sm-3 control-label">Ngân hàng chuyển tiền</label>
                <div class="col-sm-9">
                <select class = "form-control ip-muathe" name="nhchuyen" >
                    <option value="">Ngân hàng chuyển tiền</option>
                    <option value="vietcom">Vietcombank</option>
                    <option value="techcom">Techcombank</option>
                    <option value="tpbank">TPBank</option>
                    <option value="bidv">BIDV</option>
                    <option value="agribank">Agribank</option>
                    <option value="vietinbank">Vietinbank</option>
                    <option value="Sacombank">Sacombank</option>
                    <option value="timo">Timo - VPBank</option>
                    <option value="tcsr">Thecaosieure.com</option>
                    <option value="zalopay">Zalo Pay</option>
                    <!--<option value="ACB">ACB</option>-->
                    <!--<option value="donga">Đông Á</option>-->
                    <!--<option value="Maritimebank">Maritimebank</option>-->
                    <option value="viettelpay">Viettel Pay</option>
                    <!--<option value="MBank">MBank</option>-->
                    <option value="Other">Ngân hàng khác</option>
                </select>
                </div>
            </div>
            <div class="form-group">
                <label for="inputPassword3" class="col-sm-3 control-label">Tên người chuyển tiền</label>
                <div class="col-sm-9">
                <input type="text" class="form-control ip-dknh" name = "ngchuyen" id="inputPassword3" placeholder="Tên người chuyển tiền" required>
                </div>
            </div>
            <div class="form-group">
                <label for="inputPassword3" class="col-sm-3 control-label">Số tài khoản chuyển tiền</label>
                <div class="col-sm-9">
                <input type="number" class="form-control ip-dknh" name = "stkchuyen" id="inputPassword3"  placeholder="Số tài khoản chuyển tiền" required>
                </div>
            </div>
            <div class="form-group">
                    <label for="inputPassword3" class="col-sm-3 control-label">Thời gian chuyển tiền</label>
                    <div class="col-sm-9">
                    <input class = 'form-control ' type = 'date' min='2018-01-01' name = 'ngaynop'  required />
                    </div>
                </div>
            
            <!-- đang thiết kế form -->
            <?php 
                if(isset($check)&&$check == "not found")
                    echo "<p style = 'padding-left: 17%;' class = 'error'>Không tồn tại tài khoản bạn muốn chuyển tiền</p>";
                if(isset($error10))
                    echo $error10;
                if(isset($error11))
                    echo $error11;
                if(isset($accct))
                    echo $accct;
            ?>

            
  <div class="form-group">
    <div style = "    text-align: center;" class="col-sm-offset-2 col-sm-10">
      <button type="submit" name = "gui" class="btn btn-default">Gửi thông báo</button>
    </div>
  </div>
</form>
    <?php include 'bottom_page.php' ?>