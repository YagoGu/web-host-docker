<?php include_once('conexio.php');?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
	<title>The Library</title>
	<meta http-equiv="content-type" content="text/html;charset=utf-8" />
	<meta name="generator" content="Geany 1.34.1" />
</head>

<body>

	<?php
	$sql="SELECT * FROM Books";
	$resultado = mysqli_query($conexion, $sql);
	echo "<h2>The Library</h2>";
	echo "<p><b>Total de libros: </b>" . mysqli_num_rows($resultado). "</p>";
	if (mysqli_num_rows($resultado) > 0) {
		echo "<ul>";
		while($row = mysqli_fetch_assoc($resultado)) {
			echo "<li>book_id: " . $row["book_id"]. " | book_title: " . $row["book_title"]. " | author_name: " . $row["author_name"]. " | book_description: " . $row["book_description"]. " " . $row["book_photo"]. "</li>";
			echo "<img src='". $row["book_photo"]. "' width='250' height='250' style='border:5px solid black'>";
			}
		echo "</ul>";
	} else {
		echo "<h1> No hay libros </h1>";
		}
	?>

</body>

</html>
