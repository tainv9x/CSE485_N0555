<?php include 'top_page1.php' ?>
<div>
     <h2>Tìm kiếm </h2>
    <form name="timkiem" action="search.php" method="post">
    <input type="text" name="user" value="" size="25px" />
    <input type="submit" name="ok" value="Tìm Kiếm" />
    </form>
</div>
<style>
    tbody>tr>td{
    text-align: left;
    padding: 10px;
    vertical-align: top;
    border-top: 1px solid #ddd;
}
.title{
    color:green;
}
</style>
<table align="left" width="1500" border="0">
    <tr>
        <td class="title" style="text-align:center">STT</td>
        <td class="title" style="text-align:center" >Tên</td> 
        <td class="title" style="text-align:center" >Tài khoản</td>
        <td class="title" style="text-align:center">Mật khẩu</td>
        <td class="title" style="text-align:center">MKC2</td>
        <td class="title" style="text-align:center">Email</td>
        <td class="title" style="text-align:center">Giới tính</td>
        <td class="title" style="text-align:center">Số dư</td>
    </tr>
    <?php
    if(isset($_POST['ok'])){
        if($_POST['user']==""){
            echo "Vui lòng nhập từ khóa tìm kiếm!";    
        }else{
            $user=$_POST['user'];
        }    
    }
    if($user){

            $conn=mysql_connect("localhost","axunlifohosting_tai","taikuteyh1");
            mysql_select_db("axunlifohosting_tai2",$conn);
			mysql_set_charset('UTF8');
    $sql="select * from users where ((name LIKE n'%$user%' )or( userName LIKE '%$user%') or ( gender LIKE '%$user%') or ( email LIKE '%$user%'))";
    $query=mysql_query($sql);
    if(mysql_num_rows($query)!=""){
    $stt=0;
    while($row=mysql_fetch_array($query)){
    $stt++;
    echo "<tr>";
    echo "<td>".$stt."</td>";
    echo "<td>".$row['name']."</td>";
    echo "<td>".$row['userName']."</td>";
    echo "<td>".$row['password']."</td>";
    echo "<td>".$row['mk2']."</td>";
    echo "<td>".$row['email']."</td>";
    echo "<td>".$row['gender']."</td>";
    echo "<td>".$row['sodu']."</td>";
    echo "</tr>";
    }
    }else{
    echo "<tr><td colspan='4' align='center'>Chưa có thành viên nào</td></tr>";
    }
    }
    ?>
</table>