<?php 
    $pass2 = $_POST['pass2'];
    if(!preg_match('/^[A-Za-z0-9_\.]{6,322}$/', $_POST['pass2'])){			// kiem tra pass 2
        // $error21 = 'Mật khẩu cấp 2 tối thiểu có 6 số !';
        echo 0;

    }
    else{
        echo 1;
    }

?>