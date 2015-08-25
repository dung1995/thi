<?php 
	$serial=$_GET['serial'];
	if(isset($_GET['edit'])){
		$ten=$_GET['ten'];
		$gia=$_GET['gia'];
		$anh=$_GET['anh'];
	
	mysql_connect('localhost','root','');
	mysql_select_db('shopping');
	$sql="UPDATE products SET name='".$ten."', price='".$gia."', picture='".$anh."' WHERE serial='".$serial."' ";
	$qr=mysql_query($sql);
	header('location:index.php');
	}
?>
<body>
<form action="" method="get">
<table>
<input type="hidden" name="serial" value="<?php echo $serial ?>"/>
<input type="hidden" name="edit" />
<tr>
		<td>TEN SAN PHAM</td>
		<td><input type="text" name="ten" /></td>
	</tr>
	<tr>
		<td>GIA</td>
		<td><input type="text" name="gia" /></td>
	</tr>
	<tr>
		<td>ANH</td>
		<td><input type="file" name="anh" /></td>
	</tr>
	<tr>
		
		<td><input type="submit" name="submit" /></td>
	</tr>
</table>
</form>
</body>