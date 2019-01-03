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
            $sqlGd = "select * from lichsu_gd";
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
        <h2 style = "color: green;">Lịch sử chuyển tiền</h2>
        <br>
        <tr>
            <th>Số tiền (VNĐ)</th>
            <th>Hình thức</th>
            <th>Tài khoản nhận</th>
            <th>Thời gian chuyển tiền</th>
        </tr>
        <?php 
            $dem_lsgd = 0;

            foreach($depot_lsgd as &$value){
                if($value['userName']==$userName){

                    if(isset($value['menhgia']))
                        $menhgia_gd = $value['menhgia'];
                    else    
                        $menhgia_gd = "";
                   
                    if(isset($value['hinhthuc'])){
                        $hinhthuc_gd = $value['hinhthuc'];
                    }
                    else 
                        $hinhthuc_gd = "";
                    if(isset($value['user_nhan']))
                        $user_nhan_gd = $value['user_nhan'];
                    else 
                        $user_nhan_gd = "";
                    if(isset($value['time']))
                        $dt = date('H:i:sa d/m/Y',strtotime($value['time']));
                    else    
                        $dt = "";
                    echo "
                        <tr>
                            <td>$menhgia_gd</td>
                            <td>$hinhthuc_gd</td>
                            <td>$user_nhan_gd</td>
                            <td>$dt</td>
                        </tr>
                    ";
                }
            }
        ?>
    </table>
</div>
<?php include 'bottom_page.php' ?>