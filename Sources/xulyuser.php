<?php 
    

    $user = $_POST['user'];
     if(!preg_match('/^[A-Za-z0-9_\.]{5,32}$/', $_POST['user'])){			// kiem tra userName 
        // $error5 = 'Tên tài khoản tối thiểu 5 ký tự (Không viết dấu & không khoảng trống).';
        echo 1;
        exit();
    }
   
    $conn = mysqli_connect('localhost','axunlifohosting_tai','taikuteyh1','axunlifohosting_tai2') or die ('Lỗi kết nối');
    mysqli_set_charset($conn, "utf8");
    $sql = "select * from users where userName = '$user'";
    $re = mysqli_query($conn,$sql);
    if(mysqli_num_rows($re)>0){
        echo 2;
        exit();

    }
?>
