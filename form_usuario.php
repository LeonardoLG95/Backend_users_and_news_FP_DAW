<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="utf-8"/>
    <title>Formulario usuarios</title>
</head>
<body>
<?php
require 'funciones_bd.php';

//Set variables
if(isset($_POST['id'])){
    $id=$_POST['id'];
}
if(isset($_POST['nombre'])){
    $nombre=$_POST['nombre'];
}
if(isset($_POST['email'])){
    $email=$_POST['email'];
}
if(isset($_POST['clave1'])){
    $clave1=$_POST['clave1'];
}
if(isset($_POST['clave2'])){
    $clave2=$_POST['clave2'];
}
if(isset($_POST['direccion'])){
    $direccion=$_POST['direccion'];
}
if(isset($_POST['codigo_postal'])){
    $codigo_postal=$_POST['codigo_postal'];
}
if(isset($_POST['provincia'])){
    $provincia=$_POST['provincia'];
}
if(isset($_POST['genero'])){
    $genero=$_POST['genero'];
}
if(isset($_POST['fecha_nacimiento'])){
    $fecha_nacimiento=new DateTime($_POST['fecha_nacimiento']);
    $edad=$fecha_nacimiento->diff(new DateTime('today'))->y;

    //Pasar fecha a formato que admite Mysql
    $fecha_nacimiento=$fecha_nacimiento->format('Y-m-d'); 
}

//Set variables exclusivas de actualización
if(isset($_POST['hash'])){
    $hash=$_POST['hash'];
}
if(isset($_POST['claveForm'])){
    $claveForm=$_POST['claveForm'];
}
if(isset($_POST['nClave1'])){
    $nClave1=$_POST['nClave1'];
}
if(isset($_POST['nClave2'])){
    $nClave2=$_POST['nClave2'];
}
if(isset($_POST['emailAntiguo'])){
    $emailAntiguo=$_POST['emailAntiguo'];
}

/////////If envio datos del registro//////////////
if(isset($_POST['registro'])){

    $emailExiste=comprobarEmail($email);

    //Comprobación dos claves coinciden y el email no existe
    if($clave1==$clave2 && !$emailExiste){

        $clave=password_hash($clave1, PASSWORD_DEFAULT); 

        $insercion=insertarUsuario($nombre,$clave,$email,$edad,$fecha_nacimiento,
            $direccion,$codigo_postal,$provincia,$genero);

        formularioCreacion();

        //Errores
        if(isset($insercion)){
            if($insercion){?>
                <p style="color: red;">¡El usuario se ha registrado correctamente!</p>
<?php
            }
            else{?>
                <p style="color: red;">¡Error al registrar un nuevo usuario!</p>
<?php       }
        }
    }
    //Mensaje de error si el email existe
    else if($emailExiste){
        formularioCreacion();?>
        <p style="color: red;">¡Ya existe una cuenta con ese email!</p>
<?php
    }
    //Si las claves no están bien, formulario y mensaje de error
    else{
        formularioCreacion();?>
        <p style="color: red;">¡Las claves no coinciden!</p>
<?php
    }
}


/////////Ifs para la actualización de usuarios////////////
else if(isset($_POST['editarUsuario'])){
    //Cuando el usuario aun no ha insertado nada el email y emailAntiguo son el mismo (el último email).
    formularioActualizacion($id,$nombre,$email,$email,$fecha_nacimiento,$genero,$provincia,$direccion,$codigo_postal,$hash);            
}
else if(isset($_POST['actualizar'])){
    $accesoEmail=false;

    //Si el email sigue siendo el mismo/ no se ha cambiado
    if($email==$emailAntiguo){
        $accesoEmail=true;
    }
    else{
        $emailExiste=comprobarEmail($email);
        //Si email no existe/ el nuevo email no esta registrado
        if(!$emailExiste){
            $accesoEmail=true;
        }
        //Si email existe/ no se puede actualizar porque ya lo ha registrado otro usuario
        else{
            $accesoEmail=false;
        }
    }
        

    /*Comparo si la clave es igual a la que tenia y si las nuevas claves son iguales o no,
    o estan vacías (ya que la idea es poder actualizar sin tener que cambiar la contraseña si no se desea)*/
    if(password_verify($claveForm,$hash) && $accesoEmail && ($nClave1==$nClave2 || ($nClave1=='' && $nClave2==''))){

        //Hashear la nueva clave, ya que si a pasado el if ambas son iguales.
        if($nClave1!=''){
            $hash=password_hash($nClave1, PASSWORD_DEFAULT);
        }

        //Envio de nuevos datos
        $actualizacion=editarUsuario($id,$nombre,$email,$fecha_nacimiento,$edad,$genero,$provincia,$direccion,$codigo_postal,$hash);
        
        //Vuelvo a mostrar el formulario con los nuevos datos
        formularioActualizacion($id,$nombre,$email,$email,$fecha_nacimiento,$genero,$provincia,$direccion,$codigo_postal,$hash);

        //Errores
        if(isset($actualizacion)){
            if($actualizacion){?>
                <p style="color: red;">¡El usuario se ha actualizado correctamente!</p>
<?php
            }
            else{?>
                <p style="color: red;">¡Error al actualizar el usuario!</p>
<?php
            }
        }

    }
    //Mostrar error si el email existe
    else if($emailExiste){
        formularioActualizacion($id,$nombre,$email,$emailAntiguo,$fecha_nacimiento,$genero,$provincia,$direccion,$codigo_postal,$hash);
?>
            <p style="color: red;">¡Error, el email con el que intentas actualizar ya esta registrado!</p>
<?php
    }
    //Errores en las contraseñas
    else{
        formularioActualizacion($id,$nombre,$email,$emailAntiguo,$fecha_nacimiento,$genero,$provincia,$direccion,$codigo_postal,$hash);
        if(!password_verify($claveForm,$hash)){?>
            <p style="color: red;">¡Error, contraseña incorrecta!</p>
<?php
        }
        else if($nClave1!=$nClave2){?>
            <p style="color: red;">¡Error, la nueva contraseña y la repetición no coinciden!</p>
<?php
        }
        else{?>
            <p style="color: red;">¡Error al actualizar el usuario, hay un error en las contraseñas no registrado!</p>
<?php            
        }
    }
}

////////Ifs borrado de usuarios///////////

//Confirmación de borrado
else if(isset($_POST['borrarUsuario'])){
    formularioBorrado($id,$nombre);
}
else if(isset($_POST['borrar'])){
    borrarUsuario($id);

    //Redirigir una vez borrado
    header('Location: list_usuarios.php');
}

//Cuando no se viene de ninguna opción
else{
    formularioCreacion();
}

//Formulario creación-----------------------------------------------------------------------------
function formularioCreacion(){?>
    <h2>Nuevo usuario:</h2>
    <form method="post" action="form_usuario.php">
        <label for="usu">Usuario: </label>
        <input type="text" id="usu" name="nombre" minlength="3" maxlength="50" size="50" placeholder="Tu nombre de usuario" required>
        <br><br>
        <label for="clave1">Contraseña: </label>
        <input type="password" id="clave1" name="clave1" minlegth="5" maxlength="255" size="25" placeholder="Una contraseña segura" required>
        <br><br>
        <label for="clave2">Repite la contraseña: </label>
        <input type="password" id="clave2" name="clave2" minlegth="5" maxlength="255" size="25" placeholder="Repite la contraseña" required>
        <br><br>
        <label for="email">Email: </label>
        <input type="text" id="email" name="email" minlength="8" maxlength="200" size="50" placeholder="ejemplo@ejemplo.com" required>
        <br><br>
        <label for="nac">Fecha de nacimiento: </label>
        <input id="nac" type="date" name="fecha_nacimiento" required>
        <label for="genero">| Género: </label>
        <select id="genero" name="genero">
            <option value="f">Femenino</option>
            <option value="m">Masculino</option>
        </select>
        <br><br>
        <label for="prov">Provincia: </label>
        <input type="text" id="prov" name="provincia" minlength="3" maxlength="100" size="50" placeholder="Madrid" required>
        <br><br>
        <label for="dir">Dirección: </label>
        <input type="text" id="dir" name="direccion" minlength="8" maxlength="200" size="50" placeholder="Calle del ejemplo, 1º, 1ºA" required>
        <label for="cod"> | Código Postal: </label>
        <input type="number" id="cod" name="codigo_postal" min="00000" max="99999" size="5" placeholder="28001" required>
        <br><br>
        <input type="submit" name="registro" value="Registrarse">
        <input type="reset" value="Limpiar">
    </form>
<?php 
}

//Formulario de actualización-------------------------------------------------------------------
function formularioActualizacion($id,$nombre,$email,$emailAntiguo,$fecha_nacimiento,$genero,$provincia,$direccion,$codigo_postal,$hash){ ?>
    <h2>Editar usuario <?=$nombre?>:</h2>
    <form method="post" action="form_usuario.php">
        <label for="usu">Usuario: </label>
        <input type="text" id="usu" name="nombre" minlength="3" maxlength="50" size="50" placeholder="Tu nombre de usuario"  value="<?=$nombre?>" required>
        <br><br>
        <label for="email">Email: </label>
        <input type="text" id="email" name="email" minlength="8" maxlength="200" size="50" placeholder="ejemplo@ejemplo.com"  value="<?=$email?>" required>
        <br><br>
        <label for="nac">Fecha de nacimiento: </label>
        <input id="nac" type="date" name="fecha_nacimiento"  value="<?=$fecha_nacimiento?>" required>
        <label for="genero">| Género: </label>
        <select id="genero" name="genero" value="<?=$genero?>">
            <?php
            //Para que primero este el género que tenía
            if($genero=='m'){?>
                <option value="m">Masculino</option>
                <option value="f">Femenino</option>
            <?php
            }
            else{?>
                <option value="f">Femenino</option>
                <option value="m">Masculino</option>
            <?php
            }
            ?>
        </select>
        <br><br>
        <label for="prov">Provincia: </label>
        <input type="text" id="prov" name="provincia" minlength="3" maxlength="100" size="50" placeholder="Madrid" value="<?=$provincia?>" required>
        <br><br>
        <label for="dir">Dirección: </label>
        <input type="text" id="dir" name="direccion" minlength="8" maxlength="200" size="50" placeholder="Calle del ejemplo, 1º, 1ºA" value="<?=$direccion?>" required>
        <label for="cod"> | Código Postal: </label>
        <input type="number" id="cod" name="codigo_postal" min="00000" max="99999" size="5" placeholder="28001" value="<?=$codigo_postal?>" required>
        <br><br>
        <label for="claveForm">Contraseña: </label>
        <input type="password" id="claveForm" name="claveForm" minlength="5" maxlength="255" size="25" placeholder="Tu contraseña actual" value="" required>
        <br>
        <p><b>Si no deseas cambiar tu contraseña deja los siguientes campos en blanco:</b></p>
        <label for="nClave1">Nueva contraseña: </label>
        <input type="password" id="nClave1" name="nClave1" minlength="5" maxlength="255" size="25" placeholder="Tu nueva contraseña" value="">
        <br><br>
        <label for="nClave2">Repite tu nueva contraseña: </label>
        <input type="password" id="nClave2" name="nClave2" minlength="5" maxlength="255" size="25" placeholder="Repite tu nueva contraseña" value="">
        <br><br>
        <input type="hidden" name="hash" value="<?=$hash?>">
        <input type="hidden" name="emailAntiguo" value="<?=$emailAntiguo?>">
        <input type="hidden" name="id" value="<?=$id?>">
        <input type="submit" name="actualizar" value="Actualizar">
        <input type="reset" value="Restablecer">
    </form>
<?php
}

//Formulario de confirmación de borrado--------------------------------------------------
function formularioBorrado($id,$nombre){?>
    <h2 style="color:red;">¿Borrar usuario <?=$nombre?>?</h2>
    <form method="post" action="form_usuario.php">
        <input type="hidden" name="id" value="<?=$id?>">
        <input type="submit" name="borrar" value="Borrar">
    </form>
    <a href="list_usuarios.php"><input type="button" value="Volver"></a>
    <br><br>
    <?php
}
//Botones para regresar según que formulario se muestre
?>
<br>
<?php
if(isset($_POST['nuevo'])){?>
    <a href="login.php"><input type="button" value="Volver"></a>
<?php
}
else{?>
    <a href="index.php"><input type="button" value="Menú principal"></a><a href="list_usuarios.php"><input type="button" value="Lista de usuarios"></a>
<?php
}?>
</body>