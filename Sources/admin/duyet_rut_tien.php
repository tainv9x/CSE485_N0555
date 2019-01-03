<?php include 'top_page1.php' ?>
<?php 
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
        header('Location: index.php');
    else{
        $sql2 = "select * from cho_rut";
        $s = mysqli_query($conn,$sql2);

        if(mysqli_num_rows($s)>0)
        {
            while($row = mysqli_fetch_assoc($s)){
                $depot_rt[] = $row;
            }
        }
        // echo "<pre>";
        // print_r($depot_rt);
        // echo "</pre>";
        // die();
    }
        
?>


<script type="text/javascript">
			$(document).ready(function(){
				

				$(".del").click(function(){
					var r = confirm("Bạn có chắc chắn từ chối yêu cầu rút tiền này ?");
					if(r==false){
						return false;
					}
				});
                $(".ok").click(function(){
					var r = confirm("Bạn có chắc chắn muốn duyệt yêu cầu rút tiền này ?");
					if(r==false){
                        return false;
					}
				});
                
			});

		</script>

		<!-- <div class = "col-12"> -->
		<form style = "    overflow-x: scroll;" method="post">
		<?php 
		 ob_start();
			$stt = 0;
			if(isset($depot_rt)){
				
				echo '<table class = "table table_dstv">
					<tr>
						<th>Tài khoản rút</th>
                        <th>Mã giao dịch</th>
				        <th>Số tiền</th>
                        <th>Số tài khoản</th>
                        <th>Số thẻ</th>
						<th>Tên</th>
						<th>Ngân hàng</th>
						<th>Chi nhánh</th>
						<th>Ghi chú</th>
                        <th>Thời gian yêu cầu</th>
                        <th>Phê duyệt</th>


					</tr>';
					$i = 0;
							foreach($depot_rt as &$value){
									$delete = "dell".$i;												
									if(isset($value['userName']))
										$username_gd = $value['userName'];
									else 
										$username_gd = "";
									
									if(isset($value['sotien']))
										$sotien_gd = $value['sotien'];
									else 
                                        $sotien_gd = "";
                                        
									if(isset($value['ma_gd']))
										$ma_gd = $value['ma_gd'];
									else 
                                        $ma_gd = "";

                                    if(isset($value['so_tk']))
										$stk_gd = $value['so_tk'];
									else 
                                        $stk_gd = "";

                                    if(isset($value['so_in_tren_the']))
										$so_in_tren_the_gd = $value['so_in_tren_the'];
									else 
                                        $so_in_tren_the_gd = "";
                                        
                                    if(isset($value['ten']))
										$ten_gd = $value['ten'];
									else 
                                        $ten_gd = "";

                                    if(isset($value['ngan_hang']))
										$nganhang_gd = $value['ngan_hang'];
									else 
                                        $nganhang_gd = "";

                                    if(isset($value['chi_nhanh']))
										$chinhanh_gd = $value['chi_nhanh'];
									else 
                                        $chinhanh_gd = "";

                                    if(isset($value['ghichu']))
										$ghichu_gd = $value['ghichu'];
									else 
                                        $ghichu_gd = "";

                                    if(isset($value['time']))
                                        $dt = date('H:i d/m/Y',strtotime($value['time']));
                                    else    
                                        $dt = "";

									echo "
                                        <tr>
                                            <td>$username_gd</td>
                                            <td>$ma_gd</td>
                                            <td>$sotien_gd</td>
                                            <td>$stk_gd</td>
                                            <td>$so_in_tren_the_gd</td>
                                            <td>$ten_gd</td>
                                            <td>$nganhang_gd</td>
                                            <td>$chinhanh_gd</td>
                                            <td>$ghichu_gd</td>
                                            <td>$dt</td>
                                        
                                    ";

                                    echo "<td><input class = 'input_dstv ok' type = 'submit' name = 'ok".$i."' value = 'Duyệt' >";
                                    echo "<input class = 'input_dstv del' type = 'submit' name = 'dell".$i."' value = 'Từ chối' ></td>";
                                    echo "</tr>";
									$i++;
							}
			}
				
				
			echo '</table>';
			$j = 0; 
			if(isset($depot_rt)){
			foreach($depot_rt as &$value){	
                $delete = "dell".$j;
                $ok = "ok".$j;
                $magd = $value['ma_gd'];
                $sotien_rut = $value['sotien'];
                $user_rut = $value['userName'];
                $phi = 0;
                if($value['sotien']<500000)
                    $phi = 2200;
                else $phi = 3300;
                $tong_tien_rut = $value['sotien'] +$phi;
                if(isset($_POST[$ok])){
                
					$sqlD = "delete from cho_rut where ma_gd = '$magd'";
					mysqli_query($conn,$sqlD);
                    
                    $sqlU = "update ls_rut_tien set trangthai = n'Thành công' where ma_gd = '$magd'";
                    mysqli_query($conn,$sqlU);
                    
                    
                   
                    
                    header('Location: duyet_rut_tien.php');
				}

				if(isset($_POST[$delete])){
					$sqlD = "delete from cho_rut where ma_gd = '$magd'";
					mysqli_query($conn,$sqlD);
                    
                    $sqlU = "update ls_rut_tien set trangthai = n'Thất bại' where ma_gd = '$magd'";
                    mysqli_query($conn,$sqlU);
                    
                    $sqlU2 = "update users set sodu = sodu+$tong_tien_rut where userName = '$user_rut'";
                    mysqli_query($conn,$sqlU2);

                    header('Location: duyet_rut_tien.php');
				}
				$j++;
			}
		}
		?>
    <!-- </div> -->
		
		

	</form>
	

<?php include '../bottom_page1.php' ?>