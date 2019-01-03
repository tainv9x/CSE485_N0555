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
$status='';
$sodutaikhoan=0;
if(isset($_POST['fnapthe'])){
    date_default_timezone_set('Asia/Ho_Chi_Minh').
    
    $time_now = date("Y-m-d H:i:sa");
    $nhamang = "";
    $loaithe = (string)$_POST['card_type_id'];
    $menhgia = (string)$_POST['menh-gia'];
    $sdt = (string)$_POST['sdt'];
    $tong = $_POST['menh-gia'];
    if($sodu >= $tong){
        if($_POST['mkc2']==$mkc2){
	$transaction_id=rand().'abc';
	$bk = 'https://banthe247.com/MechantServices.asmx';
   

    switch ($loaithe) {
        case "VT":
            $nhamang = "Viettel";
            break;
        case "MB":
             $nhamang = "Mobiphone";
            break;
        case "VP":
             $nhamang = "Vinaphone";
            break;  
    }

  $soap_request  = "<?xml version=\"1.0\"?>\n";
  $soap_request .= "<soap:Envelope xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:soap=\"http://schemas.xmlsoap.org/soap/envelope/\">\n";
  $soap_request .="<soap:Header>";
  $soap_request .="<UserCredentials xmlns=\"http://tempuri.org/\">";
  $soap_request .="<userName>kiuchoibe@gmail.com</userName>";
  $soap_request .="<pass>taikuteyh</pass>";
  $soap_request .="</UserCredentials>";
  $soap_request .="</soap:Header>";
  $soap_request .= "<soap:Body >\n";
  $soap_request.="<TopupMobile xmlns=\"http://tempuri.org/\">";
  $soap_request.="<telco>$loaithe</telco>";
  $soap_request.="<mobileNo>$sdt</mobileNo>";
  $soap_request.="<amount>$menhgia</amount>";
  $soap_request.="<isPrePay>1</isPrePay>";
  $soap_request.="<trace>$transaction_id</trace>";
  $soap_request.="<type>4</type>";
  $soap_request.="</TopupMobile>"; 
  $soap_request .= "  </soap:Body>\n";
  $soap_request .= "</soap:Envelope>";
  $header = array(
    "Content-type: text/xml;charset=\"utf-8\"",
    "Accept: text/xml",
    "Cache-Control: no-cache",
    "Host: banthe247.com",
    "SOAPAction: \"http://tempuri.org/TopupMobile\"",
    "Content-length: ".strlen($soap_request),
  );
$curl = curl_init($bk);
  curl_setopt($curl, CURLOPT_CONNECTTIMEOUT, 10);
  curl_setopt($curl, CURLOPT_TIMEOUT,        10);
  curl_setopt($curl, CURLOPT_RETURNTRANSFER, true );
  curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, FALSE);
  curl_setopt($curl, CURLOPT_SSL_VERIFYHOST, FALSE);
  curl_setopt($curl, CURLOPT_POST,           true );
  curl_setopt($curl, CURLOPT_POSTFIELDS,     $soap_request);
  curl_setopt($curl, CURLOPT_HTTPHEADER,     $header);
$data = curl_exec($curl);
        $data= preg_replace("/(<\/?)(\w+):([^>]*>)/", "$1$2$3", $data);
       $data= new SimpleXMLElement($data);
       $data= json_decode(json_encode((array)$data), TRUE);
       $data_repcode = $data['soapBody']['TopupMobileResponse']['TopupMobileResult']['RepCode']; // gtri repcode trả về... (!= 0 là thất bại)
    //    echo "<pre>";
    //    print_r($data);
    //    echo "</pre>";
    //    echo "repcode: ".$data['soapBody']['TopupMobileResponse']['TopupMobileResult']['RepCode'];
       
       if($data_repcode==778 || $data_repcode==5 ){
            $errornt1 = "<p class = 'error'>Hệ thống nạp thẻ đang bị chậm, vui lòng inbox cho Fanpage để được khắc phục !</p>";
       }
       if($data_repcode==20){
        $sqlLsNt = "insert into ls_nap_sdt(userName,menhgia,loaithe,sdt,trangthai,time) values('$userName',$menhgia,'$nhamang','$sdt',n'Thất bại','$time_now')";
            mysqli_query($conn, $sqlLsNt);
            $errornt1 = "<p class = 'error'>Số điện thoại không chính xác !</p>";
       }
       if($data_repcode==0){
            $hoahong = $tong*0.005;
            $sodu = $sodu - $tong + $hoahong;
            $sqlU = "update users set sodu = $sodu where id = '$id'"; 
            mysqli_query($conn, $sqlU);

            $sqlLsNt = "insert into ls_nap_sdt(userName,menhgia,loaithe,sdt,trangthai,time) values('$userName',$menhgia,'$nhamang',$sdt,n'Thành công','$time_now')";
		    mysqli_query($conn, $sqlLsNt);
            $accnt = "<p class = 'success'>Successfully✔ - Nạp tiền thành công !</p>";
       }


    }
    else{
        $error11 = "<p style = 'text-align: center' class = 'error'>Mật khẩu cấp 2 không đúng !</p>";
    }
}
else 
    echo "+)Số tiền của bạn không đủ để thực hiện giao dịch !
    <br>+) Vui lòng nạp thêm tiền vào để sử dụng. Xin cảm ơn !";
// $status=json_decode($data);
}
else{
	$status='';
}
?>


            <div class = "col-md-12 col-xs-5" style="margin-bottom: 20px;font-size: 25px;margin-top: 20px;"><span class="label label-success">Nạp tiền điện thoại Online </span></div>
           
            <div class ="col-md-12 col-xs-12">
            <form action="topup.php" method="post" id="fnapthe" name="fnapthe">
                    <div class ="col-md-12 col-xs-12 title-muathe"><strong>Chọn nhà cung cấp*</strong></div><br>
                    <div class = "col-md-2 col-xs-4 nha-mang nha-mang-img" id = "vt"><img class = "img-nha-mang" src = "/images/iconviettel.png"></div>    
                    <div class = "col-md-2 col-xs-4 nha-mang nha-mang-img" id = "vna"><img class = "img-nha-mang" src = "/images/iconvina.png"></div>      
                    
                    <div class = "col-md-2 col-xs-4 nha-mang nha-mang-img" id = "mb"><img class = "img-nha-mang" src = "/images/iconmobi.png"></div>           
                    
                     <script>
                         $("#vt").click(function(){
                             $(".nha-mang").css("border","1px solid #dcdcdc");
                             $(this).css("border","4px solid #23a076");
                             $("select[name='card_type_id'] option").removeAttr('selected');
                             $("option[value='VT']").attr("selected", true);
                         });
                         $("#vna").click(function(){
                             $(".nha-mang").css("border","1px solid #dcdcdc");
                             $(this).css("border","4px solid #23a076");
                             $("select[name='card_type_id'] option").removeAttr('selected');
                             $("option[value='VP']").attr("selected", true);
                         });
                        
                         $("#mb").click(function(){
                             $(".nha-mang").css("border","1px solid #dcdcdc");
                             $(this).css("border","4px solid #23a076");
                             $("select[name='card_type_id'] option").removeAttr('selected');
                             $("option[value='MB']").attr("selected", true);
                         });
                       
                     </script>
                    <div class = "col-md-12"></div>   
            <div style = "text-align: right;display: none;" class ="col-md-3 col-xs-12 title-mt"> <p>Nhà mạng:</p></div><div class ="col-md-8 col-xs-12"><select class = "form-control ip-muathe" name="card_type_id" style = "display: none;">
                                    <option value="VT">Viettel</option>
                                    <option value="MB">Mobiphone</option>
                                    <option value="VP">Vinaphone</option>
                                </select></div>
                                <div class ="col-md-12 col-xs-12 title-muathe"><strong>Chọn mệnh giá*</strong></div>  <br>
                                <div class = "col-md-2 col-xs-3 nha-mang mgia" id = "10"><p>10,000 đ</p></div>    
                                <div class = "col-md-2 col-xs-3 nha-mang mgia" id = "20"><p> 20,000 đ</p></div>
                                <div class = "col-md-2 col-xs-3 nha-mang mgia" id = "30"><p> 30,000 đ</p></div>
                                <div class = "col-md-2 col-xs-3 nha-mang mgia" id = "50"><p> 50,000 đ</p></div>           
                                <div class = "col-md-2 col-xs-3 nha-mang mgia" id = "100"><p> 100,000 đ</p></div>
                                <div class = "col-md-2 col-xs-3 nha-mang mgia" id = "200"><p> 200,000 đ</p></div>           
                                <div class = "col-md-2 col-xs-3 nha-mang mgia" id = "500"><p> 500,000 đ</p></div>           
        
                                 <script>
                                     $("#10").click(function(){
                                         $(".mgia").css("border","1px solid #dcdcdc");
                                         $(".mgia").css("color","#333");
                                        $(".mgia").css("background-color","#fff");
                                         $(this).css("background-color","#23a076");
                                         $(this).css("color","#fff");
                                         $("select[name='menh-gia'] option").removeAttr('selected');
                                         $("option[value='10000']").attr("selected", true);
                                         $("#topup_amount").html("10000");
                                     });
                                     $("#20").click(function(){
                                         $(".mgia").css("border","1px solid #dcdcdc");
                                         $(".mgia").css("color","#333");
                                        $(".mgia").css("background-color","#fff");
                                         $(this).css("background-color","#23a076");
                                         $(this).css("color","#fff");
        
                                         $("select[name='menh-gia'] option").removeAttr('selected');
                                         $("option[value='20000']").attr("selected", true);
                                         $("#topup_amount").html("20000");
        
                                     });
                                     $("#30").click(function(){
                                         $(".mgia").css("border","1px solid #dcdcdc");
                                         $(".mgia").css("color","#333");
                                        $(".mgia").css("background-color","#fff");
                                         $(this).css("background-color","#23a076");
                                         $(this).css("color","#fff");
        
                                         $("select[name='menh-gia'] option").removeAttr('selected');
                                         $("option[value='30000']").attr("selected", true);
                                         $("#topup_amount").html("30000");
        
                                     });
                                     $("#50").click(function(){
                                         $(".mgia").css("border","1px solid #dcdcdc");
                                         $(".mgia").css("color","#333");
                                        $(".mgia").css("background-color","#fff");
                                         $(this).css("background-color","#23a076");
                                         $(this).css("color","#fff");
        
                                         $("select[name='menh-gia'] option").removeAttr('selected');
                                         $("option[value='50000']").attr("selected", true);
                                         $("#topup_amount").html("50000");
        
                                     });
                                     $("#100").click(function(){
                                         $(".mgia").css("border","1px solid #dcdcdc");
                                         $(".mgia").css("color","#333");
                                        $(".mgia").css("background-color","#fff");
                                         $(this).css("background-color","#23a076");
                                         $(this).css("color","#fff");
        
                                         $("select[name='menh-gia'] option").removeAttr('selected');
                                         $("option[value='100000']").attr("selected", true);
                                         $("#topup_amount").html("100000");
        
                                     });
                                     $("#200").click(function(){
                                         $(".mgia").css("border","1px solid #dcdcdc");
                                         $(".mgia").css("color","#333");
                                        $(".mgia").css("background-color","#fff");
                                         $(this).css("background-color","#23a076");
                                         $(this).css("color","#fff");
        
                                         $("select[name='menh-gia'] option").removeAttr('selected');
                                         $("option[value='200000']").attr("selected", true);
                                         $("#topup_amount").html("200000");
        
                                     });
                                     $("#500").click(function(){
                                         $(".mgia").css("border","1px solid #dcdcdc");
                                         $(".mgia").css("color","#333");
                                        $(".mgia").css("background-color","#fff");
                                         $(this).css("background-color","#23a076");
                                         $(this).css("color","#fff");
        
                                         $("select[name='menh-gia'] option").removeAttr('selected');
                                         $("option[value='500000']").attr("selected", true);
                                         $("#topup_amount").html("500000");
        
                                     });
                                 </script>
                        <div class ="col-md-12 col-xs-12"></div>
                            
                               
                                
                                <div style = "text-align: right;display: none;" class ="col-md-3 col-xs-12 title-mt"> <p>Số tiền:</p></div><div class ="col-md-8 col-xs-12"> <select class = "form-control ip-muathe" class = 'inputs select' name = 'menh-gia' style = "display: none;"> 
                                    <option value='10000'>10000 VND</option>
                                    <option value='20000'>20000 VND</option>
                                    <option value='20000'>30000 VND</option>
                                    <option value='50000'>50000 VND</option>
                                    <option value='100000'>100000 VND</option>
                                    <option value='200000'>200000 VND</option>
                                    <option value='500000'>500000 VND</option>
                                    </select>
                                </div>
                            <div class ="col-md-12 col-xs-12"></div>
                                
                                <div style = "text-align: right;" class ="col-md-3 col-xs-12 title-mt"> <p>Số điện thoại:</p></div><div class ="col-md-8 col-xs-12"><input class = "form-control ip-muathe" name = 'sdt' type = "number" placeholder="Số điện thoại cần nạp tiền" required /></div>

                                <script>    
                                        // lấy số lượng thẻ xuất lên bảng 
                                        $("input[name='sdt']").keyup(function(){
                                            var sl = $("input[name='sdt']").val();
                                            $("#topup_quantity").html(sl);
                                        });
                                        $("input[name='sdt']").change(function(){
                                            var sl = $("input[name='sdt']").val();
                                            $("#topup_quantity").html(sl);
                                        });
    
                                        // tính tổng sau chiết khấu
                                        $(".mgia").click(function(){
                                            var mg_mua = $("#topup_amount").text();
                                            // var sl_mua = $("#topup_quantity").text();
                                            var re_tong = $("#topup_total_amount");
                                            var re_chiet = $("#topup_sl");
    
                                            // sl_mua = Number(sl_mua);
                                            mg_mua = Number(mg_mua);
                                        
                                            // var tong = mg_mua;
                                            var hoahong = mg_mua*0.005;
                                            var re = mg_mua-hoahong;
                                            re_chiet.html(hoahong);
    
                                            re_tong.html(re);
                                        });
                                       
                                    </script>
                                <div class ="col-md-12 col-xs-12"></div>
                                <div style = "text-align: right;" class ="col-md-3 col-xs-12 title-mt"> <p>Mật khẩu cấp 2:</p></div><div class ="col-md-8 col-xs-12"><input class = "form-control ip-muathe" name = 'mkc2' type = "number" placeholder="Mật khẩu cấp 2 của bạn" required /></div>
            	<input  type="hidden" name="fnapthe" value="ok"/>
               
				<center>
                 <div class ="col-md-12 col-xs-12 info-mt">
                <div class = "col-md-12 info-mg">
                    <div class="col-md-5 col-sm-5 col-xs-6 left-infomt">Mệnh giá thẻ</div>
                    <div class="col-md-7 col-sm-7 col-xs-6 right-infomt"><span id="topup_amount">0</span> đ</div>
                </div>
                <div class = "col-md-12 info-sl">
                        <div class="col-md-5 col-sm-5 col-xs-6 left-infomt">Số điện thoại</div>
                        <div class="col-md-7 col-sm-7 col-xs-6 right-infomt"><span id="topup_quantity">0</span></div>
                </div>
                <div class = "col-md-12 info-phi">
                        <div class="col-md-5 col-sm-5 col-xs-6 left-infomt">Phí thanh toán</div>
                        <div class="col-md-7 col-sm-7 col-xs-6 right-infomt">Miễn phí</div>
                </div>
                <div class = "col-md-12 info-hoahong">
                        <div class="col-md-5 col-sm-5 col-xs-6 left-infomt">Chiết khấu</div>
                        <div class="col-md-7 col-sm-7 col-xs-6 right-infomt"><span id="topup_sl">0</span> đ</div>
                </div>
                <div class = "col-md-12 info-tong">
                        <div class="col-md-5 col-sm-5 col-xs-6 left-infomt">Tổng</div>
                        <div class="col-md-7 col-sm-7 col-xs-6 right-infomt"><span id="topup_total_amount">0</span> đ</div>
                </div>


            </div>
                <div class ="col-md-12 col-xs-12" style = "text-align: center;margin-top: 10px;"><input class="btn btn-info" type="submit" value="Nạp tiền ngay"/> </div>
                
                </div>
               
<div id="loading_napthe" style="display: none; float: center"> &nbsp;Xin mời chờ...</div><br>
<div class="label label-success" id="msg_success_napthe"></div><br>
<div class="label label-danger" id="msg_err_napthe"><?php echo $status;?></div><br>
				</center>
            </form>
            <?php 
                if(isset($errornt1))
                    echo $errornt1;
                if(isset($accnt))
                    echo $accnt;
                if(isset($error11))
                    echo $error11;
                ?>

        <?php include 'bottom_page.php' ?>
            



