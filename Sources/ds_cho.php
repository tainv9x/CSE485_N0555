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
    echo "<p style = 'margin-top: 10px;font-size: 17px;color: green;'>Chọn Page cần xem yêu cầu phê duyệt !</p> ";
    echo "<form method = 'post'>";
    echo "<select  name='selectPage'>";
    foreach($data5 as $valData5){
        switch ($valData5) {            
                                        case "1phut_7929766":
                                            $tmp = "1 Phút - Boss|Hồng Gấm(Dzú)";
                                            break;
                                        case "Alone_1054436":
                                            $tmp = "ALONE – Boss|Phạm Ngọc Nhi";
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
            default:                    // thêm case mới thì thêm trc dòng này
				$tmp = "Chưa có or Đang xét duyệt";
				break;
        }
        echo "<option value='$valData5'>$tmp</option>";
    }
    echo "</select>";
    echo "<input type = 'submit' name = 'xacnhan' value = 'Xác nhận'>";
    echo "</form>";
        // ---------------------

        // lấy dữ liệu của page đc chọn
    if (isset($_POST['xacnhan'])){
       $pageSelect = $_POST['selectPage']; 
       $_SESSION['pageSelect2'] = $_POST['selectPage']; // luu ten page dc chon vao bien ss để sử dụng ở dưới
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
	if(isset($arrUserPage)){
		foreach($arrUserPage as $value){
			if(isset($value)){
				if(isset($_SESSION['login'])&&$value['userName']==$_SESSION['login']){
					$activeUser = $value['active'];
					$levelPage = (int)$value['level'];
					$userp = $value['userName'];
				}
			}
		}
	}
	
?>
<script type="text/javascript">
			$(document).ready(function(){
				$(".btnSua").click(function(){
					$("input").removeAttr('disabled');
					$(".userName").attr("disabled", true);
					$("select").removeAttr('disabled');
					$(".btnUpdate").css('background-color','green');
					$(".select").css('background-color','#fff');
					$("input[name='newName0']").focus();
				});	
				$(".del").click(function(){
					var r = confirm("Bạn có chắc chắn muốn 'Từ Chối' thành viên này không ?");
					if(r==false){
						return false;
					}
				});
                $(".accept").click(function(){
					var r2 = confirm("Bạn có chắc chắn 'Đồng ý' nhận thành viên này vào page của mình ?");
					if(r2==false){
						return false;
					}
				});
			});

		</script>
<?php 				
            
			$k = 0;
			$arrError = array();
			$tmp = 0;
            
            // ----------------------
            if(isset($_SESSION['pageSelect2'])&&isset($_SESSION['login'])){
                $pageSelect = $_SESSION['pageSelect2'];
                $sqlPage = "select * from $pageSelect";
                $sPage = mysqli_query($conn,$sqlPage);

                if(mysqli_num_rows($sPage)>0)
                {
                    while($rowPage = mysqli_fetch_assoc($sPage)){
                    $arrUserPage[$rowPage['userName']] = $rowPage;
                    }	
                }
            }
			?>

				
		<!-- <div class = "col-12"> -->
		<form style = '    overflow-x: scroll;' method="post">
		<?php 
		 ob_start();
			$stt = 0;
			if(isset($arrUserPage) && isset($levelPage)&&$levelPage==2){	
				switch ($_SESSION['pageSelect2']) {
				                        case "1phut_7929766":
                                            $tmpSS = "1 Phút - Boss|Hồng Gấm(Dzú)";
                                            break;
                                        case "Alone_1054436":
                                            $tmpSS = "ALONE – Boss|Phạm Ngọc Nhi";
                                            break;
                                        case "blogcuaban":
    										 $tmpSS = "Blog của bạn - Boss|Tương Vy(Na)";
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
    									case "StayHigh_8605376":
    										 $tmpSS = "Stay High. - Boss|Trương Văn Đăng";
    										break;
    									case "Sttngan_1120958":
    										 $tmpSS = "Stt Ngắn - Boss|Ngô Yến Như";
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
                    default:                    // thêm case mới thì thêm trc dòng này
				        $tmp = "Chưa có or Đang xét duyệt";
				        break;
                }
				echo "<p style = 'font-size: 25px;color: green;margin-top: 25px;'>Yêu cầu phê duyệt của Page - $tmpSS</p>";
				echo '<table class = "table table_dstv">
					<tr>
						<th>STT</th>
				        <th>Họ và Tên</th>
                        <th>Tài khoản</th>
                        <th>Cre / Biệt hiệu</th>
                        <th>Hành động</th>
						
					</tr>';
					$i = 0;
					foreach($arrUserPage as &$value){
						if($value['active']==0){	
							$delete = "dell".$i;												
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
		 					echo "<td><input class = 'input_dstv' type = 'text' name = 'newName".$i."' value = '".$name."' disabled required/></td>";
		 					
							 echo "<td><input class = 'input_dstv userName' style = '' type = 'text' name = 'newUser".$i."' value = '".$userName."' disabled required/></td>";

							 echo "<td><input class = 'input_dstv' style = '' type = 'text' name = 'newCre".$i."' value = '".$cre."' disabled required/></td>";
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
                                echo "<td><input class = 'input_dstv accept' type = 'submit' name = 'accept".$i."' value = 'Đồng ý' ></td>";
                                echo "<td><input class = 'input_dstv del' type = 'submit' name = 'dell".$i."' value = 'Từ chối' ></td>";
							}
							echo '</tr>';
							$i++;
						}
                    }
                    echo "	</form>";
				}
									if(isset($levelPage)&&$levelPage!=2){
										echo "<p class = 'error'>+) Bạn không phải 'Quản lý' của Page này !</p>";
									}
				
				
			echo '</table>';
			$j = 0; 
			if(isset($arrUserPage)){
			foreach($arrUserPage as &$value){	
                if($value['active']==0){	
                    $accept = "accept".$j;
                    $delete = "dell".$j;
                    $id = $value['id'];
                    $user_cho = $value['userName'];
                    if(isset($_POST[$accept])){
                        $sqlU = "update $pageSelect set active = 1 where id = '$id'";
                        mysqli_query($conn,$sqlU);
                        header('Location: ds_cho.php');
                    }
                    if(isset($_POST[$delete])){
						foreach($depot as $value){				
							if($value['userName']==$user_cho){
								$page_user_cho = $value['page'];
							}
						}
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
						
						$sqlU88 = "update users set page = n'$result' where userName = '$user_cho'";
                        mysqli_query($conn,$sqlU88);

                        $sqlD = "delete from $pageSelect where id = '$id'";
						mysqli_query($conn,$sqlD);
						

                        header('Location: ds_cho.php');
                    }
                    $j++;
                }
			}
		}
		?>
    <!-- </div> -->
		
	<?php include 'bottom_page1.php' ?>
	<!-- note: dang ky thanh công cứ đẩy vào table page đó nhưng active = 0, admin sẽ xét những t.k có active = 0. accept -> active = 1, ngc lại xóa khỏi table luôn -->