<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="utf-8"/>
        <title>Inicio</title>
    </head>
    <body>
        <?php
        session_start();

        //Si la variable de sesion no está redirige a login
        if(!$_SESSION['usr']){
            header('Location: login.php');
        }

        //Cerrar sesión
        if(isset($_POST['cerrar'])){
            //Borrar cookie
            if(isset($_COOKIE['likes'])){
                setcookie('likes',0,1);
            }

            session_unset();
            session_destroy();
            
            //Redirección a login
            header('Location: login.php');
        }
        ?>
        <h2>Bienvenido al menú <?=$_SESSION['usr']?>:</h2>
        <form method="post" action="index.php">
            <input type="submit" name="cerrar" value="Cerrar sesión">
        </form>
        <br><br>
        <a href="list_usuarios.php"><input type="button" value="Lista de usuarios"></a>
        <br><br>
        <a href="list_noticias.php"><input type="button" value="Lista de noticias"></a>
        <br><br>
        <a href="form_usuario.php"><input type="button" value="Nuevo usuario"></a>
        <br><br>
        <a href="form_noticia.php"><input type="button" value="Nueva de noticia"></a>
    </body>
</html>