
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
            $sql2 = "select * from ds_nap";
            $s = mysqli_query($conn,$sql2);
    
            if(mysqli_num_rows($s)>0)
            {
                while($row = mysqli_fetch_assoc($s)){
                    $depot_rt[] = $row;
                }
            }
            
        }
        ?>
        <script type="text/javascript">
			$(document).ready(function(){
				

				$(".del").click(function(){
					var r = confirm("Bạn có chắc chắn từ chối yêu cầu nạp tiền này ?");
					if(r==false){
						return false;
					}
				});
                $(".ok").click(function(){
					var r = confirm("Bạn có chắc chắn muốn duyệt yêu cầu nạp tiền này ?");
					if(r==false){
                        return false;
					}
				});
                
			});

		</script>
<div class="stable">

 
		<!-- <div class = "col-12"> -->
		<form method="post">
		<?php 
		 ob_start();
			$stt = 0;
			if(isset($depot_rt)){
				
				echo '<table class = "table table_dstv">
					<tr>
						<th>Tài khoản nạp</th>
                        <th>Ngân hàng nhận</th>
				        <th>Số tiền</th>
                        <th>Hình thức</th>
                        <th>Ngân hàng chuyển</th>
						<th>Tên chuyển</th>
						<th>Số tài khoản chuyển</th>
                        <th>Thời gian chuyển</th>
                        <th>Phê duyệt</th>


					</tr>';
					$i = 0;
							foreach($depot_rt as &$value){
                                if($value['status']==0){
									$delete = "dell".$i;												
									if(isset($value['userchuyen']))
										$username_gd = $value['userchuyen'];
									else 
										$username_gd = "";
									
									if(isset($value['nhnhan']))
										$nhnhan = $value['nhnhan'];
									else 
                                        $nhnhan = "";
                                        
									if(isset($value['sotien']))
										$sotien = $value['sotien'];
									else 
                                        $sotien = "";

                                    if(isset($value['hthuc']))
										$hthuc = $value['hthuc'];
									else 
                                        $hthuc = "";

                                    if(isset($value['nhchuyen']))
										$nhchuyen = $value['nhchuyen'];
									else 
                                        $nhchuyen = "";
                                        
                                    if(isset($value['tenchuyen']))
										$tenchuyen = $value['tenchuyen'];
									else 
                                        $tenchuyen = "";

                                    if(isset($value['stkchuyen']))
										$stkchuyen = $value['stkchuyen'];
									else 
                                        $stkchuyen = "";

                                    if(isset($value['time']))
                                        $dt = date('d/m/Y',strtotime($value['time']));
                                    else    
                                        $dt = "";

									echo "
                                        <tr>
                                            <td>$username_gd</td>
                                            <td>$nhnhan</td>
                                            <td>$sotien</td>
                                            <td>$hthuc</td>
                                            <td>$nhchuyen</td>
                                            <td>$tenchuyen</td>
                                            <td>$stkchuyen</td>
                                            <td>$dt</td>
                                        
                                    ";

                                    echo "<td><input class = 'input_dstv ok' type = 'submit' name = 'ok".$i."' value = 'Duyệt' >";
                                    echo "<input class = 'input_dstv del' type = 'submit' name = 'dell".$i."' value = 'Từ chối' ></td>";
                                    echo "</tr>";
									$i++;
                            }
                        }
			}
				
				
			echo '</table>';
			$j = 0; 
			if(isset($depot_rt)){
			foreach($depot_rt as &$value){	
                $delete = "dell".$j;
                $ok = "ok".$j;
                $id = $value['id'];
                $magd = $value['magd'];
                $sotien_nap = $value['sotien'];
                $user_nap = $value['userchuyen'];
                $stt = $value['status'];
                if(isset($_POST[$ok])){
                
                   $sqlD = "delete from ds_nap where magd = '$magd'";
					mysqli_query($conn,$sqlD);
                    
                    $sqlU2 = "update users set sodu = sodu + $sotien_nap where userName = '$user_nap'";
                    mysqli_query($conn,$sqlU2);
                    
                   
                    
                    header('Location: ds_nap.php');
				}

				if(isset($_POST[$delete])){
					$sqlD = "delete from ds_nap where magd = '$magd'";
					mysqli_query($conn,$sqlD);
                    
                    // $sqlU = "update ls_rut_tien set trangthai = n'Thất bại' where ma_gd = '$magd'";
                    // mysqli_query($conn,$sqlU);
                    
                    // $sqlU2 = "update users set sodu = sodu+$tong_tien_rut where userName = '$user_rut'";
                    // mysqli_query($conn,$sqlU2);

                    header('Location: ds_nap.php');
				}
				$j++;
			}
		}
		?>
    </div>
    <?php include '../bottom_page1.php' ?>