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
        $sql2 = "select * from dsdky_dv";
        $s = mysqli_query($conn,$sql2);

        if(mysqli_num_rows($s)>0)
        {
            while($row = mysqli_fetch_assoc($s)){
                $depot_rt[] = $row;
            }
        }
        
    }
    $k = 0;
    if(isset($_POST['update'])){
        foreach($depot_rt as &$value){
            if(isset($value)){
                $id = $value['id'];
                $newNote = "newNote".$k;
                $n_newNote = $_POST[$newNote];
                $sqlUdkdv = "update dsdky_dv set note = n'$n_newNote' where id = '$id'"; 
				mysqli_query($conn, $sqlUdkdv);
            }
            $k++;
        }
        header('Location: dsdky_dvu.php');
    }

?>



		<!-- <div class = "col-12"> -->
		<form style = "    overflow-x: scroll;" method="post">
		<?php 
		 ob_start();
			$stt = 0;
			if(isset($depot_rt)){
				
				echo '<table class = "table table-hover table_dstv">
					<tr>
						<th>Tài khoản thuê</th>
                        <th>Tên Page</th>
				        <th>Tên Database Page</th>
                        <th>Tên BOSS</th>
                        <th>Gói</th>
						<th>Ngày đăng ký</th>
						<th>Ngày hết hạn</th>
						<th>Tiền</th>
						<th>Ghi chú</th>


					</tr>';
					$i = 0;
							foreach($depot_rt as &$value){
									if(isset($value['userthue']))
										$userthue = $value['userthue'];
									else 
										$userthue = "";
									
									if(isset($value['tenpage']))
										$tenpage = $value['tenpage'];
									else 
                                        $tenpage = "";
                                        
									if(isset($value['tenpage2']))
										$tenpage2 = $value['tenpage2'];
									else 
                                        $tenpage2 = "";

                                    if(isset($value['linkad']))
										$linkad = $value['linkad'];
									else 
                                        $linkad = "";

                                    if(isset($value['goi']))
										$goi = $value['goi'];
									else 
                                        $goi = "";
                                        
                                    if(isset($value['ngaydky']))
										$ngaydk = date('H:i d/m/Y',strtotime($value['ngaydky']));
									else 
                                        $ngaydk = "";

                                    if(isset($value['ngayhet']))
										$ngayhet = date('H:i d/m/Y',strtotime($value['ngayhet']));
									else 
                                        $ngayhet = "";

                                    if(isset($value['tien']))
										$tien = $value['tien'];
									else 
                                        $tien = "";

                                    if(isset($value['note']))
										$ghichu = $value['note'];
									else 
                                        $ghichu = "";

                                  

									echo "
                                        <tr>
                                            <td>$userthue</td>
                                            <td>$tenpage</td>
                                            <td>$tenpage2</td>
                                            <td>$linkad</td>
                                            <td>$goi</td>
                                            <td>$ngaydk</td>
                                            <td>$ngayhet</td>
                                            <td>$tien</td>
                                        
                                    ";

                                    echo "<td><input style = 'margin: 0px;' class = 'input-info' type = 'text' name = 'newNote".$i."' value = '".$ghichu."'  /></td>";
                                    echo "</tr>";
									$i++;
							}
			}
				
				
			echo '</table>';
		
        ?>
        <input style = "color: #fff;height: 30px;background: green;border-radius: 5px;"  class = "btnUpdate" type = "submit" name = "update" value = "Cập nhật">
    <!-- </div> -->
		
		

	</form>
	

<?php include '../bottom_page1.php' ?>