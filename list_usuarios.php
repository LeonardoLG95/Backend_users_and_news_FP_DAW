<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="utf-8"/>
        <title>Lista de usuarios</title>
    </head>
<body>
<?php
    session_start();

    //Si la variable de sesion no está redirige a login
    if(!$_SESSION['usr']){
        header('Location: login.php');
    }
    require 'funciones_bd.php';

    //Cantidad de usuarios que se verán en cada página
    $cant=10;
?>
<br>
<a href="form_usuario.php"><input type="button" value="Nuevo Usuario"></a>
<br><br>
<table style="text-align:center;border: 1px solid black">
    <thead>
        <tr>
            <th width="50">Id</th>
            <th width="200">Nombre</th>
            <th width="200">Email</th>
            <th width="50">Edad</th>
            <th width="200">Fecha de nacimiento</th>
            <th width="200">Dirección</th>
            <th width="200">Código postal</th>
            <th width="200">Provincia</th>
            <th width="50">Género</th>
        </tr>
    </thead>
    <tbody>
<?php
/*Si la variable no esta declarada que la inicialice a 0, 
y cuente la cantidad de registros*/
if(isset($_POST['pag'])){
    $pag=$_POST['pag'];
    //Envio del total con los botones de la lista para no repetir la consulta
    $total=$_POST['total'];
}
else{
    $pag=0;
    $total=totalUsuarios();
}

//Consulta de usuarios
$listaUsuarios=mostrarUsuarios($pag,$cant);

//Presentación de los usuarios en el HTML
while($usu=mysqli_fetch_array($listaUsuarios)){
?>      
<tr>
    <td><?=$usu['id']?></td>
    <td><?=$usu['nombre']?></td>
    <td><?=$usu['email']?></td>
    <td><?=$usu['edad']?></td>
    <td><?=$usu['fecha_nacimiento']?></td>
    <td><?=$usu['direccion']?></td>
    <td><?=$usu['codigo_postal']?></td>
    <td><?=$usu['provincia']?></td>
    <td>
        <?php 
        //Genero con char para ahorrar espacio en bd
        if($usu['genero']=='m'){?>
            Masculino<?php 
        }
        else{?>
            Femenino<?php
        }?>
    </td>
    <!--Uso formularios para pasar los datos entre archivos-->
    <td>
        <form method="post" action="form_usuario.php">
            <input type="hidden" name="id" value="<?=$usu['id']?>">
            <input type="hidden" name="nombre" value="<?=$usu['nombre']?>">
            <input type="hidden" name="hash" value="<?=$usu['password']?>">
            <input type="hidden" name="email" value="<?=$usu['email']?>">
            <input type="hidden" name="fecha_nacimiento" value="<?=$usu['fecha_nacimiento']?>">
            <input type="hidden" name="direccion" value="<?=$usu['direccion']?>">
            <input type="hidden" name="codigo_postal" value="<?=$usu['codigo_postal']?>">
            <input type="hidden" name="provincia" value="<?=$usu['provincia']?>">
            <input type="hidden" name="genero" value="<?=$usu['genero']?>">
            <input type="submit" name="editarUsuario" value="Editar">
        </form>
    </td>
    <td>
        <form method="post" action="form_usuario.php">
            <input type="hidden" name="id" value="<?=$usu['id']?>">
            <input type="hidden" name="nombre" value="<?=$usu['nombre']?>">
            <input type="submit" name="borrarUsuario" value="Borrar">
        </form>
    </td>
</tr>
<?php
}
?>
    </tbody>
</table>
<br><br>
<?php
//Botones para la paginación
if($pag>0){?>
    <form method="post" action="list_usuarios.php">
        <input type="hidden" name=pag value="<?=$pag-10?>">
        <input type="hidden" name=total value="<?=$total?>">
        <input type="submit" value="Anterior">
    </form>
<?php
}
if($pag+10<=$total){?>
    <form method="post" action="list_usuarios.php">
        <input type="hidden" name=pag value="<?=$pag+10?>">
        <input type="hidden" name=total value="<?=$total?>">
        <input type="submit" value="Siguiente">
    </form>
<?php
}
//Botón para volver
?>
<br><br>
<a href="index.php"><input type="button" value="Menú principal"></a>
</body>
</html>