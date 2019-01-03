<?php include 'top_page.php' ?>

    <?php 
     $_SESSION['cuUrl'] = (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] === 'on' ? "https" : "http") . "://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]";
    if(isset($depot)){				
            if(isset($_SESSION['login'])){
                $checkStatus =	"exist";
            }
            else {
                $checkStatus = "not found";
            }
        if($checkStatus=="not found")
            header('Location: login.php');
    }   

        if(isset($_POST['sub'])){
            foreach($depot as $key => &$value){
               
                if($value['userName']==$_SESSION['login']){
                    $id = $value['id'];
                    if($_POST['oldPass']!=$value['password']){
                        $error2 = "Mật khẩu không đúng";
                        $n_pass = $value['password'];
                    }
                    if(!preg_match('/^[A-Za-z0-9_\.]{4,322}$/', $_POST['newPass'])){			// kiem tra pass 
					$error20 = 'Mật khẩu đăng nhập tối thiểu có 4 ký tự (Không viết dấu & không khoảng trống).';
					$n_pass = $value['password'];
    				}
    				
                    if($_POST['oldPass']==$value['password']&&$_POST['newPass']==$_POST['AnewPass']&&!isset($error20)){
                        $value['password'] = $_POST['newPass'];
                        $n_pass = $value['password'];
                        $success = "Đổi mật khẩu thành công";
                        break;
                    }
                    if($_POST['newPass']!=$_POST['AnewPass'])
                    {
                        $error = "Mật khẩu nhập lại không đúng!";
                        $n_pass = $value['password'];
                    }
                    
                    
                }
            }
            $sqlU = "update users set password = '$n_pass' where id = '$id'"; 
            mysqli_query($conn, $sqlU);
        }
    ?>
    <div class = "col-md-12">
            <div class = "col-xs-12 col-md-12">
                    <p id = "title-login">Đổi mật khẩu</p>
                </div>
               <form method="POST">
                <div class = "col-md-12 box-ipp"> 
                <label for="inputEmail3" class="col-sm-3 control-label">Mật khẩu hiện tại:</label>
                <div class = "col-sm-9"><input  class = "form-control ip-changePass" type = "password" name = "oldPass" placeholder="Mật khẩu hiện tại"  autofocus></div>
                </div>
                <div class = "col-md-12 box-ipp">
                                    <label for="inputEmail3" class="col-sm-3 control-label">Mật khẩu mới:</label>
                    <div class = "col-sm-9"><input  class = "form-control ip-changePass" type = "password" name = "newPass" placeholder="Nhập mật khẩu mới" ></div>
                  </div>
                <div class = "col-md-12 box-ipp">
                                    <label for="inputEmail3" class="col-sm-3 control-label">Nhập lại mật khẩu:</label>

                    <div class = "col-sm-9"><input  class = "form-control ip-changePass" type = "password" name = "AnewPass" placeholder="Nhập lại mật khẩu mới" ></div>
                    </div>
                <div style = "height: 17px;" class = "col-xs-12 col-md-12"></div>
                    <?php 
                        if(isset($error2))
                            echo "<p style = 'text-align: center;' class= 'error error-changne-pass'>$error2</p>";
                        if(isset($error20))
                            echo "<p style = 'text-align: center;' class= 'error error-changne-pass'>$error20</p>";
                        else if(isset($error))
                            echo "<p style = 'text-align: center;' class= 'error error-changne-pass'>$error</p>";
                        
                        else if(isset($success))
                        echo "<p style = 'color: green;text-align: center;margin-top: 10px'>Đổi mật khẩu thành công!</p>";
                    ?>
                    <div class = "col-md-12" id ="box-submit"><input type = "submit" name = "sub" value = "Xác nhận"></div>
                   
                </form>
            </div>
        
    <?php include 'bottom_page.php' ?>