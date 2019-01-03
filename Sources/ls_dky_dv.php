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
            $sqlGd = "select * from ls_dky_dvu";
            $sGd = mysqli_query($conn,$sqlGd);

            if(mysqli_num_rows($sGd)>0)
                {
                while($row = mysqli_fetch_assoc($sGd)){
                    $depot_lsgd[] = $row;
                    }
                }
        }

    ?>
    <div class = "table-ls">
    <table style = '    overflow-x: scroll;' class="table table-striped table-hover table_lsgd">
        <h2 style = "color: green;">Lịch sử đăng ký dịch vụ</h2>
        <br>
        <tr>
            <th>Tên Page</th>
            <th>Gói</th>
            <th>Số tiền</th>
            <th>Ngày đăng ký</th>
            <th>Ngày hết hạn</th>
            <th>Trạng thái</th>

        </tr>
        <?php 
                date_default_timezone_set('Asia/Ho_Chi_Minh');
                $time_now = date("Y-m-d H:i");
            foreach($depot_lsgd as &$value){
                if($value['userName']==$userName){

                    if(isset($value['goi']))
                        $goi = $value['goi'];
                    else    
                        $goi = "";
                   
                    if(isset($value['tien'])){
                        $tien = $value['tien'];
                    }
                    else 
                        $tien = "";
                    if(isset($value['ngaydky']))
                        $ngaydk = date('H:i d/m/Y',strtotime($value['ngaydky']));
                    else 
                        $ngaydk = "";

                    if(isset($value['ngayhet'])){
                        if(strtotime($value['ngayhet']) < strtotime($time_now))
                            $tt = "<p style = 'color: red;'>Hết hạn</p>";
                        else    
                            $tt = "<p style = 'color: green;'>Hoạt động</p>";
                        $ngayhet = date('H:i d/m/Y',strtotime($value['ngayhet']));
                    }
                    else 
                        $ngayhet = "";
                    
                    if(isset($value['page'])){
                        $page = $value['page'];
                    }
                    else 
                        $page = "";
                    echo "
                        <tr>
                            <td>$page</td>
                            <td>$goi</td>
                            <td>$tien</td>
                            <td>$ngaydk</td>
                            <td>$ngayhet</td>
                            <td>$tt</td>
                        </tr>
                    ";
                }
            }
        ?>
    </table>
</div>
<?php include 'bottom_page.php' ?>