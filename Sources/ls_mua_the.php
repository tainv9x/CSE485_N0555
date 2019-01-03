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
        
        if(isset($_SESSION['login'])){
            $sqlGd = "select * from ls_mua_the";
            $sGd = mysqli_query($conn,$sqlGd);

            if(mysqli_num_rows($sGd)>0)
                {
                while($row = mysqli_fetch_assoc($sGd)){
                    $depot_lsgd[] = $row;
                    }
                }
        }
        // echo "<pre>";
        // print_r($depot_lsgd);
        // echo "</pre>";

    ?>
        <div class =  "stable">

    <table class="table table-striped table-hover table_lsgd">
        <h2 style = "color: green;">Lịch sử mua thẻ</h2>
        <br>
        <tr>
            <th>Mệnh giá (VNĐ)</th>
            <th>Loại thẻ</th>
            <th>Mã thẻ</th>
            <th>Serial</th>
            <th>Thời gian mua</th>
        </tr>
        <?php 
            $dem_lsgd = 0;

            foreach($depot_lsgd as &$value){
                if($value['userName']==$userName){

                    if(isset($value['menhgia']))
                        $menhgia_gd = $value['menhgia'];
                    else    
                        $menhgia_gd = "";
                   
                    if(isset($value['loaithe'])){
                        $loaithe_gd = $value['loaithe'];
                    }
                    else 
                        $loaithe_gd = "";
                    if(isset($value['mathe']))
                        $mathe_gd = $value['mathe'];
                    else 
                        $mathe_gd = "";
                    if(isset($value['serial']))
                        $serial_gd = $value['serial'];
                    else 
                        $serial_gd = "";
                    if(isset($value['time']))
                        $dt = date('H:i:sa d/m/Y',strtotime($value['time']));
                    else    
                        $dt = "";
                    echo "
                        <tr>
                            <td>$menhgia_gd</td>
                            <td>$loaithe_gd</td>
                            <td>$mathe_gd</td>
                            <td>$serial_gd</td>
                            <td>$dt</td>
                        </tr>
                    ";
                }
            }
        ?>
    </table>
</div>
<?php include 'bottom_page.php' ?>