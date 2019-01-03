<?php include 'top_page.php' ?>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Chọn nhiều Page</title>
    <link rel="stylesheet" href="css/chosen.min.css">

    <script src="css/chosen.jquery.min.js"></script>
</head>
		<?php
		
		$sql2 = "select * from users";
		$s = mysqli_query($conn,$sql2);
		
		if(mysqli_num_rows($s)>0)
			{
				while($row = mysqli_fetch_assoc($s)){
					$arrUser[$row['userName']] = $row;
				}	
			}

			$arrError = array();
			$tmp = 0;
    
			if(isset($_POST['sub'])){	
				
				// echo "<pre>";
				// print_r($_POST['page']);
				// echo "</pre>";
				// foreach($_POST['page'] as $value){
				// 	echo $value . " ";
				// }
				// die();       
			    foreach($arrUser as &$value){                   	// kiem tra trùng email
			        if(trim($_POST['email'])==$value['email']){
			            array_push($arrError, 0);
						$error6 = "Email này đã được đăng ký !";
			        }
			        else
			            array_push($arrError, 1);
			    }
			    if($_POST['apassword']!=$_POST['password']){		// kiem tra nhap lai mat khau
					array_push($arrError, 0);
					$error7 = 'Nhập lại mật khẩu không đúng. ';  
				}
				else
					array_push($arrError, 1);
				if($_POST['amkc2']!=$_POST['mkc2']){		// kiem tra nhap lai mat khau c2
					array_push($arrError, 0);
					$error8 = '<p class = "error">Nhập lại mật khẩu cấp 2 không đúng. </p>';  
				}
				else
					array_push($arrError, 1);
				if (preg_match('/[0-9]+/',$_POST['name'])) {	// kiem tra name có toàn chữ ko?
					array_push($arrError, 0);
						$error1 = 'Tên không thể chứa số !';  
						
				} else {
 			   		array_push($arrError, 1); 		 
				}
				if(isset($arrUser)){
					if(array_key_exists($_POST['user'],$arrUser)==1){	// kiem tra trùng tai khoan 
						array_push($arrError, 0);
						$error4 = "Tên tài khoản đã tồn tại !";
					}
				}
				else 
					array_push($arrError, 1);

				if(preg_match('/\s/', $_POST['user'])){			// kiem tra userName co khoang trang ko
					array_push($arrError, 0);					
					$error3 = 'Tên tài khoản không được phép có khoảng trống !';
				}
				else{
					array_push($arrError, 1);				
				}
                if(!preg_match('/^[A-Za-z0-9_\.]{5,32}$/', $_POST['user'])){			// kiem tra userName 
					array_push($arrError, 0);					
					$error5 = 'Tên tài khoản tối thiểu 5 ký tự (Không viết dấu & không khoảng trống).';
				}
				else{
					array_push($arrError, 1);				
				}
			    
			    if(!preg_match('/^[A-Za-z0-9_\.]{4,322}$/', $_POST['password'])){			// kiem tra pass 
					array_push($arrError, 0);					
					$error20 = 'Mật khẩu đăng nhập tối thiểu có 4 ký tự (Không viết dấu & không khoảng trống).';
				}
				else{
					array_push($arrError, 1);				
				}
				
				if(!preg_match('/^[A-Za-z0-9_\.]{6,322}$/', $_POST['mkc2'])){			// kiem tra pass 2
					array_push($arrError, 0);					
					$error21 = 'Mật khẩu cấp 2 tối thiểu có 6 số !';
				}
				else{
					array_push($arrError, 1);				
				}
				
				if (preg_match('/^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,})$/i', trim($_POST['email']))){		// kiem tra dinh dang email?
					array_push($arrError, 1);
				}
				else{
					$error2 = 'Email không hợp lệ, vui lòng nhập chính xác địa chỉ email.';
					array_push($arrError, 0);			
				}
				for($i = 0; $i < count($arrError);$i++){
					if($arrError[$i]==0){
						$tmp = 0;
						break;
					}
					else{
						$tmp = 1;
					}
				}
				if($tmp == 1){
					if(isset($_POST['page']))
						$page = implode(",",$_POST['page']);  
					else
						$page = "";
					$cre = trim($_POST['cre']);
					$name = trim($_POST['name']);
					// $phone = trim($_POST['phone']);
					$email = trim($_POST['email']);
					$gender = $_POST['gender'];
					$bthday = $_POST['bthday'];
					$userName = trim($_POST['user']);
					$password = trim($_POST['password']);	
					$mkc2 = trim($_POST['mkc2']);
					// $arrUser[trim($_POST['user'])] = $arrUser;
					if(isset($_POST['page'])){
						foreach($_POST['page'] as $value){
						$sql = "insert into $value(name,gender,bthdate,userName,password,email,cre,level,active) values(n'$name',n'$gender','$bthday',n'$userName',n'$password','$email',n'$cre',1,0)";
						if(mysqli_query($conn, $sql)){}
						else    
						echo "insert fail"."<br>". mysqli_error($conn);
						}
					}
					$sql5 = "insert into users(name,gender,bthdate,userName,password,email,sodu,cre,page,level,mk2) values(n'$name',n'$gender','$bthday',n'$userName',n'$password','$email',0,n'$cre',n'$page',1,'$mkc2')";
					if(mysqli_query($conn, $sql5)){}
						else    
						echo "insert fail2"."<br>". mysqli_error($conn);
					unset($_POST);

				}
				
			}

		?>	
		
			<div id = "form" class = "">
			<div class = "col-xs-12 col-md-12">
			    	<?php 
						if($tmp == 1)
							echo "<p class = 'success'>+) Đăng ký tài khoản thành công.
							<br>+) Yêu cầu gia nhập Page thì cần chờ admin phê duyệt !</p>";
					?>
                    <p id = "title-login">Đăng ký</p>
                </div>
				<form method = "POST" action = "" class="form-horizontal" role="form">

						<p class = "title-s-form">Thông tin người dùng</p>
						
						
						 <div class = 'form-group'>
						    
						 <label for='inputPassword3' class='col-sm-3 control-label '>Tài khoản:</label>
						<div class='col-sm-9'><input class = "inputs form-control dk" id = "user" type = "text" name = "user" placeholder="Tối thiểu 5 ký tự,không viết dấu & không cách" value = "<?php 
						if(isset($_POST['user']))
						 	echo $_POST['user'];
						else
							echo "";
						?>" required autofocus />
						
						
						<?php
						if(isset($error3))
							echo '<p class = "error">' .$error3.'</p>'; 
						if(isset($error4))
							echo '<p class = "error">' .$error4.'</p>';
						if(isset($error5))
							echo '<p class = "error">' .$error5.'</p>';
						?>
						<div style = "color: red; margin-top: 5px;" id = "error-user"></div>
						<script>
							$("input[name='user']").on("keyup",function(){
								var user = $("input[name='user']").val();
								var euser = $("#error-user");
								// euser.html("");
								$.ajax({									
									url: "xulyuser.php",
									method: "post",
									dataType: "text",
									data:{
										user: user
									},
									success: function(res1){
										res1 = res1.trim();
										// alert(res1);
										if(res1=="1")
											euser.html("Tên tài khoản tối thiểu có 5 ký tự và viết liền không dấu.");
										else if(res1=="2"){
											euser.html("Tài khoản đã tồn tại.");
										}
										else
										    euser.html("");
									}
								});
							});
							
						</script>

						</div>
                        </div>
						<div class = 'form-group'>
						   <label for='inputPassword3' class='col-sm-3 control-label '>Mật khẩu:</label>
						<div class='col-sm-9'><input class = "inputs form-control dk" id = "password" type = "password" name = "password" placeholder="Viết liền không dấu & tối thiểu 4 ký tự" required  />
						
						<?php 
				// 			if(isset($error7)) 
				// 			echo '<p class = "error">' .$error7.'</p>'; 
							if(isset($error20)) 
							echo '<p class = "error">' .$error20.'</p>'; 
						?>
						<div style = "color: red; margin-top: 5px;" id = "error-pass"></div>
						<script>
							$("input[name='password']").on("keyup",function(){
								var pass = $("input[name='password").val();
								var epass = $("#error-pass");
								
								// epass.html("");
								$.ajax({
									url: "xulypass.php",
									method: "post",
									dataType: "text",
									data:{
										pass: pass,
									},
									success: function(res){
										res = res.trim();
										if(res=="0")
											epass.html("Mật khẩu đăng nhập tối thiểu có 4 ký tự và viết liền không dấu.");
										else
										    epass.html("");
									
									}
								});
							});
						</script>
						</div></div>
						<div class = 'form-group'>
						   <label for='inputPassword3' class='col-sm-3 control-label'>Nhập lại mật khẩu:</label>
							<div class='col-sm-9'><input class = "inputs form-control dk" id = "apassword" type = "password" name = "apassword" placeholder="Viết liền không dấu & tối thiểu 4 ký tự" required  />
							
							<?php 
							if(isset($error7)) 
							echo '<p class = "error">' .$error7.'</p>'; 
						?>
						</div></div>
							<div class = 'form-group'>
							 <label for='inputPassword3' class='col-sm-3 control-label '>Mật khẩu cấp 2: </label>
								<div class='col-sm-9'><input class = "inputs form-control dk" name="mkc2" type="number" placeholder="Chỉ được nhập số & tối thiểu 6 số" value= "<?php 
								if(isset($_POST['mkc2']))
								echo $_POST['mkc2'];
								else
								   echo "";
								
								?>" required/>
								
							<?php if(isset($error21)) 
									   echo '<p class = "error">' .$error21.'</p>';?>	
							<div style = "color: red; margin-top: 5px;" id = "error-pass2"></div>		   
							<script>
								$("input[name='mkc2']").on("keyup",function(){
									var pass2 = $("input[name='mkc2']").val();
									var epass2 = $("#error-pass2");
								// 	epass2.html("");
									$.ajax({
										url:"xulypassc2.php",
										method:"post",
										dataType:"text",
										data:{
											pass2:pass2
										},
										success: function(res2){
											res2= res2.trim();
											if(res2=="0"){
												epass2.html("Mật khẩu cấp 2 tối thiểu có 6 số !");
											}
											else
											    epass2.html("");
										}
									});
								});
							</script>

							</div>
						
						</div>
						<div class = 'form-group'>
								<label for='inputPassword3' class='col-sm-3 control-label '>Nhập lại mật khẩu cấp 2: </label>
							<div class='col-sm-9'><input class = "inputs form-control dk" name="amkc2" type="number" placeholder="Chỉ được nhập số & tối thiểu 6 số" value= "<?php 
								if(isset($_POST['amkc2']))
								echo $_POST['amkc2'];
								else
								   echo "";
								
								// 	echo $error8;
								?>" required/>
								<?php if(isset($error8)) 
									echo '<p class = "error">' .$error8.'</p>'; ?></div>
						</div>
							<div class = 'form-group'>
						<label for='inputPassword3' class='col-sm-3 control-label '>Họ và tên: </label>
						<div class='col-sm-9'><input class = "inputs form-control dk" id = "name" type = "text" name = "name" placeholder="Họ tên của bạn, hoặc tên Facebook" value = "<?php 
						if(isset($_POST['name']))
						 	echo $_POST['name'];
						else
							echo "";
						?>" required  />
						<?php 
							if(isset($error1)) 
							echo '<p class = "error">' .$error1.'</p>'; 
						?>
						</div></div>
						
							<div class = 'form-group'>
							<label for='inputPassword3' class='col-sm-3 control-label '>Cre / Biệt hiệu: </label>
						<div class='col-sm-9'><input class = "inputs form-control dk" id = "cre" type = "text" name = "cre" placeholder="Biệu hiệu trên Facebook, hoặc bạn hay dùng" value = "<?php 
						if(isset($_POST['cre']))
						 	echo $_POST['cre'];
						else
							echo "";
						?>" required  /></div>
						</div>
						<!-- <div  class = "col-xs-5 col-md-7 input-group"><span id = "span-phone" class="input-group-addon">Phone *</span>
						<input class = "inputs form-control" id = "phone" type = "text" name = "phone" value = "<?php 
						if(isset($_POST['phone']))
							echo $_POST['phone'];
				  		else
					   		echo "";
						?>" required  /></div> -->
						
						
							<div class = 'form-group'>
						   	<label for='inputPassword3' class='col-sm-3 control-label '>Email: </label>
						<div class='col-sm-9'><input class = "inputs form-control dk" id = "addr" type = "text" name = "email" placeholder="Nhập Email có thật để lấy lại mật khẩu khi mất" value = "<?php 
						if(isset($_POST['email']))
							echo $_POST['email'];
						else
						   	echo "";
						?>" required  />
						<?php
						if(isset($error2)) 
							echo '<p class = "error">' .$error2.'</p>'; 
						if(isset($error6)) 
							echo '<p class = "error">' .$error6.'</p>';
						?>
						<div style = "color: red; margin-top: 5px;" id = "error-email"></div>
						<script>
							$("#addr").keyup(function(){
								var email = $("#addr").val();
								var eemail = $("#error-email");
								$.ajax({
									url: "xulyemail.php",
									method: "post",
									dataType: "text",
									data:{email:email},
									success: function(res4){
										res4 = res4.trim();
										// alert(res4);
										if(res4=="0")
										eemail.html("Email không đúng định dạng.");
										else if(res4=="2"){
											eemail.html("Email đã tồn tại.");
										}
										else
										eemail.html("");
									}
								});
							});
						</script>
                        </div></div>
							<div class = 'form-group'>
								<label for='inputPassword3' class='col-sm-3 control-label'>Ngày sinh: </label>
						<div class='col-sm-9'><input class = "inputs form-control dk" name="bthday" type="date" min='1945-01-01' max = '2018-05-08' value= "<?php 
							if(isset($_POST['bthday']))
							echo $_POST['bthday'];
							else
						   	echo "";
							?>" required/></div>
							</div>
<h5 style = "text-align: center;">- Chọn 1 or nhiều Page của Bạn !
<br>+) Nếu <strong>KHÔNG</strong> có vui lòng bỏ qua phần này.
<br>+) Vì Boss chưa đăng ký Page với hệ thống !</h5>
<!--<div style = "text-align: center; padding-left: 40px;" class = "col-xs-12 col-md-10">-->
<div class = 'form-group' style = "text-align: center">
    <select onchange="genderChanged(this)" multiple data-placeholder="Nhập tên Page để tìm kiếm" class="chosen-select" id="sel2" name="page[]">
                                        <option value = "1phut_7929766">1 Phút - Boss|Hồng Gấm(Dzú)</option>
                                        <option value = "Alone_1054436">ALONE – Boss|Phạm Ngọc Nhi </option>
                                        <option value = "blogcuaban">Blog Của Bạn - Boss|Tường Vy(Na)</option>
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
										<option value = "saohanquoc">SAO HÀN QUỐC</option>
										<option value = "StayHigh_8605376">Stay High. - Boss|Trương Văn Đăng</option>
										<option value = "Sttngan_1120958">Stt Ngắn - Boss|Ngô Yến Như(Bèo)</option>
										<option value = "Trash_3730792">Trash . - Boss|Trương Văn Đăng</option>
										<option value = "thathinh">Thả Thính - Boss|Tường Vy(Na)</option>
										<option value = "tothichcau_5432446">Tớ Thích Cậu – Boss|Nguyễn Hoàng Ngân Hà</option>
										<option value = "viet_9758669">Viết - Boss|Nguyễn Hoàng Ngân Hà(Mĩm)</option>
										<option value = "Vui24_278960">Vui 24 - Boss|Quang NguyenVan</option>
										<option value = "xamxi_6062147">Xàm Xí – Boss|Jen Chan</option>
										<option value = "yeu">Yêu+ - Boss|Hồng Gấm(Dzú)</option>
										<option value = "yeu_4135287">Yêu+ - Boss|Hiền Hoàng(Wind)</option>
    </select>
    </div>
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
						message.innerHTML = "Bạn đã chọn Page, yêu cầu gia nhập Page khi thực hiện sẽ phải chờ BOSS phê duyệt ! ";
					}
					
				}
			</script>
</div>

<script>
    $(".chosen-select").chosen({
        allow_single_deselect: true,
        width: '50%',
        no_results_text: "Không có vì Boss chưa đăng ký sử dụng - "
    });
</script>							
							<!--<div class = "col-xs-10 col-md-10 input-group">-->
							<!--	<p>- Chọn Page của Bạn:-->
							<!--	<br>+) Nếu không có bỏ qua vì Page không có chưa dược đăng ký !-->
							<!--	<br>+) (Trên PC giữ phím Ctrl để chọn nhiều )</p>-->
							<!--		<select multiple class="form-control" id="sel2" name="page[]" >-->
							<!--			<option value="blogcuaban">Blog của bạn - Boss|Ngô Yến Như(Bèo)</option>-->
							<!--			<option value="buonvl">Buồn VL - Boss|Ngọc Minh Châu(Bò)</option>-->
							<!--			<option value="ethanhxuan">Ê, Thanh Xuân - Boss|Jen Chan(#Jen)</option>-->
							<!--			<option value="mua">Mưa+ - Boss|Ngô Yến Như(#Bèo)</option>-->
							<!--			<option value="quotemanhyy">Quote Mẫn Hyy</option>-->
							<!--			<option value="say">Say. - Boss|Jen Chan(#Jen)</option>-->
							<!--			<option value="sadlove">Sad Love - Boss|Nam Dương(#Rey)</option>-->
							<!--			<option value="saohanquoc">SAO HÀN QUỐC</option>-->
							<!--			<option value="thathinh">Thả Thính - Boss|Tường Vy(#Na)</option>-->
							<!--			<option value="yeu">Yêu+ - Boss|Hồng Gấm(#Dzú)</option>-->
										
										
							<!--		</select>-->
								<!-- <input type="checkbox" name="page[]" value="yeu">&nbsp;&nbsp; Yêu+
							<!--	<input type="checkbox" name="page[]" value="mua">&nbsp;&nbsp; Mưa+-->
							<!--	<input type="checkbox" name="page[]" value="blogcuaban">&nbsp;&nbsp; Blog của bạn -->
							<!--</div>-->
						<div id ="box-gender" class = "col-xs-10 col-md-10">
							<span>Giới tính: *</span>
							<div id = "box-radio">
							<label class="radio-inline">
							  <input type="radio" name="gender" value="Nam" required
							  <?php 
								   if(isset($_POST['gender'])&& $_POST['gender'] == "Nam")
								   		echo "checked";
							   ?>
							  > Nam
							</label>
							<label class="radio-inline">
							   <input type="radio" name="gender" value="Nữ"  <?php 
								   if(isset($_POST['gender'])&& $_POST['gender'] == "Nữ")
								   		echo "checked";
							   ?>
							  
							   > Nữ
							</label>
							<label class="radio-inline">
							  <input type="radio" name="gender" value="Khác"
							  <?php 
								   if(isset($_POST['gender'])&& $_POST['gender'] == "Khác")
								   		echo "checked";
							   ?>
							 > Bống
							</label>
							</div>
							<br />
						
						</div>
					<div id = "box-btn" class= "col-xs-12 col-md-12">
						<input type = "submit" name = "sub" value = "Đăng ký ">
					</div>

					
				</form>


		    <?php include 'bottom_page.php' ?>