


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
        
$status='';
$sodutaikhoan=0;


if(isset($_POST['fnapthe'])){

$nhamang = "";
$loaithe = (string)$_POST['card_type_id'];
$menhgia = (string)$_POST['menh-gia'];
$soluong = (string)$_POST['so-luong'];
    // xu ly mua the thanh cong
    $tong = $_POST['menh-gia'] * $_POST['so-luong'];
    if($sodu >= $tong){
        if($_POST['mkc2']==$mkc2){
        $hoahong = $tong*0.005;
        $sodu = $sodu - $tong + $hoahong;
        
        date_default_timezone_set('Asia/Ho_Chi_Minh').

			$time_now = date("Y-m-d H:i:sa");
	$transaction_id=rand().'abc';
	$bk = 'https://banthe247.com/MechantServices.asmx';
	$config = array(
	'trace'=>$transaction_id,
	'telco'=>$loaithe,     // nhà mạng
	'amount'=>$menhgia, // mệnh giá
	'soluong'=>$soluong      // số lượng
);

switch ($loaithe) {
    // case "VTT":
    //     $nhamang = "Viettel";
    //     break;
    // case "VMS":
    //      $nhamang = "Mobiphone";
    //     break;
    // case "VNP":
    //      $nhamang = "Vinaphone";
    //     break;
    case "FPT":
        $nhamang = "FPT Gate";
        break;
    case "VNM":
        $nhamang = "Vietnammobile";
        break;
    case "MGC":
        $nhamang = "Megacard";
        break;
    case "ONC":
        $nhamang = "OnCash";
        break;
    case "GAR":
        $nhamang = "Garena";
        break;
    case "ZING":
        $nhamang = "ZING";
        break;
    case "VTC":
        $nhamang = "Vcoin VTC";
        break;
}

$soapUser = "kiuchoibe@gmail.com";  //  username
$soapPassword = "taikuteyh"; // password

$soap_request  = "<?xml version=\"1.0\"?>\n";
$soap_request .= "<soap:Envelope xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:soap=\"http://schemas.xmlsoap.org/soap/envelope/\">\n";
$soap_request .="<soap:Header>";
$soap_request .="<UserCredentials xmlns=\"http://tempuri.org/\">";
$soap_request .="<userName>kiuchoibe@gmail.com</userName>";
$soap_request .="<pass>taikuteyh</pass>";
$soap_request .="</UserCredentials>";
$soap_request .="</soap:Header>";
$soap_request .= "  <soap:Body >\n";
$soap_request .="<BuyCards xmlns=\"http://tempuri.org/\">";
    $soap_request .="<trace>".$transaction_id."</trace>";
    $soap_request .="<telco>$loaithe</telco>";
    $soap_request .="<amount>$menhgia</amount>";
    $soap_request .="<quantity>$soluong</quantity>";
  $soap_request .="</BuyCards>";
$soap_request .= "  </soap:Body>\n";
$soap_request .= "</soap:Envelope>";
$header = array(
  "Content-type: text/xml;charset=\"utf-8\"",
  "Accept: text/xml",
  "Cache-Control: no-cache",
  "Host: banthe247.com",
  "SOAPAction: \"http://tempuri.org/BuyCards\"",
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


$listcard = preg_replace("/(<\/?)(\w+):([^>]*>)/", "$1$2$3", $data );
       $listcard = new SimpleXMLElement($listcard);
       $listcard = json_decode(json_encode((array)$listcard), TRUE); 
       $listcard = $listcard['soapBody']['BuyCardsResponse']['BuyCardsResult'];
    //    print_r($listcard);
    // /-----
    //     echo "<pre>";
    //    print_r($listcard);
    //    echo "</pre>";
    //    echo $listcard['RepCode'];
    //    die();
        if($listcard['RepCode']==778 || $listcard['RepCode']==5)
            $errornt1 = "<p class = 'error'>Thẻ bạn mua đang tạm hết.
            <br> Bạn vui lòng inbox cho Fanpage để được khắc phục !
            <br> Xin cảm ơn, và xin lỗi về sự bất tiện này !</p>";
        else{
            $sqlU = "update users set sodu = $sodu where id = '$id'"; 
            mysqli_query($conn, $sqlU);	
            echo "Thông tin thẻ". "<br>";
            $js = json_decode($listcard['Data'],true);
            foreach($js as $value){
                
                echo "Mệnh giá: ".$value['Amount']." VND"."<br>"."Serial: ". $value['Serial']."<br>"."Mã thẻ: ".$value['PinCode']."<br>";
                echo "-------------------------------------------------------------"."<br>";
                echo "Nếu thẻ không nạp được hãy inbox cho Page"."<br>";
                echo "-------------------------------------------------------------"."<br>";
                $menhgia_ls =$value['Amount'];
                $serial_ls = $value['Serial'];
                $mathe_ls = $value['PinCode'];
                $sqlLsMt = "insert into ls_mua_the(userName,menhgia,loaithe,mathe,serial,time) values('$userName',$menhgia_ls,n'$nhamang',n'$mathe_ls','$serial_ls','$time_now')";
                    mysqli_query($conn, $sqlLsMt);
                }
        }
    }
    else{
        $error11 = "<p style = 'text-align: center' class = 'error'>Mật khẩu cấp 2 không đúng !</p>";
    }        
// $status=json_decode($data);
}
else 
    echo "<p style = 'color: red;margin-top: 10px;'>+)Số tiền của bạn không đủ để thực hiện giao dịch !
    <br>+) Vui lòng nạp thêm tiền vào để sử dụng. Xin cảm ơn !</p>";
}
else{
	$status='';
}
?>

            <div class = "col-md-12 col-xs-5" style="margin-bottom: 20px;font-size: 25px;margin-top: 20px;"><span class="label label-success">Mua thẻ Game Online </span></div>
            <?php 
                if(isset($errornt1))
                    echo $errornt1;
                if(isset($accnt))
                    echo $accnt;
                if(isset($error11))
                    echo $error11;
                ?>
            <div class ="col-md-12 col-xs-12">
            <form action="thegame.php" method="post" id="fnapthe" name="fnapthe">

            	<input class = "form-control col-md-12 "  type="hidden" name="fnapthe" value="ok"/>
                <div class ="col-md-12 col-xs-12 title-muathe"><strong>Chọn nhà cung cấp*</strong></div><br>
               <div class = "col-md-2 col-xs-4 nha-mang nha-mang-img" id = "fpt"><img class = "img-nha-mang" src ="gate.png"></div>    
               <div class = "col-md-2 col-xs-4 nha-mang nha-mang-img" id = "gar"><img class = "img-nha-mang" src = "garena.png"></div>      
               <div class = "col-md-2 col-xs-4 nha-mang nha-mang-img" id = "zing"><img class = "img-nha-mang" src = "20170602095549zing1.png"></div>           
               <div class = "col-md-2 col-xs-4 nha-mang nha-mang-img" id = "vtc"><img class = "img-nha-mang" src = "20180726144731vcointopup-04-07-2018-19-37-26.png"></div>           
               
                <script>
                    $("#fpt").click(function(){
                        $(".nha-mang").css("border","1px solid #dcdcdc");
                        $(this).css("border","4px solid #23a076");
                        $("select[name='card_type_id'] option").removeAttr('selected');
                        $("option[value='FPT']").attr("selected", true);
                    });
                    $("#gar").click(function(){
                        $(".nha-mang").css("border","1px solid #dcdcdc");
                        $(this).css("border","4px solid #23a076");
                        $("select[name='card_type_id'] option").removeAttr('selected');
                        $("option[value='GAR']").attr("selected", true);
                    });
                    $("#zing").click(function(){
                        $(".nha-mang").css("border","1px solid #dcdcdc");
                        $(this).css("border","4px solid #23a076");
                        $("select[name='card_type_id'] option").removeAttr('selected');
                        $("option[value='ZING']").attr("selected", true);
                    });
                    $("#vtc").click(function(){
                        $(".nha-mang").css("border","1px solid #dcdcdc");
                        $(this).css("border","4px solid #23a076");
                        $("select[name='card_type_id'] option").removeAttr('selected');
                        $("option[value='VTC']").attr("selected", true);
                    });
                  
                </script>
               <div class = "col-md-12"></div>   
                            
                            
                <div style = "text-align: right;display: none;" class ="col-md-3 col-xs-12 title-mt"> <p>Loại thẻ:</p></div><div class ="col-md-8 col-xs-12"><select class = "form-control ip-muathe" name="card_type_id" style = "display: none;" >
                                   <option value="FPT">FPT Gate</option>
                                    <!--<option value="MGC">Megacard</option>
                                    <option value="ONC">OnCash</option><!-->
                                    <option value="GAR">Garena</option>
                                    <option value="ZING">ZING </option>
                                    <option value="VTC">Vcoin VTC </option>
                                </select></div>
                                <div class ="col-md-12 col-xs-12 title-muathe"><strong>Chọn mệnh giá*</strong></div>  <br>
                        <!--<div class = "col-md-2 col-xs-3 nha-mang mgia" id = "10"><p>10,000 đ</p></div>    -->
                        <div class = "col-md-2 col-xs-3 nha-mang mgia" id = "20"><p> 20,000 đ</p></div>      
                        <div class = "col-md-2 col-xs-3 nha-mang mgia" id = "50"><p> 50,000 đ</p></div>           
                        <div class = "col-md-2 col-xs-3 nha-mang mgia" id = "100"><p> 100,000 đ</p></div>
                        <div class = "col-md-2 col-xs-3 nha-mang mgia" id = "200"><p> 200,000 đ</p></div>           
                        <div class = "col-md-2 col-xs-3 nha-mang mgia" id = "500"><p> 500,000 đ</p></div>           

                         <script>
                            //  $("#10").click(function(){
                            //      $(".mgia").css("border","1px solid #dcdcdc");
                            //      $(".mgia").css("color","#333");
                            //     $(".mgia").css("background-color","#fff");
                            //      $(this).css("background-color","#23a076");
                            //      $(this).css("color","#fff");
                            //      $("select[name='menh-gia'] option").removeAttr('selected');
                            //      $("option[value='10000']").attr("selected", true);
                            //      $("#topup_amount").html("10000");
                            //  });
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
                            
                               
                                
                                <div style = "text-align: right;display: none;" class ="col-md-3 col-xs-12 title-mt"> <p>Mệnh giá:</p></div><div class ="col-md-8 col-xs-12"> <select class = "form-control ip-muathe" class = 'inputs select' name = 'menh-gia' style = " display: none;"> 
                                    <!--<option value='10000'>10000 VND</option>-->
                                    <option value='20000'>20000 VND</option>
                                    <option value='50000'>50000 VND</option>
                                    <option value='100000'>100000 VND</option>
                                    <option value='200000'>200000 VND</option>
                                    <option value='500000'>500000 VND</option>
                                    </select>
                                </div>
                            
                             <div class ="col-md-12 col-xs-12"></div>
                                
                                <div style = "text-align: right;" class ="col-md-3 col-xs-12 title-mt"> <p>Số lượng:</p></div><div class ="col-md-8 col-xs-12"><input class = "form-control ip-muathe" name = 'so-luong' type = "number" placeholder="Số lượng cần mua" required /></div>
                                <script>    
                                    // lấy số lượng thẻ xuất lên bảng 
                                    $("input[name='so-luong']").keyup(function(){
                                        var sl = $("input[name='so-luong']").val();
                                        $("#topup_quantity").html(sl);
                                    });
                                    $("input[name='so-luong']").change(function(){
                                        var sl = $("input[name='so-luong']").val();
                                        $("#topup_quantity").html(sl);
                                    });

                                    // tính tổng sau chiết khấu
                                    $(".mgia").click(function(){
                                        var mg_mua = $("#topup_amount").text();
                                        var sl_mua = $("#topup_quantity").text();
                                        var re_tong = $("#topup_total_amount");
                                        var re_chiet = $("#topup_sl");
                                        sl_mua = Number(sl_mua);
                                        mg_mua = Number(mg_mua);
                                    
                                        var tong = mg_mua*sl_mua;
                                        var hoahong = tong*0.005;
                                        var re = tong-hoahong;
                                        re_chiet.html(hoahong);
                                        re_tong.html(re);
                                    });
                                    $("input[name='so-luong']").change(function(){
                                        var mg_mua = $("#topup_amount").text();
                                        var sl_mua = $("#topup_quantity").text();
                                        var re_tong = $("#topup_total_amount");
                                        var re_chiet = $("#topup_sl");
                                        sl_mua = Number(sl_mua);
                                        mg_mua = Number(mg_mua);
                             
                                        var tong = mg_mua*sl_mua;
                                        var hoahong = tong*0.005;
                                        var re = tong-hoahong;
                                        re_chiet.html(hoahong);

                                        re_tong.html(re);
                                    });

                                    $("input[name='so-luong']").keyup(function(){
                                        var mg_mua = $("#topup_amount").text();
                                        var sl_mua = $("#topup_quantity").text();
                                        var re_tong = $("#topup_total_amount");
                                        var re_chiet = $("#topup_sl");

                                        sl_mua = Number(sl_mua);
                                        mg_mua = Number(mg_mua);
                                    
                                        var tong = mg_mua*sl_mua;
                                        var hoahong = tong*0.005;
                                        var re = tong-hoahong;
                                        re_chiet.html(hoahong);

                                        re_tong.html(re);
                                    });
                                </script>
                            <div class ="col-md-12 col-xs-12"></div>
                            <div style = "text-align: right;" class ="col-md-3 col-xs-12 title-mt"> <p>Mật khẩu cấp 2:</p></div><div class ="col-md-8 col-xs-12"><input class = "form-control ip-muathe" name = 'mkc2' type = "number" placeholder="Mật khẩu cấp 2 của bạn" required /></div>
				<center>
				    <div class ="col-md-12 col-xs-12 info-mt">
                <div class = "col-md-12 info-mg">
                    <div class="col-md-5 col-sm-5 col-xs-6 left-infomt">Mệnh giá thẻ</div>
                    <div class="col-md-7 col-sm-7 col-xs-6 right-infomt"><span id="topup_amount">0</span> đ</div>
                </div>
                <div class = "col-md-12 info-sl">
                        <div class="col-md-5 col-sm-5 col-xs-6 left-infomt">Số lượng</div>
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
				<div class ="col-md-12 col-xs-12" style = "text-align: center;margin-top: 10px;"><input class="btn btn-info" type="submit" value="Mua thẻ ngay"/> </div></div> 
<div id="loading_napthe" style="display: none; float: center"> &nbsp;Xin mời chờ...</div><br>
<div class="label label-success" id="msg_success_napthe"></div><br>
<div class="label label-danger" id="msg_err_napthe"><?php echo $status;?></div><br>
				</center>
            </form>
            
        <?php include 'bottom_page.php' ?>

