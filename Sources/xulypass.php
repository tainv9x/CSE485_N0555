<?php 
    $pass = $_POST['pass'];
    if(!preg_match('/^[A-Za-z0-9_\.]{4,322}$/', $_POST['pass'])){			// kiem tra pass 
        // $error20 = 'Mật khẩu đăng nhập tối thiểu có 4 ký tự và viết liền không dấu.';
        echo 0;
    }
    else{
        echo 1;
    }

   
?>