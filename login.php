<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="utf-8"/>
    <title>Vista usuario</title>
</head>
<body>
<?php
require 'funciones_bd.php';

//If para iniciar sesión---------------------
if(isset($_POST['login'])){

    if(isset($_POST['sesionEmail'])){
        //Comprobar que el email está en bd
        $usuario=inicioSesion($_POST['sesionEmail']);

        if(mysqli_num_rows($usuario)!=0){
            $usu=mysqli_fetch_array($usuario);
            $hash=$usu['password'];

            if(isset($_POST['sesionCon'])){
                $sesionCon=$_POST['sesionCon'];

                //Compara contraseña con el hash almacenado en la bd
                if(password_verify($sesionCon,$hash)){
                    session_start();

                    //Variable de sesión para comprobar y recuperar el nombre en el menu
                    $_SESSION['usr']=$usu['nombre'];

                    header('Location: index.php');
                }
                //Email válido, contraseña incorrecta
                else{
                    menuLogin($_POST['sesionEmail'],$_POST['sesionCon']);?>
                    <p style="color: red;">¡Error al iniciar sesión, contraseña incorrecta!</p>
                    <?php
                }
            }
            //Email válido, contraseña vacía
            else{
                menuLogin($_POST['sesionEmail']);?>
                <p style="color: red;">¡Error al iniciar sesión, contraseña vacía!</p>
                <?php
            }
        }
        //Email incorrecto o vacío, contaseña no comprobada
        else{
            menuLogin($_POST['sesionEmail'],$_POST['sesionCon']);?>
            <p style="color: red;">¡Error al iniciar sesión, email incorrecto!</p>
<?php
        }
    }
}

//Si no se a pulsado nunca login formulario vacío
else{
    menuLogin();
}

//Menú de login----------------------------------------------
function menuLogin($sesionEmail='',$sesionCon=''){?>
    <h3>Login:</h3>
    <form method="post" action="login.php">
        <label for="sesionEmail">Email: </label><input type="text" id="sesionEmail" name="sesionEmail" value="<?=$sesionEmail?>">
        <br><br>
        <label for="sesionCon">Contraseña: </label><input type="password" id="sesionCon" name="sesionCon" value="<?=$sesionCon?>">
        <br><br>
        <input type="submit" name="login" value="Entrar">
    </form>
    <br><br>
    <form method="post" action="form_usuario.php">
        <input type="hidden" name="nuevo" value="1">
        <input type="submit" name="sign" value="Nuevo Usuario">
    </form>
<?php
}
?>
</body>
</html>