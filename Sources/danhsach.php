<?php include 'top_page2.php' ?>
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
// lay và tách du lieu page trong t.k 
if(isset($pages))
	$data5 = explode(',', "$pages");   
    $tmp = "";
    echo "<p style = 'margin-top: 10px;font-size: 17px;color: green;'>Vui lòng chọn Page của Bạn !</p> ";
    echo "<form  method = 'post'>";
    echo "<select  name='selectPage'>";
    foreach($data5 as $valData5){
        switch ($valData5) {            
                                        case "1phut_7929766":
                                            $tmp = "1 Phút - Boss|Hồng Gấm(Dzú)";
                                            break;
                                        case "Alone_1054436":
                                            $tmpSS = "ALONE – Boss|Phạm Ngọc Nhi";
                                            break;
                                        case "blogcuaban":
    										 $tmp = "Blog của bạn - Boss|Tường Vy(Na)";
    										break;
    									case "buonvl":
    										$tmp = "Buồn VL - Boss|Ngọc Minh Châu(Bò)";
    										break;
    									case "CanhCutCorp_8313069":
    										 $tmp = "Cánh Cụt Corp - Boss|Trương Văn Đăng";
    										break;
    									case "DeepCrush_1249406":
    										$tmp = "D e e p C r u s h - Boss|Trương Văn Đăng";
    										break;
    									case "droll_2659058":
                                            $tmp = "Droll.";
                                            break;
                                        case "deeplove_1683934":
                                            $tmp = "Deep Love - Boss|Hường";
                                            break;
    									case "Him_1212386":
    										$tmp = "Him. - Boss|Trương Văn Đăng";
    										break;
    									case "imfine_855939":
                                            $tmp = "I’m Fine – Boss|Chu Dương";
                                            break;
                                        case "kingquotes_590064":
                                            $tmp = "King Quotes - Boss|Jen Chan";
                                            break;
    									case "ethanhxuan":
    									    $tmp = "L o v e S t r a n g e r  - Boss|Jen Chan(Jen)";
    									    break;
    									case "mua":
    										$tmp = "Mưa+ - Boss|Nam Dương(Rey)";
    										break;
    								    case "Moclan_5743338":
    										 $tmp = "Mộc Lan - Boss|Ngô Yến Như(Bèo)";
    										break;
    									case "quotemanhyy":
    										 $tmp = "Quote Mẫn Hyy";
    										break;
    								    case "say":
    									    $tmp = "Say. - Boss|Jen Chan(Jen)";
    									    break;
    									case "sadlove":
    									    $tmp = "Sad Love - Boss|Nam Dương(Rey)";
    									    break;
    									case "saohanquoc":
    										 $tmp = "SAO HÀN QUỐC";
    										break;
    									case "StayHigh_8605376":
    										 $tmp = "Stay High. - Boss|Trương Văn Đăng";
    										break;
    									case "Sttngan_1120958":
    										 $tmp = "Stt Ngắn - Boss|Ngô Yến Như";
    										break;
    									case "Trash_3730792":
    										 $tmp = "Trash . - Boss|Trương Văn Đăng";
    										break;
    									case "thathinh":
    									    $tmp = "Thả Thính - Boss|Tường Vy(Na)";
    									    break;
    									case "tothichcau_5432446":
                                            $tmp = "Tớ Thích Cậu – Boss|Nguyễn Hoàng Ngân Hà";
                                            break;
    									case "viet_9758669":
    									    $tmp = "Viết - Boss|Nguyễn Hoàng Ngân Hà(Mĩm)";
    									    break;
    									case "Vui24_278960":
                                            $tmp = "Vui 24 - Boss|Quang NguyenVan";
                                            break;
    									case "xamxi_6062147":
                                            $tmp = "Xàm Xí – Boss|Jen Chan";
                                            break;
    									case "yeu":
    										 $tmp = "Yêu+ - Boss|Hồng Gấm(Dzú)";
    										break;
    									case "yeu_4135287":
    										 $tmp = "Yêu+ - Boss|Hiền Hoàng(Wind)";
    										break;
			default:
				$tmp = "Chưa có or Đang xét duyệt";
			 	break;
        }
        echo "<option value='$valData5'>$tmp</option>";
    }
    echo "</select>";
    echo "<input type = 'submit' name = 'xacnhan' value = 'Xác nhận - Xem'>";
    echo "</form>";
        // ---------------------

        // lấy dữ liệu của page đc chọn
    if (isset($_POST['xacnhan'])){
       $pageSelect = $_POST['selectPage']; 
       $_SESSION['pageSelect'] = $_POST['selectPage']; // luu ten page dc chon vao bien ss để sử dụng ở dưới
       $sqlPage = "select * from $pageSelect";
       $sPage = mysqli_query($conn,$sqlPage);

       if(mysqli_num_rows($sPage)>0)
           {
               while($rowPage = mysqli_fetch_assoc($sPage)){
                   $arrUserPage[$rowPage['userName']] = $rowPage;
               }	
           }
    // echo "<pre>";
    // print_r($arrUserPage);
    // echo "</pre>";
    }
    //----------------------

?>
<script type="text/javascript">
			$(document).ready(function(){
				$(".btnSua").click(function(){
					$(".ip_info").removeAttr('disabled');
					$(".btnUpdate").removeAttr('disabled');
					$(".userName").attr("disabled", true);
					$("select").removeAttr('disabled');
					$(".btnUpdate").css('background-color','green');
					$(".btnUpdate").css('color','#fff');
					$(".select").css('background-color','#fff');
					$("input[name='newName0']").focus();
				});	
				$(".btnCapTien").click(function(){
					$(".chuyenTien").removeAttr('disabled');
					$(".btnCT").removeAttr('disabled');
					$(".btnCT").css('background-color','green');
					$(".btnCT").css('color','#fff');
					$("input[name='newCT0']").focus();
				});	

				$(".del").click(function(){
					var r = confirm("Bạn có chắc chắn muốn xóa thành viên ?");
					if(r==false){
						return false;
					}
				});
				$(".btnCT").click(function(){
					var r2 = confirm("Bạn có chắc chắn đã cấp tiền chính xác và thực hiện ?");
					if(r2==false){
						return false;
					}
				});
				// js out page
				$(".btnOutPage").click(function(){
					var r = confirm("Bạn có chắc chắn muốn ra khỏi page này ?");
					if(r==false){
						return false;
					}
				});
			});

		</script>
<?php 				
            
			$k = 0;
			$ct = 0;
			$arrError = array();
			$tmp = 0;
			$tong_chuyen = 0;
			$tong_du =0;
			
			date_default_timezone_set('Asia/Ho_Chi_Minh').

			$time_now = date("Y-m-d H:i:sa");
			
			if(isset($_SESSION['pageSelect']))
				$pageSelect = $_SESSION['pageSelect'];


			if(isset($_POST['chuyen_tien'])){			// chuyển tiền
				$sqlPage = "select * from $pageSelect";
                $sPage = mysqli_query($conn,$sqlPage);

                if(mysqli_num_rows($sPage)>0)
                {
                    while($rowPage = mysqli_fetch_assoc($sPage)){
                   		$arrUserPage[$rowPage['userName']] = $rowPage;
               		}	
				}
				// echo $pageSelect ;

				foreach($arrUserPage as &$value){	
					if(isset($value)){
						if($value['active']==1){
						// echo $value['userName']." ";

						$newCT = "newCT".$ct;
						$userCT = $value['userName'];
						$n_ct = $_POST[$newCT];	
						
						foreach($depot as &$value2){
							if($value2['userName'] == $value['userName']){
								// echo $value2['sodu'] . "<br> ";
								$tong_du = $value2['sodu'] + $n_ct;	// số tiền tk nhận sau khi đc nhận tiền
							}
						}
						// echo $tmpSD ."<br>";
						// echo $tong_du .  "<br>";
						
						$tong_chuyen += $n_ct;				// tổng số tiền chuyển đi
						if($sodu<$tong_chuyen){
							echo "<p class = 'error'>+) Số tiền trong tài khoản không đủ để thực hiện chuyển tiền.
							<br>+) Vui lòng nạp thêm tiền vào để sử dụng, Xin cảm ơn !</p>";
							die();
						}
						// $sqlU = "update $pageSelect set sodu = '$tong_du' where userName = '$userCT'"; 
						// mysqli_query($conn, $sqlU);
						// echo $tong_du .  " ";
						
						$sqlU2 = "update users set sodu = '$tong_du' where userName = '$userCT'"; 
						mysqli_query($conn, $sqlU2);

						if($_POST[$newCT]>0){		// ghi lich sử chuyển tiền
							$sqlLs = "insert into lichsu_gd(userName,menhgia,hinhthuc,user_nhan,time) values('$userName',$_POST[$newCT],n'chuyển tiền',n'$userCT','$time_now')";
							mysqli_query($conn, $sqlLs);
						}
					$ct++;		
			}
			}
				$sodu_sau = $sodu-$tong_chuyen;	// số tiền còn lại sau khi chuyển đi
				$sqlU3 = "update users set sodu = '$sodu_sau' where userName = '$userName'"; 
				mysqli_query($conn, $sqlU3);
				header('Location: danhsach.php');
			}
		}
			if(isset($_POST['update'])){			// cập nhât thông tin

                
                $sqlPage = "select * from $pageSelect";
                $sPage = mysqli_query($conn,$sqlPage);

                if(mysqli_num_rows($sPage)>0)
                {
                    while($rowPage = mysqli_fetch_assoc($sPage)){
                   $arrUserPage[$rowPage['userName']] = $rowPage;
               	}	
                }
                
					foreach($arrUserPage as &$value){	
							if(isset($value)){
								if($value['active']==1){
								$newCre = "newCre".$k;
								$newName = "newName".$k;
								$newLv = "newLv".$k;
								// $newemail = "newemail".$k;
								// $newSoDu = "newSoDu".$k;
								// $newPass = "newPass".$k;
								// $newGender = "newGender".$k;
								// $newBthday = "newBthday".$k;
								$id = $value['id'];
								if (preg_match('/[0-9]+/', $_POST[$newName])) {	// kiem tra name có toàn chữ ko?
									$error1 = 'Tên không thể chứa số';
									$n_name = $value['name'];
									array_push($arrError, 0);
								} else {
									$n_name = trim($_POST[$newName]);
									array_push($arrError, 1);
								}

								// if (preg_match('/^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,})$/i', $_POST[$newemail])){		// kiem tra dinh dang email?
								// 	array_push($arrError, 1);
								// 	$n_email = trim($_POST[$newemail]);
								// }
								// else{
								// 	$error2 = 'Email không hợp lệ';
								// 	array_push($arrError, 0);			
								// }
								// $n_email = trim($_POST[$newemail]);
								// $n_userName = trim($_POST[$newUser]);
								$n_cre = trim($_POST[$newCre]);                        
								// $n_password = trim($_POST[$newPass]);
								$n_lv = $_POST[$newLv];
								// $n_birthdate = $_POST[$newBthday];
								// $n_soDu = $_POST[$newSoDu];
								$sqlU = "update $pageSelect set name = '$n_name',cre = '$n_cre',level = $n_lv where id = '$id'"; 
								mysqli_query($conn, $sqlU);
								$k++;		
							}
						}
				}
            }
            
            // ----------------------
            if(isset($_SESSION['pageSelect'])&&isset($_SESSION['login'])){
                $pageSelect = $_SESSION['pageSelect'];
                $sqlPage = "select * from $pageSelect";
                $sPage = mysqli_query($conn,$sqlPage);

                if(mysqli_num_rows($sPage)>0)
                {
                    while($rowPage = mysqli_fetch_assoc($sPage)){
                		$arrUserPage[$rowPage['userName']] = $rowPage;
                    }	
				}
				
			}
			if(isset($arrUserPage)){
				foreach($arrUserPage as $value){
					if(isset($value)){
						if(isset($_SESSION['login'])&&$value['userName']==$_SESSION['login']){
							$activeUser = $value['active'];
							$levelPage = $value['level'];
						}
					}
				}
			}
			
			?>

				
		<!-- <div class = "col-12"> -->
		<form  style = '    overflow-x: scroll;' method="post">
		<?php 
		 ob_start();
			$stt = 0;
			if(isset($_SESSION['pageSelect'])){
				switch ($_SESSION['pageSelect']) {
				                        case "1phut_7929766":
                                            $tmpSS = "1 Phút - Boss|Hồng Gấm(Dzú)";
                                            break;
                                        case "Alone_1054436":
                                            $tmpSS = "ALONE – Boss|Phạm Ngọc Nhi";
                                            break;
                                        case "blogcuaban":
    										 $tmpSS = "Blog của bạn - Boss|Tường Vy(Na)";
    										break;
    									case "buonvl":
    										$tmpSS = "Buồn VL - Boss|Ngọc Minh Châu(Bò)";
    										break;
    									case "CanhCutCorp_8313069":
    										 $tmpSS = "Cánh Cụt Corp - Boss|Trương Văn Đăng";
    										break;
    									case "DeepCrush_1249406":
    										$tmpSS = "D e e p C r u s h - Boss|Trương Văn Đăng";
    										break;
    									case "droll_2659058":
                                            $tmpSS = "Droll.";
                                            break;
                                        case "deeplove_1683934":
                                            $tmpSS = "Deep Love - Boss|Hường";
                                            break;
    									case "Him_1212386":
    										$tmpSS = "Him. - Boss|Trương Văn Đăng";
    										break;
    									case "imfine_855939":
                                            $tmpSS = "I’m Fine – Boss|Chu Dương";
                                            break;
                                        case "kingquotes_590064":
                                            $tmpSS = "King Quotes - Boss|Jen Chan";
                                            break;
    									case "ethanhxuan":
    									    $tmpSS = "L o v e S t r a n g e r  - Boss|Jen Chan(Jen)";
    									    break;
    									case "mua":
    										$tmpSS = "Mưa+ - Boss|Nam Dương(Rey)";
    										break;
    									case "Moclan_5743338":
    										 $tmpSS = "Mộc Lan - Boss|Ngô Yến Như(Bèo)";
    										break;
    									case "quotemanhyy":
    										 $tmpSS = "Quote Mẫn Hyy";
    										break;
    									case "say":
    									    $tmpSS = "Say. - Boss|Jen Chan(Jen)";
    									    break;
    									case "sadlove":
    									    $tmpSS = "Sad Love - Boss|Nam Dương(Rey)";
    									    break;
    									case "saohanquoc":
    										 $tmpSS = "SAO HÀN QUỐC";
    										break;
    									case "Sttngan_1120958":
    										 $tmpSS = "Stt Ngắn - Boss|Ngô Yến Như";
    										break;
    									case "StayHigh_8605376":
    										 $tmpSS = "Stay High. - Boss|Trương Văn Đăng";
    										break;
    									case "Trash_3730792":
    										 $tmpSS = "Trash . - Boss|Trương Văn Đăng";
    										break;
    									case "thathinh":
    									    $tmpSS = "Thả Thính - Boss|Tường Vy(Na)";
    									    break;
    									case "tothichcau_5432446":
                                            $tmpSS = "Tớ Thích Cậu – Boss|Nguyễn Hoàng Ngân Hà";
                                            break;
    									case "viet_9758669":
    									    $tmpSS = "Viết - Boss|Nguyễn Hoàng Ngân Hà(Mĩm)";
    									    break;
    									case "Vui24_278960":
                                            $tmpSS = "Vui 24 - Boss|Quang NguyenVan";
                                            break;
    									case "xamxi_6062147":
                                            $tmpSS = "Xàm Xí – Boss|Jen Chan";
                                            break;
    									case "yeu":
    										 $tmpSS = "Yêu+ - Boss|Hồng Gấm(Dzú)";
    										break;
    									case "yeu_4135287":
    										 $tmpSS = "Yêu+ - Boss|Hiền Hoàng(Wind)";
    										break;
					default: // Them case truoc dong nay
						$tmp = "Chưa có or Đang xét duyệt";
					 break;
                }
				echo "<p style = 'font-size: 25px;color: green;margin-top: 25px;'>Thành viên Page - $tmpSS</p>";
				echo '<table class = "table table_dstv">
					<tr>
						<th>STT</th>
				        <th>Họ và Tên</th>
                        <th>Tài khoản</th>
                        <th>Cre / Biệt hiệu</th>
						<th>Cấp tiền (VNĐ)</th>';
						if(isset($levelPage)&&$levelPage==2){
						    echo '<th>Cấp bậc</th>';
						}
					echo '</tr>';
					$i = 0;
					if(isset($activeUser)){
						if($activeUser==1){					// chỉ t.k đã đc active mới đc xem dstv
							foreach($arrUserPage as &$value){
								if($value['active']==1){		// chỉ xuất ra những t.k đã đc active
									$stt++;
									if(isset($value['name']))
										$name = $value['name'];
									else 
										$name = "";
									// if(isset($value['email']))
									// 	$email = $value['email'];
									// else 
									// 	$email = "";
									if(isset($value['userName']))
										$userName = $value['userName'];
									else 
										$userName = "";
									if(isset($value['cre']))
										$cre = $value['cre'];
									else 
										$cre = "";
									
									if(isset($value['level']))
										$level_mem = $value['level'];
									else 
										$level_mem = "";
									// if(isset($value['password']))
									// 	$password = $value['password'];
									// else 
									// 	$password = "";
									// if(isset($value['gender']))
									// 	$gender = $value['gender'];
									// else 
									// 	$gender = "";
									// if(isset($value['bthdate']))
									// {
									// 	$bd = date('Y-m-d',strtotime($value['bthdate']));
									// }
									// else 
									// 	$bd = "";
									// if(isset($value['sodu']))
									// {
									// 	$sd = $value['sodu'];
									// }
									// else 
									// 	$sd = "";
									echo '<tr>';
									echo "<td>$stt</td>";							
									echo "<td><input class = 'input_dstv ip_info' type = 'text' name = 'newName".$i."' value = '".$name."' disabled required/></td>";
									
									echo "<td><input class = 'input_dstv userName ' style = '' type = 'text' name = 'newUser".$i."' value = '".$userName."' disabled required/></td>";

									echo "<td><input class = 'input_dstv ip_info' style = '' type = 'text' name = 'newCre".$i."' value = '".$cre."' disabled /></td>";
									echo "<td><input class = 'input_dstv chuyenTien' style = '' type = 'number' name = 'newCT".$i."' performance = 'VND' value = 0 min='0' disabled /></td>";
                                    echo "<td>
                                    <select style = 'margin-top: 0px;' class = 'input-info select' name = 'newLv".$i."' disabled> 
        							 <option value='1'";
        							 if($level_mem == 1 ){
        							 	echo "selected";
        							 } 
        							 echo ">Nhân viên</option>
        							 <option value='2'";
        							 if($level_mem == 2 )
        							 	echo "selected";
        							 echo ">Quản lý</option>
        							 <option value=2>";
        							 
        							 echo "</select></td>";
									//  echo "<td><input class = 'input_dstv' type = 'text' name = 'newemail".$i."' value = '".$email."' disabled required/></td>";
									// echo "<td><select class = 'input_dstv select' name = 'newGender$i' disabled> 
									//  <option value='Nam'";
									//  if($gender == 'Nam' ){
									//  	echo "selected";
									//  } 
									//  echo ">Nam</option>
									//  <option value='Nữ'";
									//  if($gender == 'Nữ' )
									//  	echo "selected";
									//  echo ">Nữ</option>
									//  <option value='Khác'";
									//  if($gender == 'Khác' ){
									//  	echo "selected";
									//  } 
									//  echo ">Khác</option>
									//  </select></td>";
									//  echo "<td><input class = 'input_dstv ' type = 'date' name = 'newBthday".$i."' value = '".$bd."' min='1945-01-01' max = '2018-05-08' disabled required/></td>";
									//  echo "<td><input style = 'width: 120px;' class = 'input_dstv ' type = 'number' name = 'newSoDu".$i."' value = '".$sd."' disabled required/></td>";
									
									if(isset($levelPage)&&$levelPage==2){
										echo "<td><input class = 'input_dstv del' type = 'submit' name = 'dell".$i."' value = 'Xóa' ></td>";
									}
									echo '</tr>';
									$i++;
								}
							}
					}
					else echo "<p class = 'error'>+) Bạn chưa được Boss chấp nhận tham gia thành viên của Page này !
					<br>+) Hoặc Page đã hết hạn, Boss vui lòng vào 'Gia Hạn' để sử dụng.  </p>";
				}
				else echo "<p class = 'error'>+) Bạn chưa được Boss chấp nhận thành viên của Page này !
					<br>+) Hoặc Page đã hết hạn, Boss vui lòng vào 'Gia Hạn' để sử dụng.</p>";
			}


// 			$connn = mysqli_connect('localhost','root','','axunlifohosting_dbtai');
$connn = mysqli_connect('localhost','axunlifohosting_tai','taikuteyh1','axunlifohosting_tai2');


			mysqli_set_charset($connn, 'UTF8');
				if(!$connn){
					die("Kết nối thất bại". mysqli_connect_error());
				}
				$sql22 = "select * from users";
				$s2 = mysqli_query($connn,$sql22);
			
				if(mysqli_num_rows($s2)>0)
					{
						while($row2 = mysqli_fetch_assoc($s2)){
							$depot2[$row2['userName']] = $row2;
						}
					}
				
			echo '</table>';
			$j = 0; 
			if(isset($arrUserPage)){
			foreach($arrUserPage as &$value){	
				$delete = "dell".$j;
				$id = $value['id'];
				$user_cho = $value['userName'];

				// echo "<pre>";
				// print_r($depot2);
				// echo "</pre>";

			foreach($depot2 as $value9999){				
				if($user_cho==$value9999['userName']){
						$page_user_cho = $value9999['page'];
				}
			}
				if(isset($_POST[$delete])){
				echo "<br>";
					// echo $page_user_cho."<br>";
						$result = str_replace($pageSelect, '', $page_user_cho);// ko dong y thi xoa ten page nay trong truờng page của users
	
						$datare = explode(',', $result);		// chuyen thanh mang de xoa day phảy thừa
						$demphay = 0;
						foreach($datare as $value){
							if($value == "")
							array_splice($datare, $demphay, 1);
							
							$demphay++;
						}				
						$result = implode(',', $datare);
						$result = chop($result, ",");	// xoa dau phay neu co o cuoi chuoi
						// var_dump($result);
						// die();
						$sqlU88 = "update users set page = n'$result' where userName = '$user_cho'";
                        mysqli_query($conn,$sqlU88);
					
					$sqlD = "delete from $pageSelect where id = '$id'";
					mysqli_query($conn,$sqlD);
					header('Location: danhsach.php');
				}
				$j++;
			}
			// echo "<pre>";
			// 	print_r($arrUserPage);
			// 	echo "</pre>";
		}
		// thoát page
		if(isset($_POST['outPage'])){
			$result = str_replace($pageSelect, '', $pages);// ko dong y thi xoa ten page nay trong truờng page của users
	
			$datare = explode(',', $result);		// chuyen thanh mang de xoa day phảy thừa
			$demphay = 0;
			foreach($datare as $value){
				if($value == "")
					array_splice($datare, $demphay, 1);
							
				$demphay++;
			}				
			$result = implode(',', $datare);
			$result = chop($result, ",");	// xoa dau phay neu co o cuoi chuoi
			// var_dump($result);
			// die();
			$sqlU88 = "update users set page = n'$result' where userName = '$userName'";
			mysqli_query($conn,$sqlU88);
			
			$sqlOut = "delete from $pageSelect where userName = '$userName'";
			mysqli_query($conn,$sqlOut);
			header('Location: danhsach.php');

		}
		?>
    <!-- </div> -->
		<?php 
			if(isset($_POST['update'])){
				if(isset($error1)||isset($error2))
					echo "<p class = 'error'>Cập nhật thất bại !<br></p>";
				else if(!isset($error1)&& !isset($error2))
					echo "<p class = 'success'>Cập nhật thành công!<br></p>";
				if(isset($error1))
					echo "<p class = 'error2'>Tên không hợp lệ !</p>";
				if(isset($error2))
					echo "<p class = 'error2'>Email không hợp lệ !</p>";
			}
				
			if(sizeof($arrError)!= 0 && in_array(0, $arrError)==0){
					header('Location: danhsach.php');
				}
		?>
		<?php
		if(isset($activeUser)&&$activeUser==1&&isset($_SESSION['pageSelect'])){
			echo "	<div style='width: auto;padding: 0px;' class = 'col-xs-1 col-md-1'>
			<input  class = 'btnCT' type = 'submit' name = 'chuyen_tien' value = 'Cấp tiền xong' disabled ></div>";
			echo "	<div style='width: auto;padding: 0px;' class = 'col-xs-1 col-md-1'>
			<input  class = 'btnOutPage' type = 'submit' name = 'outPage' value = 'Ra khỏi Page'  ></div>";
		}
		if(isset($levelPage)&&$levelPage==2&&isset($_SESSION['pageSelect'])){ 
			echo "	<div style='width: auto;padding: 0px;' class = 'col-xs-1 col-md-1'>
			<input  class = 'btnUpdate' type = 'submit' name = 'update' value = 'Cập nhật' disabled></div>";
		}
		
		?>

	</form>
	<?php
		if(isset($activeUser)&&$activeUser==1&&isset($_SESSION['pageSelect'])){
			echo "<div style='padding: 0px;width:auto;' class = 'col-xs-1 col-md-1'>
			<button class = 'btnCapTien'>Cấp tiền</button>
		</div>";
		}
		if(isset($levelPage)&&$levelPage==2&&isset($_SESSION['pageSelect'])){ 
			echo "<div style='padding: 0px;width: auto;' class = 'col-xs-1 col-md-1'>
			<button class = 'btnSua'>Chỉnh sửa</button>
		</div>";
	}
	?>
	<?php
		if(isset($levelPage)&&$levelPage==2&&isset($_SESSION['pageSelect'])){ 
			echo "<div style = 'margin-top: 15px;' class = 'col-xs-12 col-md-12'><a style = 'color: blue;' href = 'ds_cho.php'>+) Yêu cầu tham gia Page đang chờ phê duyệt !</a></div>";
	}
    ?>
	<?php include 'bottom_page1.php' ?>
	<!-- note: đang làm phần trừ tiền t.k chuyển tiền -->