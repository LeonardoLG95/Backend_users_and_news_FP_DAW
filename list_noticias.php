<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="utf-8"/>
        <title>Lista de noticias</title>
</head>
<body>
<?php
    session_start();

    //Si la variable de sesion no está redirige a login
    if(!$_SESSION['usr']){
        header('Location: login.php');
    }
    require 'funciones_bd.php';

    //Cantidad de noticias que se verán en cada página
    $cant=10;
    
    /*El objetivo era demostrar que sabiamos manejar cookies, 
    y en este caso se crea una cookie que contabiliza 
    todos los likes dados en una misma variable, 
    sin restricciones, límite o identificación de noticia*/

    if(isset($_POST['likePulsado'])){
        //Si esta creada suma 1, si no, creala con el valor de 1
        if(isset($_COOKIE['likes'])){
            $valorCookie=$_COOKIE['likes'];
            $valorCookie++;
            setcookie('likes',$valorCookie);
        }
        else{
            setcookie('likes',1);
        }

        //Envio del like a la bd
        $likes=$_POST['likes'];
        $id=$_POST['id'];
        $likes++;

        insertarLikes($id,$likes);

        /*
        Redirijo a la misma página para evitar el problema de 
        que php crea/ edita la cookie despues de cargar la 
        página en el navegador, siempre viendo un like menos de los que hay.
        */
        header('Location: list_noticias.php');  
    }

    /*Si la pagina no esta declarada que la inicialice a 0, 
    y cuente la cantidad de registros*/
    if(isset($_POST['pag'])){
        $pag=$_POST['pag'];
        //Envio del total con los botones de la lista para no repetir la consulta
        $total=$_POST['total'];
    }
    else{
        $pag=0;
        $total=totalNoticias();
    }

    //Consulta con las noticias
    $listaNoticias=mostrarNoticias($pag,$cant);
?>
<br>
<a href="form_noticia.php"><input type="button" value="Nueva noticia"></a>
<br><br>
<table style="text-align:center;border: 1px solid black">
    <thead>
        <tr>
            <th width="50">Id</th>
            <th width="200">Título</th>
            <th width="200">Contenido</th>
            <th width="50">Autor</th>
            <th width="200">Hora</th>
            <th width="200">Likes</th>
        </tr>
    </thead>
    <tbody>
<?php
//Presentación de las noticias en el HTML
while($not=mysqli_fetch_array($listaNoticias)){?>      
    <tr>
        <td><?=$not['id']?></td>
        <td><?=$not['titulo']?></td>
        <td><?=$not['contenido']?></td>
        <td><?=$not['autor']?></td>
        <td><?=$not['hora']?></td>
        <td><?=$not['likes']?></td>
        <!--Formularios con campos hidden para pasar los datos entre archivos-->
        <td>
            <form method="post" action="list_noticias.php">
                <input type="hidden" name="id" value="<?=$not['id']?>">
                <input type="hidden" name="likes" value="<?=$not['likes']?>">
                <input type="submit" name="likePulsado" value="Like">
            </form>
        </td>
        <td>
            <form method="post" action="form_noticia.php">
                <input type="hidden" name="id" value="<?=$not['id']?>">
                <input type="hidden" name="titulo" value="<?=$not['titulo']?>">
                <input type="hidden" name="contenido" value="<?=$not['contenido']?>">
                <input type="hidden" name="autor" value="<?=$not['autor']?>">
                <input type="submit" name="editarNoticia" value="Editar">
            </form>
        </td>
        <td>
            <form method="post" action="form_noticia.php">
                <input type="hidden" name="id" value="<?=$not['id']?>">
                <input type="hidden" name="titulo" value="<?=$not['titulo']?>">
                <input type="submit" name="borrarNoticia" value="Borrar">
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
//Botones de paginación
if($pag>0){?>
    <form method="post" action="list_noticias.php">
        <input type="hidden" name=pag value="<?=$pag-10?>">
        <input type="hidden" name=total value="<?=$total?>">
        <input type="submit" value="Anterior">
    </form>
<?php
}
if($pag+10<=$total){?>
    <form method="post" action="list_noticias.php">
        <input type="hidden" name=pag value="<?=$pag+10?>">
        <input type="hidden" name=total value="<?=$total?>">
        <input type="submit" value="Siguiente">
    </form>
<?php
}
//Botones para volver
?>
<br>
<a href="index.php"><input type="button" value="Menú principal"></a>
<br><br>
<?php
//Mensaje para mostrar los datos de la cookie like
if(isset($_COOKIE['likes'])){?>
    <p style="color:red;"><?=$_SESSION['usr']?> has dado <?=$_COOKIE['likes']?> like.</p>
<?php
}
?>
</body>
</html>