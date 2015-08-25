<?php 
	mysql_connect('localhost','root','');
	mysql_select_db('shopping');
	$qr=mysql_query('select * from products');
?>
<body>
<h2>THONG TIN SAN PHAM</h2>
<table border="1">
	<tr>
		<td>ID</td>
		<td>TEN SAN PHAM</td>
		<td>GIA</td>
		<td>ANH</td>
		<td>CHUC NANG</td>
	</tr>
	<?php 
		while($r=mysql_fetch_array($qr)){
			echo '<tr>';
				echo '<td>'.$r['serial'].'</td>';
				echo '<td>'.$r['name'].'</td>';
				echo '<td>'.$r['price'].'</td>';
				echo '<td>'.$r['picture'].'</td>';
				echo '<td>
						<a href="them.php">THEM</a> |
						<a href="sua.php?serial='.$r['serial'].'">SUA<a> |
						<a href="xoa.php?serial='.$r['serial'].'">XOA<a>
				</td>';
			echo '</tr>';
		}
	?>
</table>
</body>