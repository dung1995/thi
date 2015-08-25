<?php 
	mysql_connect('localhost','root','');
	mysql_select_db('shopping');
?>
<?php 
	$serial=$_POST['serial'];
	$name=$_POST['ten'];
	$price=$_POST['gia'];
	$picture=$_POST['anh'];
	
	$sql="INSERT INTO products VALUES('$serial','$name','$price','$picture')";
	$qr=mysql_query($sql);
	header('location:index.php');
?>