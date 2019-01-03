<?php include 'top_page1.php' ?>
    <?php 
        // Xử lý đăng nhập của admin
			if(isset($depot)){				    
				foreach($depot as &$value){
				if(isset($value)){
					if(isset($_SESSION['login'])&&$value['userName']==$_SESSION['login']&&$value['level']==3){
						$name = $value['name'];
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
			header('Location: ../login.php');

    ?>
        <script type="text/javascript">
			$(document).ready(function(){
				$(".btnSua-panel").click(function(){
					$("input").removeAttr('disabled');
					$(".userName").attr("disabled", true);
					$("select").removeAttr('disabled');
					$(".btnUpdate-panel").css('background-color','green');
					$(".select-panel").css('background-color','#fff');
					$('form:first *:input[type!=hidden]:first').focus();
				});	
				$(".del-panel").click(function(){
					var r = confirm("Bạn có chắc chắn muốn xóa!");
					if(r==false){
						return false;
					}
				});
				
				// $(".del-panel").click(function(){
				// 	var r = confirm("Bạn có chắc chắn muốn xóa 2!");
				// 	if(r==false){
				// 		return false;
				// 	}
				// });
				
				$(".btnHetHan-panel").click(function(){
					var r = confirm("Bạn có chắc chắn!");
					if(r==false){
						return false;
					}
				});
			});

        </script>
        <form method = 'post'>
	<select name='selectPage'>
			<option value = "users">Tất cả</option>
			<option value = "1phut_7929766">1 Phút - Boss|Hồng Gấm(Dzú)</option>
			<option value = "Alone_1054436">ALONE – Boss|Phạm Ngọc Nhi </option>
			<option value = "blogcuaban">Blog của bạn - Boss|Tường Vy(Na)</option>
			<option value = "buonvl">Buồn VL - Boss|Ngọc Minh Châu(Bò)</option>
			<option value = "CanhCutCorp_8313069">Cánh Cụt Corp - Boss|Trương Văn Đăng</option>
            <option value = "DeepCrush_1249406">D e e p C r u s h - Boss|Trương Văn Đăng</option>
            <option value = "droll_2659058">Droll.</option>
            <option value = "deeplove_1683934">Deep Love - Boss|Hường</option>
            <option value = "Him_1212386">Him. - Boss|Trương Văn Đăng</option>
            <option value = "imfine_855939">I’m Fine – Boss|Chu Dương</option>
            <option value = "kingquotes_590064">King Quotes - Boss|Jen Chan</option>
			<option value = "ethanhxuan">L o v e S t r a n g e r  - Boss|Jen Chan(Jen)</option>
			<option value = "mua">Mưa+ - Boss|Nam Dương(Rey)</option>
			<option value = "Moclan_5743338">MộcLan - Boss|Ngô Yến Như(Bèo)</option>
			<option value = "quotemanhyy">Quote Mẫn Hyy</option>
			<option value = "say">Say. - Boss|Jen Chan(Jen)</option>
			<option value = "sadlove">Sad Love - Boss|Nam Dương(Rey)</option>
			<option value = "StayHigh_8605376">Stay High. - Boss|Trương Văn Đăng</option>
        	<option value = "Trash_3730792">Trash . - Boss|Trương Văn Đăng</option>
			<option value = "saohanquoc">SAO HÀN QUỐC</option>
			<option value = "Sttngan_1120958">Stt Ngắn - Boss|Ngô Yến Như(Bèo)</option>
			<option value = "thathinh">Thả Thính - Boss|Tường Vy(Na)</option>
			<option value = "tothichcau_5432446">Tớ Thích Cậu – Boss|Nguyễn Hoàng Ngân Hà</option>
			<option value = "viet_9758669">Viết - Boss|Nguyễn Hoàng Ngân Hà(Mĩm)</option>
			<option value = "Vui24_278960">Vui 24 - Boss|Quang NguyenVan</option>
			<option value = "xamxi_6062147">Xàm Xí – Boss|Jen Chan</option>
			<option value = "yeu">Yêu+ - Boss|Hồng Gấm(Dzú)</option>
			<option value = "yeu_4135287">Yêu+ - Boss|Hiền Hoàng(Wind)</option>
			
			<input type = 'submit' name = 'xacnhan' value = 'Xác nhận'>
	</select>
</form>

<div>
     <h4>Tìm kiếm </h4>
    <form name="timkiem" action="" method="post">
    <input type="text" name="user" value="" size="25px" placeholder="Nhập từ khóa để tìm kiếm..........."/>
    <input type="submit" name="search" value="Tìm Kiếm"  />
    </form>
</div>
<?php 
	if(isset($_POST['search'])){
		if(isset($_SESSION['pageSelect']))
				$pageSelect = $_SESSION['pageSelect'];	
		$_SESSION['ustmp']=$_POST['user'];
		 $user=$_SESSION['ustmp'];

		$sql3="select * from $pageSelect where ((name LIKE n'%$user%' )or( userName LIKE '%$user%') or ( gender LIKE '%$user%') or ( email LIKE '%$user%') or ( cre LIKE '%$user%'))";
		$result2 = mysqli_query($conn, $sql3);
		while ($row2 = mysqli_fetch_assoc($result2)){
			$arrUserPage[$row2['userName']] = $row2;
		}
		$_SESSION['utmp'] = $arrUserPage;
	}

?>
        <?php 
        if (isset($_POST['xacnhan'])){
            unset($_SESSION['utmp']);
            $_SESSION['pageSelect'] = $_POST['selectPage']; // luu ten page dc chon vao bien ss để sử dụng ở dưới
            
         // echo "<pre>";
         // print_r($arrUserPage);
         // echo "</pre>";
         }
        // PHẦN XỬ LÝ PHP
        // BƯỚC 1: KẾT NỐI CSDL
        $pageSelect = $_SESSION['pageSelect']; 
      
 
        // BƯỚC 2: TÌM TỔNG SỐ RECORDS
         $sqlpt = "select count(id) as total from $pageSelect";
        $result = mysqli_query($conn, $sqlpt);
        $row = mysqli_fetch_assoc($result);
        $total_records = $row['total'];
 
        // BƯỚC 3: TÌM LIMIT VÀ CURRENT_PAGE
        $current_page = isset($_GET['page']) ? $_GET['page'] : 1;
        $limit = 10;
 
        // BƯỚC 4: TÍNH TOÁN TOTAL_PAGE VÀ START
        // tổng số trang
        $total_page = ceil($total_records / $limit);
 
        // Giới hạn current_page trong khoảng 1 đến total_page
        if ($current_page > $total_page){
            $current_page = $total_page;
        }
        else if ($current_page < 1){
            $current_page = 1;
        }
 
        // Tìm Start
        $start = ($current_page - 1) * $limit;
 
        // BƯỚC 5: TRUY VẤN LẤY DANH SÁCH TIN TỨC
        // Có limit và start rồi thì truy vấn CSDL lấy danh sách tin tức
        // $sqlpt2 = "SELECT * FROM $pageSelect LIMIT $start, $limit";

        $sqlpt2 = "select * from $pageSelect limit $start, $limit";
        $result = mysqli_query($conn, $sqlpt2);
 
        ?>
        <div>

            <?php 
            // PHẦN HIỂN THỊ TIN TỨC
            // BƯỚC 6: HIỂN THỊ DANH SÁCH TIN TỨC
            while ($row = mysqli_fetch_assoc($result)){
                $arrUserPage[$row['userName']] = $row;
			}      
			  	
            ?>
        </div>

        <?php 			
	
			if(isset($_SESSION['pageSelect']))
				$pageSelect = $_SESSION['pageSelect'];	

			$k = 0;
			$arrError = array();
			$tmp = 0;
			if(isset($_POST['update'])){
				if(isset($_SESSION['utmp']))
					$arrUserPage=$_SESSION['utmp'];

				// echo "<pre>";
         		// print_r($arrUserPage);
				//  echo "</pre>";
				//  die();
				else
					while ($row = mysqli_fetch_assoc($result)){
                    $arrUserPage[$row['userName']] = $row;
                	}

					foreach($arrUserPage as &$value){			
						if(isset($value)){
						$newActive ="newActive".$k;
						$newName = "newName".$k;
						$newemail = "newemail".$k;
						$newSoDu = "newSoDu".$k;
						$newPass = "newPass".$k;
						$newGender = "newGender".$k;
						$newBthday = "newBthday".$k;
						$newCre = "newCre".$k;
						$newPage = "newPage".$k;
						$newLevel = "newLevel".$k;
						$id = $value['id'];
						if (preg_match('/[0-9]+/', $_POST[$newName])) {	// kiem tra name có toàn chữ ko?
							$error1 = 'Tên không thể chứa số';
							$n_name = $value['name'];
							array_push($arrError, 0);
						} else {
							$n_name = trim($_POST[$newName]);
							array_push($arrError, 1);
						}

						if (preg_match('/^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,})$/i', $_POST[$newemail])){		// kiem tra dinh dang email?
							array_push($arrError, 1);
							$n_email = trim($_POST[$newemail]);
						}
						else{
							$error2 = 'Email không hợp lệ';
							array_push($arrError, 0);			
						}
						//$n_email = trim($_POST[$newemail]);
                        // $n_userName = trim($_POST[$newUser]);
                        if(isset($_POST[$newCre]))                       
                            $n_cre = trim($_POST[$newCre]);
                        if(isset($_POST[$newPage]))    
                            $n_page = trim($_POST[$newPage]);
                        if(isset($_POST[$newPass]))                 
                            $n_password = trim($_POST[$newPass]);
                        if(isset($_POST[$newGender]))                      
                            $n_gender = $_POST[$newGender];
                        if(isset($_POST[$newBthday]))           
                            $n_birthdate = $_POST[$newBthday];
                        if(isset($_POST[$newSoDu]))
                            $n_soDu = $_POST[$newSoDu];
                        if(isset($_POST[$newLevel]))
                            $n_lv = $_POST[$newLevel];	
                        if(isset($_POST[$newActive]))
						    $n_active = $_POST[$newActive];	
						if($pageSelect=="users"){
							$sqlU = "update $pageSelect set name = n'$n_name',email = n'$n_email',gender = n'$n_gender',bthdate = '$n_birthdate',password = n'$n_password',sodu = '$n_soDu', cre = n'$n_cre', page = n'$n_page' where id = '$id'"; 
							if(mysqli_query($conn, $sqlU)){
							}
									else    
										echo "insert fail"."<br>". mysqli_error();
									
							
						}
						else{
							$sqlU = "update $pageSelect set name = n'$n_name',email = n'$n_email',gender = n'$n_gender',bthdate = '$n_birthdate', cre = n'$n_cre', level =$n_lv, active = $n_active  where id = '$id'"; 
							mysqli_query($conn, $sqlU);
						}

					}
					$k++;		
				}

			}

			if(isset($_POST['hethan'])){                // xét hết hạn
				$sqlUAc = "update $pageSelect set active = 0"; 
				mysqli_query($conn, $sqlUAc);

				$sqlUlv = "update $pageSelect set level = 1"; 
                mysqli_query($conn, $sqlUlv);
                header("Location: index.php?page=$current_page");

			}
			if(isset($_POST['giahan'])){				// xét gia hạn
				$sqlUAc = "update $pageSelect set active = 1"; 
				mysqli_query($conn, $sqlUAc);
                header("Location: index.php?page=$current_page");

			}
			?>
        <form method="post" action = "#"  class = "form-panel">
			
		<?php 
		if(isset($_SESSION['pageSelect'])){
			switch ($_SESSION['pageSelect']) {
                                        case "users":
                                            $tmpSS = "Tất cả";
                                        break;
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
    										$tmpSS = "Mưa+ - Boss|Ngô Yến Như(Bèo)";
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
				default:                 
				        $tmp = "Chưa có or Đang xét duyệt";
				        break;
				}
                echo "<p style = 'font-size: 25px;color: green;margin-top: 25px;'>Thành viên Page - $tmpSS</p>";
				echo "<p style = 'font-size: 18px;color: green;margin-top: 25px;'>Trang số: $current_page</p>";
                
		}
		 ob_start();
			$stt = 0;
			if(isset($arrUserPage)){
				if(isset($_SESSION['utmp']))
					$arrUserPage=$_SESSION['utmp'];
				//  echo $last_Key;
				// echo "<pre>";
				// print_r($arrUserPage);
				// echo "</pre>";	
				$coutSS = count($arrUserPage);
				echo '<table class = "table">
					<tr>
						<th>STT</th>
						<th>Họ và Tên</th>
						<th>#Cre</th>
						<th>Tài khoản</th>';
						if($pageSelect=='users')
						echo '<th>Mật khẩu</th>';
						 echo '<th>Email</th>';
				        echo '<th>Giới tính</th>';
				       
						echo '<th>Ngày sinh</th>';
						
						if($pageSelect=='users')
							echo '<th>Số tiền</th>';
						if($pageSelect=='users')		
							echo	'<th>Page</th>';
						if($pageSelect!='users')
							echo	'<th>Level</th>';
						if($pageSelect!='users')
							echo	'<th>Active</th>';
						echo '</tr>';
					$i = 0;
					foreach($arrUserPage as &$value){	
							$delete = "dell".$i;												
							$stt++;
							if(isset($value['name']))
								$name = $value['name'];
							else 
								$name = "";
							if(isset($value['active']))
								$active_u = $value['active'];
							else 
								$active_u = "";
							if(isset($value['cre']))
								$cre_user = $value['cre'];
							else 
								$cre_user = "";

							if(isset($value['page']))
								$page_u = $value['page'];
							else 
								$page_u = "";

							if(isset($value['email']))
								$email = $value['email'];
							else 
								$email = "";
							if(isset($value['userName']))
								$userName = $value['userName'];
							else 
								$userName = "";
							if(isset($value['password']))
								$password = $value['password'];
							else 
								$password = "";
							if(isset($value['gender']))
								$gender = $value['gender'];
							else 
								$gender = "";
							if(isset($value['bthdate']))
							{
								$bd = date('Y-m-d',strtotime($value['bthdate']));
							}
							else 
								$bd = "";
							if(isset($value['sodu']))
							{
								$sd = $value['sodu'];
							}
							else 
								$sd = "";
							
							if(isset($value['level']))
							{
								$level_u = $value['level'];
							}
							else 
								$level_u = "";
							echo '<tr>';
							echo "<td>$stt</td>";							
		 					echo "<td><input class = 'inputs-panel' type = 'text' name = 'newName".$i."' value = '".$name."' disabled required/></td>";
		 					echo "<td><input class = 'inputs-panel' type = 'text' name = 'newCre".$i."' value = '".$cre_user."' disabled /></td>";
							 echo "<td><input class = 'inputs-panel userName' style = 'width: 135px;' type = 'text' name = 'newUser".$i."' value = '".$userName."' disabled required/></td>";
							 if($pageSelect=='users')
							 echo "<td><input class = 'inputs-panel' style = 'width: 135px;' type = 'text' name = 'newPass".$i."' value = '".$password."' disabled required/></td>";
							 echo "<td><input class = 'inputs-panel' type = 'text' name = 'newemail".$i."' value = '".$email."' disabled required/></td>";
							echo "<td><select class = 'inputs-panel select-panel' name = 'newGender$i' disabled> 
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
							 echo ">Khác</option>
							 </select></td>";
							 echo "<td><input class = 'inputs-panel date-panel' type = 'date' name = 'newBthday".$i."' value = '".$bd."' min='1945-01-01' max = '2018-05-08' disabled required/></td>";
							 if($pageSelect=='users')
							 echo "<td><input style = 'width: 120px;' class = 'inputs-panel ' type = 'number' name = 'newSoDu".$i."' value = '".$sd."' disabled required/></td>";
							 if($pageSelect=='users')
							 echo "<td><input class = 'inputs-panel' type = 'text' name = 'newPage".$i."' value = '".$page_u."' disabled /></td>";
							 if($pageSelect!='users')
							 echo "<td><input class = 'inputs-panel' type = 'number' name = 'newLevel".$i."' value = '".$level_u."' disabled /></td>";
							 if($pageSelect!='users')
							 echo "<td><input class = 'inputs-panel' type = 'number' name = 'newActive".$i."' value = '".$active_u."' disabled /></td>";
							echo "<td><input class = 'inputs-panel del-panel' type = 'submit' name = 'dell".$i."' value = 'Xóa' >";
							echo '</tr>';
							$i++;
					}
				}
				
				// else 
				// 	echo "<h1> Danh sách đăng ký rỗng</h1>";
				$connn = mysqli_connect('localhost','axunlifohosting_tai','taikuteyh1','axunlifohosting_tai2');
				// $connn = mysqli_connect('localhost','root','','axunlifohosting_dbtai');


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

				    foreach($depot2 as $value9999){				
    				    if($user_cho==$value9999['userName']){
    						$page_user_cho = $value9999['page'];
    				    }
			        }
					if(isset($_POST[$delete])){
					    
					    $result = str_replace($pageSelect, '', $page_user_cho);// ko dong y thi xoa ten page nay trong truờng page của users
	                   // var_dump($result);
	                   // die();
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
					    
						$sqlDu = "delete from $pageSelect where id = '$id'";
						mysqli_query($conn,$sqlDu);
						unset($_SESSION['utmp']);

						header("Location: index.php?page=$current_page");
					}
					$j++;
				}
			}
		?>
    </div>
		<?php 
			if(isset($_POST['update'])){
				if(isset($error1)||isset($error2))
					echo "<p class = 'error-panel'>Cập nhật thất bại!<br></p>";
				else if(!isset($error1)&& !isset($error2))
					echo "<p class = 'success-panel'>Cập nhật thành công!<br></p>";
				if(isset($error1))
					echo "<p class = 'error2'>Tên không hợp lệ</p>";
				if(isset($error2))
					echo "<p class = 'error2'>Email không hợp lệ</p>";
			}
				
			if(sizeof($arrError)!= 0 && in_array(0, $arrError)==0){
				// cập nhật lại biên ss utmp
				if(isset($_SESSION['pageSelect']))
				$pageSelect = $_SESSION['pageSelect'];	
					$user=$_SESSION['ustmp'];

					$sql3="select * from $pageSelect where ((name LIKE n'%$user%' )or( userName LIKE '%$user%') or ( gender LIKE '%$user%') or ( email LIKE '%$user%') or ( cre LIKE '%$user%'))";
					$result2 = mysqli_query($conn, $sql3);
					while ($row2 = mysqli_fetch_assoc($result2)){
						$arrUserPage[$row2['userName']] = $row2;
					}
					$_SESSION['utmp'] = $arrUserPage;
					header("Location: index.php?page=$current_page");

				}
				if($pageSelect!='users'){
					echo '<input  class = "btnHetHan-panel inputs-panel" type = "submit" name = "hethan" value = "Xét hết hạn" >';
					echo '<input style = "background: #07756E" class = "btnHetHan-panel inputs-panel" type = "submit" name = "giahan" value = "Xét gia hạn" >';
				}
		?>
        <div style =  "padding: 0px;" class = "col-md-12 col-xs-12">
		<div style="width: auto;padding: 0px;" class = "col-xs-4 col-md-1">
			<input  class = "btnUpdate-panel inputs-panel" type = "submit" name = "update" value = "Cập nhật" disabled>
		</div>
		
    </form>
    <div style="padding: 0px;" class = "col-xs-4 col-md-1">
		<button class = "btnSua-panel">Chỉnh sửa</button>
	</div>
	
</div>
</div>

	
    <div style = "text-align: right;">
        <ul class="pagination modal-2">
           <?php 
            // PHẦN HIỂN THỊ PHÂN TRANG
            // BƯỚC 7: HIỂN THỊ PHÂN TRANG
 
            // nếu current_page > 1 và total_page > 1 mới hiển thị nút prev
            if ($current_page > 1 && $total_page > 1){

                echo '<li><a href="index.php?page='.($current_page-1).'" class="prev">&laquo </a></li> ';
            }
 
            // Lặp khoảng giữa
            for ($i = 1; $i <= $total_page; $i++){
                // Nếu là trang hiện tại thì hiển thị thẻ span
                // ngược lại hiển thị thẻ a
                if ($i == $current_page){
                    echo "<li> <a class='active' href='index.php?page=$i'>$i</a></li>";
                }
                else{

                    echo "<li> <a href='index.php?page=$i'>$i</a></li>";
                }
            }
 
            // nếu current_page < $total_page và total_page > 1 mới hiển thị nút prev
            if ($current_page < $total_page && $total_page > 1){
                $cu2 = $current_page+1;
                echo "<li><a href='index.php?page=$cu2' class='next'>&raquo </a></li> ";
            }
           ?>
        </ul>
    </div>
    
           <?php include '../bottom_page1.php' ?>  
