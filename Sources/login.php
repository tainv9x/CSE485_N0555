
    <?php include 'top_page.php' ?>
    
    <?php
    //change
 if(isset($_SESSION['cuUrl'])){
            $curURL = $_SESSION['cuUrl'];
        }
        else
            $curURL = "index.php";
        if(isset($depot)){				// lấy key của phần tử cuối cùng
            end($depot);
            $last_Key = key($depot);
        }
        if(isset($_POST['login'])){
            if(isset($depot)){
            foreach($depot as &$value){
                if(isset($value)){
                    if(trim($_POST['name']) == $value['userName'] && trim($_POST['password']) == $value['password'])
                    {
                        $_SESSION['login'] = $value['userName'];
                         if(isset($curURL))
                            header('Location:'. $curURL);
                        else
                            header('Location: index.php');
                        $error = 1;
                    }
                    if(trim($_POST['name']) == $value['userName'] && trim($value['level']) == 3&& trim($_POST['password']) == $value['password']){          //dang nhập cho admin
                        $_SESSION['login'] = $value['userName'];
                        header('Location: https://hethong24h.net/admin/index.php');  
                        $error = 1;
                    }
                    else{
                        $error = 0;
                    }
                }
               
            }
        }
    }
    ?>

    <div class = "col-xs-12 col-md-12">
        <p id = "title-login">Đăng nhập</p>
    </div>
        <div class = "col-xs-12 col-md-12 div-form">
           <div class="row form">
               
               <form method="POST">
                 <div class = "col-md-12 box-ipp"> 
                 <label for="inputEmail3" class="col-sm-3 control-label">Tài khoản:</label>
                 <div class = "col-sm-9"><input  class = "form-control" type = "text" name = "name" placeholder="Tên tài khoản đăng nhập" required autofocus>
                 <div style = "margin-top: 10px;" id = "ngnhan"></div>
                <script>
                    $("input[name='name']").keyup(function(){
                    var usernhan = $("input[name='name']").val();
                    var ngnhan = $("#ngnhan");
                    $.ajax({
                        url:"xuly_chuyentien.php",
                        method: "post",
                        dataType: "text",
                        data:{usernhan:usernhan},
                        success: function(re){
                            if(re!=0){
                                 ngnhan.css("color","green");
                                ngnhan.html("Chào mừng - "+re+" ✔ - đến với 24H NET");
                            }
                            else{
                                ngnhan.css("color","red");
                                ngnhan.html("Tài khoản không chính xác ☹");
                            }
                        }
                    });
                    });
                </script>
                </div>
                </div>
                 
                <div class = "col-md-12 box-ipp"> 

                <label for="inputEmail3" class="col-sm-3 control-label">Mật khẩu:</label>
                <div class = "col-sm-9"><input  class = "form-control" type = "password" name = "password" placeholder="Mật khẩu đăng nhập" required ></div>
                </div>
                    <?php 
                        if(isset($error)&&$error==0)
                            echo "<br><p style = 'text-align: center;margin-top: 5px;' class = 'error'>Tên đăng nhập hoặc mật khẩu không đúng!</p>";
                    ?>
                 <div class = "col-md-12"><a style=" float: right; line-height: 36px; color: green" href = "dangky.php">Bạn chưa có tài khoản ? Đăng ký ngay</a></div><br>
                 <div class = "col-md-12"><a style=" float: right; line-height: 36px; color: red" href = "quenmk.php">Quên mật khẩu ☚</a></div><br>
                <div id ="box-submit"><input type = "submit" name = "login" value = "Đăng nhập"></div>
                </form>
           </div>
        </div>

        
    <?php include 'bottom_page.php' ?>