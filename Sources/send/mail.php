<?php
    //goi thu vien
    include('class.smtp.php');
    include "class.phpmailer.php";
    $nFrom = "Hệ Thống 24H NET";    //mail duoc gui tu dau, thuong de ten cong ty ban
    $mFrom = 'Admin@hethong24h.net';  //dia chi email cua ban
    $mPass = 'Taikuteyh@1';       //mat khau email cua ban
    $nTo = ''; //Ten nguoi nhan
    $mTo = 'tainv62@wru.vn';   //dia chi nhan mail
    $mail             = new PHPMailer();
    $body             = 'Hệ Thống 24h xin chào !<br>
                        + Bạn nhận được thư này vì bạn vừa thực hiện yêu cầu đăng ký sử dụng dịch vụ "Quản lý thành viên" của <a href="https://hethong24h.net"><strong>24H NET</strong></a>.
                        <br>- Yêu cầu đăng ký Page của bạn đã được phê duyệt thành công !
                        <br>- Truy cập ngay đường link <a href="https://hethong24h.net/danhsach.php">tại đây</a> để xem ngay !
                        <br>- Hãy gửi đường link "https://hethong24h.net/dangky.php" cho các thành viên ad của mình để họ tham gia ngay nào ! 
                        <br>- Xin cảm ơn bạn đã tin tưởng và sử dụng dịch vụ của <a href="https://hethong24h.net"><strong>24H NET</strong></a>';   // Noi dung email
    $title = 'Chúc mừng Page "" đã đăng ký thành công';   //Tieu de gui mail
    $mail->IsSMTP();
    $mail->CharSet  = "utf-8";
    $mail->SMTPDebug  = 0;   // enables SMTP debug information (for testing)
    $mail->SMTPAuth   = true;    // enable SMTP authentication
    $mail->SMTPSecure = "ssl";   // sets the prefix to the servier
    $mail->Host       = "smtp.zoho.com";    // sever gui mail.
    $mail->Port       = 465;         // cong gui mail de nguyen
    // xong phan cau hinh bat dau phan gui mail
    $mail->Username   = $mFrom;  // khai bao dia chi email
    $mail->Password   = $mPass;              // khai bao mat khau
    $mail->SetFrom($mFrom, $nFrom);
    $mail->AddReplyTo('Admin@hethong24h.net'); //khi nguoi dung phan hoi se duoc gui den email nay
    $mail->Subject    = $title;// tieu de email
    $mail->MsgHTML($body);// noi dung chinh cua mail se nam o day.
    $mail->AddAddress($mTo, $nTo);
    // thuc thi lenh gui mail
    if(!$mail->Send()) {
        echo 'Email không tồn tại hoặc không đúng !';

    } else {

        echo 'Bạn vừa thực hiện yêu cầu, hãy kiếm tra hộp thư đến. ';
    }
?>
