<?php
	//goi thu vien
	include('class.smtp.php');
	include "class.phpmailer.php";
	include "functions.php";
	$title = 'Yêu cầu khôi phục mật khẩu';
	$content = 'Hệ thống 24h xin chào ! <br>
                Xin cảm ơn !';
	$nTo = '';
	$mTo = 'tainv62@wru.vn';
	$diachicc = '';
	//test gui mail
	$mail = sendMail($title, $content, $nTo, $mTo,$diachicc='');
	if($mail==1)
	echo 'Bạn vừa thực hiện yêu cầu, hãy kiếm tra trong hòm thư đến.';
	else echo 'Địa chỉ email của bạn không tồn tại hoặc không đúng !';
?>
