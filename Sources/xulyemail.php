<?php 
    

    $email = $_POST['email'];
    if (!preg_match('/^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,})$/i', trim($_POST['email']))){		// kiem tra dinh dang email?
       echo 0;
       exit();
    }
    // else{
    //     $error2 = 'Email không hợp lệ, vui lòng nhập chính xác địa chỉ email.';
    //     array_push($arrError, 0);			
    // }
   
    $conn = mysqli_connect('localhost','axunlifohosting_tai','taikuteyh1','axunlifohosting_tai2') or die ('Lỗi kết nối');
    mysqli_set_charset($conn, "utf8");
    $sql = "select * from users where email = '$email'";
    $re = mysqli_query($conn,$sql);
    if(mysqli_num_rows($re)>0){
        echo 2;
        exit();

    }
?>
