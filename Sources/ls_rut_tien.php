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
            $sqlGd = "select * from ls_rut_tien";
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
        <h2 style = "color: green;">Lịch sử rút tiền</h2>
        <br>
        <tr>
            <th>Số tiền (VNĐ)</th>
            <th>Ngân hàng</th>
            <th>Trạng thái</th>
            <th>Thời gian</th>
        </tr>
        <?php 

            foreach($depot_lsgd as &$value){
                if($value['userName']==$userName){

                    if(isset($value['sotien']))
                        $sotien_gd = $value['sotien'];
                    else    
                        $sotien_gd = "";
                   
                    if(isset($ngan_hang_gd)){
                        $nh_gd = $ngan_hang_gd;
                    }
                    else 
                        $nh_gd = "";
                    if(isset($value['trangthai']))
                        $tt_gd = $value['trangthai'];
                    else 
                        $tt_gd = "";
                   
                    if(isset($value['time']))
                        $dt = date('H:i:sa d/m/Y',strtotime($value['time']));
                    else    
                        $dt = "";
                    echo "
                        <tr>
                            <td>$sotien_gd</td>
                            <td>$nh_gd</td>";
                            if($tt_gd=='Thất bại')
                                echo "<td style = 'color: red;'>$tt_gd</td>";
                            if($tt_gd=='Chờ xét duyệt')
                                echo "<td style = 'color: #ffd200;'>$tt_gd</td>";
                            if($tt_gd=='Thành công')
                                echo "<td style = 'color: green;'>$tt_gd</td>";
                    echo "  
                            <td>$dt</td>
                        </tr>
                    ";
                }
            }
        ?>
    </table>
</div>
<?php include 'bottom_page.php' ?>