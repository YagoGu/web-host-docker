<!DOCTYPE html>
<html>
<head>
    <link rel="icon" type="image/x-icon" href="icono.ico">
    <meta charset="utf-8">
    <title>The Library</title>
	<link rel="stylesheet" href="plantilla.css">
</head>
<body>
    <?php
        $hostname = "192.168.0.8";
        $username = "noadmin";
        $password = "password";
        $database = "BBDDLibrary";
        $conexion = mysqli_connect($hostname, $username, $password, $database, 3306);

        if (!$conexion) {
            die('Error de conexión (' . mysqli_connect_errno() . ') '
                    . mysqli_connect_error());
        }
        else {
            $sql_total = "SELECT COUNT(*) FROM books";
            $resultado_total = mysqli_query($conexion, $sql_total);
            $fila_total = mysqli_fetch_row($resultado_total);
            $total_libros = $fila_total[0];

            echo "<h2>The Library</h2>";
            echo "<p id='total-libros'><b>Total books: </b>" . $total_libros . "</p>";

            if ($total_libros > 0) {
                $sql_libros = "SELECT book_id, book_title, author_name, book_description, book_photo FROM books";
                $resultado_libros = mysqli_query($conexion, $sql_libros);

                while($row = mysqli_fetch_assoc($resultado_libros)) {
                    echo "<div class='libro'>";
                        echo "<img src='/portada_libros/" . $row["book_photo"]. "' class='libro__imagen'>";
                        echo "<div class='libro__contenido'>";
                            echo "<p class='libro__id'><b>ID:</b> " . $row["book_id"] . "</p>";
                            echo "<p class='libro__titulo'><b>Title:</b> " . $row["book_title"] . "</p>";
                            echo "<p class='libro__autor'><b>Author:</b> " . $row["author_name"] . "</p>";
                            echo "<p class='libro__descripcion'><b>Description:</b> " . $row["book_description"] . "</p>";
                        echo "</div>";
                    echo "</div>";
                }
            } else {
                echo "<h1> There is no books </h1>";
            }
        }
    ?>
</body>
</html>
