<?php 
    $usernhan = $_POST['usernhan'];
    
    $conn = mysqli_connect('localhost','axunlifohosting_tai','taikuteyh1','axunlifohosting_tai2') or die ('Lỗi kết nối');
    mysqli_set_charset($conn, "utf8");
    $sql = "select * from users where userName = '$usernhan'";
    $re = mysqli_query($conn,$sql);
    if(mysqli_num_rows($re)>0){
        $row = mysqli_fetch_assoc($re);
            // $depot[$row['userName']] = $row;
            echo $row['name'];
        exit();
    }
    else
        echo 0;
?>