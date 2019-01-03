<?php include 'top_page.php' ?>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Chọn nhiều Page</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/chosen.min.css">

    <script src="css/jquery-3.2.1.min.js"></script>
    <script src="css/chosen.jquery.min.js"></script>
</head>
	<?php 	
	 $_SESSION['cuUrl'] = (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] === 'on' ? "https" : "http") . "://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]";
			if(isset($depot)){				// lấy key của phần tử cuối cùng
				foreach($depot as &$value){
					if(isset($value)){
						if(isset($_SESSION['login'])&&$value['userName']==$_SESSION['login']){
							$checkStatus =	"exist";
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
			if(isset($_POST['DelAll'])){		// delete all session
				session_destroy();
				header('Location: info.php');
			}
			
			$k = 0;
			$arrError = array();
			$tmp = 0;
			if(isset($_POST['upage'])){
				if($_POST['page']!="")
					$page = implode(",",$_POST['page']);   
				if(isset($page)&&$pages!="")
					$n_pages =$page.",". $pages;
				else if(isset($page)&&$pages=="")
					$n_pages =$page;
				if(isset($n_pages)){
					$sqlU = "update users set page = n'$n_pages'  where userName = '$userName'"; 
					mysqli_query($conn, $sqlU);	
					foreach($_POST['page'] as $value){
						$sqlu23 = "insert into $value(name,gender,bthdate,userName,password,email,cre,level,active) values(n'$name',n'$gender','$bthday',n'$userName',n'$passUserCurrent','$email_current',n'$cre_current',1,0)";
						if(mysqli_query($conn, $sqlu23)){}
						else    
							echo "insert fail"."<br>". mysqli_error($conn);
						}
				}
				header('Location: info.php');
			}
			if(isset($_POST['update'])){
					foreach($depot as &$value){			// cập nhập lại session đã sửa
						if(isset($value)){
							if($value['userName']==$_SESSION['login']){	
								        
								$newName = "newName".$k;
								$newEmail = "newEmail".$k;
								// $userName = "userName".$k;
								$newGender = "newGender".$k;
								$newBthday = "newBthday".$k;
								$newCre = "newCre".$k;
								// $newStk = "newStk".$k;
								// $newSothe = "newSothe".$k;
								// $newTengd = "newTengd".$k;
								// $newNganhang = "newNganhang".$k;
								// $newCn = "newCn".$k;

								$id = $value['id'];
								if (preg_match('/[0-9]+/', $_POST[$newName])) {	// kiem tra name có toàn chữ ko?
									$error1 = 'Tên không thể chứa số !';
									$n_name = $value['name'];
									array_push($arrError, 0);
								} else {
									$n_name = trim($_POST[$newName]);
									array_push($arrError, 1);
								}

								// if (preg_match('/^[0-9]{9,12}$/',$_POST[$newEmail])){	
								// 	$n_phone = trim($_POST[$newEmail]);
								// 	array_push($arrError, 1);
								// }
								// else{
								// 	$error2 = 'invalid email number';
								// 	$n_name = $value['email'];
								// 	array_push($arrError, 0);
								// }
								if (preg_match('/^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,})$/i', $_POST[$newEmail])){		// kiem tra dinh dang email?
									array_push($arrError, 1);
									$n_email = trim($_POST[$newEmail]);
								}
								else{
									$error2 = 'Email không hợp lệ !';
									array_push($arrError, 0);			
								}
								// $newStk = "newStk".$k;
								// $newSothe = "newSothe".$k;
								// $newTengd = "newTengd".$k;
								// $newNganhang = "newNganhang".$k;
								// $newCn = "newCn".$k;
								$n_cre = $_POST[$newCre];
								$n_gender = $_POST[$newGender];
								$n_birthdate = $_POST[$newBthday];
								
								// $n_sotk = $_POST[$newStk];
								// $n_sothe = $_POST[$newSothe];
								// $n_tengd = $_POST[$newTengd];
								// $n_nganhang = $_POST[$newNganhang];
								// $n_cn = $_POST[$newCn];
								
									$sqlU = "update users set name = '$n_name',email = '$n_email',gender = '$n_gender',bthdate = '$n_birthdate', cre = n'$n_cre' where id = '$id'"; 
									mysqli_query($conn, $sqlU);	
								
							}
					}
					$k++;		
				}
			}		
			?>
			<script type="text/javascript">
			$(document).ready(function(){
				$(".btnSua").click(function(){
					$("input").removeAttr('disabled');
					$("select").removeAttr('disabled');
					$(".userName").attr("disabled", true);
					$(".btnUpdate").css('background-color','green');
					$(".btnUpdate").css('color','#fff');					
					$(".select").css('background-color','#fff');
					$('#ip-name').focus();
				});	
			});

		</script>
				
                    <p id = "title-login">Thông tin tài khoản</p>
		<form method="post" action = "info.php" class="form-horizontal" role="form">
		<?php 
			if(isset($depot)){
				
					$i = 0;
					foreach($depot as &$value){	
						$delete = "dell".$i;	
						$logOut = "logOut".$i;						
						if($value['userName']==$_SESSION['login']) {
							if(isset($value['name']))
								$name = $value['name'];
							else 
								$name = "";
							if(isset($value['email']))
								$email = $value['email'];
							else 
								$email = "";
							if(isset($value['userName']))
								$userName = $value['userName'];
							else 
								$userName = "";
							if(isset($value['gender']))
								$gender = $value['gender'];
							else 
								$gender = "";
							if(isset($value['bthdate']))
								$bd = date('Y-m-d',strtotime($value['bthdate']));	
							else 
								$bd = "";

							if(isset($value['name']))
								$name = $value['name'];
							else 
								$name = "";

							// if(isset($value['so_tk']))
							// 	$sotk = $value['so_tk'];
							// else 
							// 	$sotk = "";

							// if(isset($value['so_in_tren_the']))
							// 	$so_the = $value['so_in_tren_the'];
							// else 
							// 	$so_the = "";

							// if(isset($value['ten']))
							// 	$ten_gd = $value['ten'];
							// else 
							// 	$ten_gd = "";

							// if(isset($value['ngan_hang']))
							// 	$nh = $value['ngan_hang'];
							// else 
							// 	$nh = "";

							// if(isset($value['chi_nhanh']))
							// 	$cnhanh = $value['chi_nhanh'];
							// else 
							// 	$cnhanh = "";

							if(isset($value['page']))
								$page_user = $value['page'];
							else 
								$page_user = "";
							
							if(isset($value['cre']))
								$cre_user = $value['cre'];
							else 
								$cre_user = "";
							 echo "
							 <div class = 'form-group'>
                            <label for='inputPassword3' class='col-sm-2 control-label title-info'>Họ và tên</label>
							 <div class='col-sm-9'><input id = 'ip-name' class = 'input-info' type = 'text' name = 'newName".$i."' value = '".$name."' disabled required /></div></div>";
							 echo "
							 <div class = 'form-group'>
							                             <label for='inputPassword3' class='col-sm-2 control-label title-info'>#Cre</label>
							 <div class='col-sm-9'><input id = 'ip-cre' class = 'input-info' type = 'text' name = 'newCre".$i."' value = '".$cre_user."' disabled required /></div></div>";
		 					echo "
		 					<div class = 'form-group'>
		 					                            <label for='inputPassword3' class='col-sm-2 control-label title-info'>Email</label>

		 					<div class='col-sm-9'><input class = 'input-info' type = 'text' name = 'newEmail".$i."' value = '".$email."' disabled required /></div></div>";
		 					echo "
		 					<div class = 'form-group'>
		 					                            <label for='inputPassword3' class='col-sm-2 control-label title-info'>Tài khoản</label>

		 					<div class='col-sm-9'><input class = 'input-info userName' type = 'text' name = 'userName".$i."' value = '".$userName."' disabled required /></div></div>";
							echo "
							<div class = 'form-group'>
							 <label for='inputPassword3' class='col-sm-2 control-label title-info'>Giới tính</label>
							<div class='col-sm-9'><select style = ' border-radius: 5px;   width: 88px;' class = 'input-info select' name = 'newGender$i' disabled> 
							 <option value='Nam'";
							 if($gender == 'Nam' ){
							 	echo "selected";
							 } 
							 echo ">Nam</option>
							 <option value='Nữ'";
							 if($gender == 'Nữ' )
							 	echo "selected";
							 echo ">Nữ</option>
							 <option value='Khác'";
							 if($gender == 'Khác' ){
							 	echo "selected";
							 } 
							 echo ">Bống</option>
							 </select></div></div>";
							 echo "
							 <div class = 'form-group'>
							                             <label for='inputPassword3' class='col-sm-2 control-label title-info'>Ngày sinh</label>

							 <div class='col-sm-9'><input class = 'input-info ' type = 'date' min='1945-01-01' max = '2018-05-08' name = 'newBthday".$i."' value = '".$bd."' disabled required /></div></div>";
							 echo "
							 <div class = 'form-group'>
							 <label for='inputPassword3' class='col-sm-2 control-label title-info'>Page của bạn:</label>";

							 $user_page=explode(',', $page_user);
							 //echo "<pre>";
							 //print_r($user_page);
							 //echo "</pre>";
						        echo " <div class='col-sm-9'>";
    							 foreach($user_page as $value){
    								switch ($value) {
    								    case "1phut_7929766":
                                            $tmp = "1 Phút - Boss|Hồng Gấm(Dzú)";
                                            break;
                                        case "Alone_1054436":
                                            $tmp = "ALONE – Boss|Phạm Ngọc Nhi";
                                            break;
        								case "blogcuaban":
    										 $tmp = "Blog Của Bạn - Boss|Tường Vy(Na)";
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
    								echo $tmp."<br>";
    							 }
							 
							 echo "<br>";
							//  if(strpos($page_user,'yeu'))
							//  	echo "no";
							//  if(!strpos($page_user,'w'))
							//  echo "false";
							//  var_dump($page_user);
	
							echo "</div></div>";
							 echo "
							  <div class = 'form-group'>

							 <label for='inputPassword3' class='col-sm-2 control-label title-info '>Cập nhật Page</label>
							 <div class='col-sm-9'><br>Chọn Page > 'Cập nhật XONG'

								 <select  onchange='genderChanged(this)' data-placeholder='Nhập tên Page để tìm kiếm' multiple class='form-control chosen-select' id='sel2' name='page[]' >";
								if(in_array('1phut_7929766',$user_page)==0)
									echo "<option value='1phut_7929766'>1 Phút - Boss|Hồng Gấm(Dzú)</option>";
								if(in_array('Alone_1054436',$user_page)==0)
                                    echo "<option value='Alone_1054436'>ALONE – Boss|Phạm Ngọc Nhi </option>";
								if(in_array('blogcuaban',$user_page)==0)
									echo "<option value='blogcuaban'>Blog của bạn - Boss|Tường Vy(Na)</option>";
								if(in_array('buonvl',$user_page)==0)
									echo "<option value='buonvl'>Buồn VL - Boss|Ngọc Minh Châu(Bò)</option>";
								if(in_array('CanhCutCorp_8313069',$user_page)==0)
									echo "<option value='CanhCutCorp_8313069'>Cánh Cụt Corp - Boss|Trương Văn Đăng</option>";
							    if(in_array('DeepCrush_1249406',$user_page)==0)
									echo "<option value='DeepCrush_1249406'>D e e p C r u s h - Boss|Trương Văn Đăng</option>";
								if(in_array('droll_2659058',$user_page)==0)
                                    echo "<option value='droll_2659058'>Droll.</option>";
                                if(in_array('deeplove_1683934',$user_page)==0)
                                    echo "<option value='deeplove_1683934'>Deep Love - Boss|Hường</option>";
								if(in_array('Him_1212386',$user_page)==0)
									echo "<option value='Him_1212386'>Him. - Boss|Trương Văn Đăng</option>";
								if(in_array('imfine_855939',$user_page)==0)
                                    echo "<option value='imfine_855939'>I’m Fine - Boss|Chu Dương</option>";
                                if(in_array('kingquotes_590064',$user_page)==0)
                                    echo "<option value='kingquotes_590064'>King Quotes - Boss|Jen Chan</option>";
								if(in_array('ethanhxuan',$user_page)==0)
									echo "<option value='ethanhxuan'>L o v e S t r a n g e r - Boss|Jen Chan(Jen)</option>";
								if(in_array('mua',$user_page)==0)
									echo "<option value='mua'>Mưa+ - Boss|Nam Dương(Rey)</option>";
								if(in_array('Moclan_5743338',$user_page)==0)
									echo "<option value='Moclan_5743338'>Mộc Lan - Boss|Ngô Yến Như(Bèo)</option>";
								if(in_array('quotemanhyy',$user_page)==0)
									echo "<option value='quotemanhyy'>Quote Mẫn Hyy</option>";
								if(in_array('say',$user_page)==0)
									echo "<option value='say'>Say. - Boss|Jen Chan(Jen)</option>";
								if(in_array('sadlove',$user_page)==0)
									echo "<option value='sadlove'>Sad Love - Boss|Nam Dương(Rey)</option>";
								if(in_array('saohanquoc',$user_page)==0)
									echo "<option value='saohanquoc'>SAO HÀN QUỐC</option>";
								if(in_array('StayHigh_8605376',$user_page)==0)
									echo "<option value='StayHigh_8605376'>Stay High. - Boss|Trương Văn Đăng</option>";
								if(in_array('Sttngan_1120958',$user_page)==0)
									echo "<option value='Sttngan_1120958'>Stt Ngắn - Boss|Ngô Yến Như(Bèo)</option>";
								if(in_array('Trash_3730792',$user_page)==0)
									echo "<option value='Trash_3730792'>Trash . - Boss|Trương Văn Đăng</option>";
								if(in_array('thathinh',$user_page)==0)
									echo "<option value='thathinh'>Thả Thính - Boss|Tường Vy(Na)</option>";
								if(in_array('tothichcau_5432446',$user_page)==0)
                                    echo "<option value='tothichcau_5432446'>Tớ Thích Cậu – Boss|Nguyễn Hoàng Ngân Hà</option>";
								if(in_array('viet_9758669',$user_page)==0)
									echo "<option value='viet_9758669'>Viết - Boss|Nguyễn Hoàng Ngân Hà(Mĩm)</option>";
								if(in_array('Vui24_278960',$user_page)==0)
                                    echo "<option value='Vui24_278960'>Vui 24 - Boss|Quang NguyenVan</option>";
							    if(in_array('xamxi_6062147',$user_page)==0)
                                    echo "<option value='xamxi_6062147'>Xàm Xí – Boss|Jen Chan</option>";
								if(in_array('yeu',$user_page)==0)
									echo "<option value='yeu'>Yêu+ - Boss|Hồng Gấm(Dzú)</option>";
								if(in_array('yeu_4135287',$user_page)==0)
									echo "<option value='yeu_4135287'>Yêu+ - Boss|Hiền Hoàng(Wind)</option>";
									else{}
								
									 
							echo "</select>";
							echo '<input  class = "btnUpage" type = "submit" name = "upage" value = "Cập nhật Xong">';
							echo "</div></div>";		 
							?>
							<p style="color: green;margin-top: 5px;    text-align: center;" id="show_message"></p>

                			<script>
                				function genderChanged(obj)
                				{
                					var message = document.getElementById('show_message');
                					var value = obj.value;
                					if (value === ''){
                						message.innerHTML = "Bạn chưa chọn Page";
                					}
                					else {
                						message.innerHTML = "Bạn đã chọn Page, yêu cầu gia nhập Page khi thực hiện sẽ phải chờ BOSS phê duyệt! ";
                					}
                					
                				}
                			</script>
                			<script>
                                $(".chosen-select").chosen({
                                    allow_single_deselect: true,
                                    width: '100%',
                                    no_results_text: "Không có vì Boss chưa đăng ký sử dụng - "
                                });
                            </script>
							<?php 
							 //echo "";
							
							//  echo "<hr>";

							//  echo "<span class = 'span-info'>Số tài khoản: </span> <input id = 'ip-sotk' class = 'input-info' type = 'text' name = 'newStk".$i."' value = '".$sotk."' disabled  />"."<br>";
							//  echo "<span class = 'span-info'>Số in trên thẻ: </span> <input id = 'ip-sothe' class = 'input-info' type = 'text' name = 'newSothe".$i."' value = '".$so_the."' disabled  />"."<br>";
							//  echo "<span class = 'span-info'>Tên: </span> <input id = 'ip-tengd' class = 'input-info' type = 'text' name = 'newTengd".$i."' value = '".$ten_gd."' disabled  />"."<br>";
							//  echo "<span class = 'span-info'>Ngân hàng: </span> <input id = 'ip-nganhang' class = 'input-info' type = 'text' name = 'newNganhang".$i."' value = '".$nh."' disabled  />"."<br>";
							//  echo "<span class = 'span-info'>Chi nhánh: </span> <input id = 'ip-cn' class = 'input-info' type = 'text' name = 'newCn".$i."' value = '".$cnhanh."' disabled  />"."<br>";
						}
					
						if(isset($_POST[$logOut])){
							unset($_SESSION['login']);
						 header('Location: info.php');
						}
						$i++;
					}

				}
				else 
					echo "<h1> Danh sách đăng ký rỗng</h1>";
			echo '</table>';
		?><br>
       <a href = "dangky_tknh.php" style = "color: green;">☞ Cập nhật thông tin tài khoản ngân hàng.</a>
		<?php 
			
			if(isset($_POST['update'])){
				if(isset($error1)||isset($error2))
					echo "<p class = 'error'>Cập nhật thất bại!<br></p>";
				else if(!isset($error1)&& !isset($error2))
					echo "<p class = 'success'>Cập nhật thành công!<br></p>";
				if(isset($error1))
					echo "<p class = 'error2'>Tên không hợp lệ</p>";
				if(isset($error2))
					echo "<p class = 'error2'>Số điện thoại không hợp lệ</p>";
			}
			if(sizeof($arrError)!= 0 && in_array(0, $arrError)==0){
				header('Location: info.php');
			}
		?>

		<div class = "col-xs-12 col-md-12 box-btnUpdate">
			<input  class = "btnUpdate" type = "submit" name = "update" value = "Cập nhật thông tin" disabled>
		</div>
		
	</form>
	<div style="padding-left: 0px;" class = "col-xs-12 col-md-12 box-btnSua">
		<button class = "btnSua">Chỉnh sửa</button>
	</div>
	<?php include 'bottom_page.php' ?>