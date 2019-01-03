<?
$server	= 'localhost';	
$username	= 'axunlifohosting_tai';
$password	= 'taikuteyh1';	
$database	= 'axunlifohosting_tai2';	
// chon co so du lieu lam viec

$conn = mysqli_connect($server,$username,$password,$database) or die ('Lỗi kết nối');
mysqli_set_charset($conn, "utf8");

// session_start();	// Khoi dong session	
$s_id = session_id();	// Bien s_id	
$time = time();	// Lay thoi gian hien tai 
$time_secs = 900;	// Thoi gian tinh bang seconds de delete & insert cai $s_id	moi,  
$time_out = $time - $time_secs;	// Lay thoi gian hien tai	

mysqli_query($conn,"DELETE FROM stats WHERE s_time < '$time_out'");	// Delete tat ca nhung rows trong khoang thoi gian qui dinh san
mysqli_query($conn,"DELETE FROM stats WHERE s_id = '$s_id'");	// Delete cai $s_id cua chinh thang nay
mysqli_query($conn,"INSERT INTO stats (s_id, s_time) VALUES ('$s_id', $time)");	// Delete no xong lai insert chinh no
$user_online = mysqli_num_rows(mysqli_query($conn,"SELECT id FROM stats"));	// Dem so dong trong table stats, chinh la so nguoi dang online
// Tong luot truy cap
list($page_visited) = mysqli_fetch_array(mysqli_query($conn,"SELECT MAX(id) FROM stats"));
// Echo
echo "<a style ='color:blue;'>Số người Online: ".$user_online."</a><br>";
echo "<a style ='color:#8bc53f;'>Lượt truy cập: ".$page_visited."</a>";
?>