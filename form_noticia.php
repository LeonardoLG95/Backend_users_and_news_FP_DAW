<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="utf-8"/>
    <title>Formulario noticias</title>
</head>
<body>
<?php
session_start();

//Si la variable de sesion no está redirige a login
if(!$_SESSION['usr']){
    header('Location: login.php');
}

//Set variables
if(isset($_POST['id'])){
    $id=$_POST['id'];
}
if(isset($_POST['titulo'])){
    $titulo=$_POST['titulo'];
}
if(isset($_POST['contenido'])){
    $contenido=$_POST['contenido'];
}
if(isset($_POST['autor'])){
    $autor=$_POST['autor'];
}

//////Ifs envio de datos nueva noticia////////
if(isset($_POST['registro'])){

    require 'funciones_bd.php';

    $insercion=insertarNoticia($titulo,$contenido,$autor);
    
    formularioCreacion();

    //Errores
    if(isset($insercion)){
        if($insercion){?>
            <p style="color: red;">¡La noticia ha sido creada correctamente!</p>
<?php
        }
        else{?>
            <p style="color: red;">¡Error al crear la noticia!</p>
<?php   }
    }
}

/////Ifs actualización de noticia//////

//Presenta formulario para actualizar
else if(isset($_POST['editarNoticia'])){
    formularioActualizacion($id,$titulo,$contenido,$autor);
}

//Actualiza
else if(isset($_POST['actualizar'])){

    require 'funciones_bd.php';

    //Envio de datos
    $actualizacion=editarNoticia($id,$titulo,$contenido,$autor);

    //Formulario actualizar con nuevos datos
    formularioActualizacion($id,$titulo,$contenido,$autor);

    //Errores
    if(isset($actualizacion)){
        if($actualizacion){?>
            <p style="color: red;">¡La noticia se ha actualizado correctamente!</p>
<?php
            }
        else{?>
            <p style="color: red;">¡Error al actualizar la noticia!</p>
<?php
        }
    }
}

//////////Ifs para borrar noticias////////////

//Presentación del formulario de confirmación
else if(isset($_POST['borrarNoticia'])){
    formularioBorrar($id,$titulo);   
}
else if(isset($_POST['borrar'])){

    require 'funciones_bd.php';

    borrarNoticia($id);

    //Devuelver al usuario a la lista de noticias
    header('Location: list_noticias.php');
}

//////////Else formulario de creación////////
else{
    formularioCreacion();
}

//Formulario creación-----------------------------------------------------------------------------
function formularioCreacion(){?>
    <h2>Nueva noticia:</h2>
    <!--Formulario HTML con las mismas restricciones que la tabla noticias-->
    <form method="post" action="form_noticia.php">
        <label for="titulo">Título:</label>
        <br>
        <input type="text" id="titulo" name="titulo" maxlength="200" size="50" placeholder="Título de la noticia" required>
        <br><br>
        <label for="contenido">Contenido:</label>
        <br>
        <textarea id="contenido" name="contenido" cols="60" rows="30" maxlength="300" size="20" placeholder="Contenido de la noticia." required></textarea>
        <br><br>
        <label for="autor">Autor:</label>
        <input type="text" id="autor" name="autor" minlength="3" maxlength="100" size="30" placeholder="Tu nombre o nick" required>
        <br><br>
        <input type="submit" name="registro" value="Enviar noticia">
        <input type="reset" value="Limpiar">
    </form>
<?php
}

//Formulario de actualización-------------------------------------------------------------------
function formularioActualizacion($id,$titulo,$contenido,$autor){ ?>
    <h2>Editar noticia <?=$titulo?>:</h2>
    <!--Formulario HTML con las mismas restricciones que la tabla noticias-->
    <form method="post" action="form_noticia.php">
        <label for="titulo">Título:</label>
        <br>
        <input type="text" id="titulo" name="titulo" maxlength="200" size="50" placeholder="Título de la noticia" value="<?=$titulo?>" required>
        <br><br>
        <label for="contenido">Contenido:</label>
        <br>
        <textarea id="contenido" name="contenido" cols="60" rows="30" maxlength="300" size="20" placeholder="Contenido de la noticia." required><?=$contenido?></textarea>
        <br><br>
        <label for="autor">Autor:</label>
        <input type="text" id="autor" name="autor" minlength="3" maxlength="100" size="30" placeholder="Tu nombre o nick" value="<?=$autor?>" required>
        <br><br>
        <input type="hidden" name="id" value="<?=$id?>">
        <input type="submit" name="actualizar" value="Actualizar noticia">
        <input type="reset" value="Limpiar">
    </form>
<?php
}

//Formulario de borrado-----------------------------------------------------------
function formularioBorrar($id,$titulo){?>
    <h2 style="color:red;">¿Borrar noticia <?=$titulo?>?</h2>
    <!--Formulario HTML con las mismas restricciones que la tabla noticias-->
    <form method="post" action="form_noticia.php">
        <input type="hidden" name="id" value="<?=$id?>">
        <input type="submit" name="borrar" value="Borrar">
    </form>
    <a href="list_noticias.php"><input type="button" value="Volver"></a>
    <?php
}
//Botones para regresar abajo de todos los formularios
?>
<br><br><br>
<a href="index.php"><input type="button" value="Menú principal"></a><a href="list_noticias.php"><input type="button" value="Lista de noticias"></a>
</body>