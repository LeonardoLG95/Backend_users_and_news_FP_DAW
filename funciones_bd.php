<?php
//Funciones Tabla Usuarios--------------------------------------------------------

//Mostrar todos los usuarios con limite
function mostrarUsuarios($pag,$cant){
    require 'conexion.php';

    $query="SELECT * FROM `usuarios` LIMIT $pag, $cant";

    $listaUsuarios=mysqli_query($conexion,$query);
    if(!$listaUsuarios){
        echo 'Error: '.mysqli_error($conexion);
    }

    mysqli_close($conexion);

    return $listaUsuarios;
}

//Contar total de registros para la paginación
function totalUsuarios(){
    require 'conexion.php';

    $query="SELECT * FROM `usuarios`";

    $totalUsuarios=mysqli_query($conexion,$query);
    if(!$totalUsuarios){
        echo 'Error: '.mysqli_error($conexion);
    }

    mysqli_close($conexion);

    $total=mysqli_num_rows($totalUsuarios);

    return $total;
}

//Editar usuarios
function editarUsuario($id,$nombre,$email,$fecha_nacimiento,$edad,$genero,$provincia,$direccion,$codigo_postal,$hash){
    require 'conexion.php';
    /*
    NOTA: Se que hay que asegurar las variables para evitar sqlinjection, este trabajo fue de los primeros,
    para un correcto uso se debería usar los metodos bind_param, pero habría que cambiar toda la programación a POO.
    Más adelante publicaré una página que estoy realizando con este tipo de programación, comoycocino.com,
    estará en GITHUB aproximadamente dentro de un mes.
    */
    $query="UPDATE `usuarios` SET   `nombre`='$nombre',
                                    `password`='$hash',
                                    `email`='$email',
                                    `edad`='$edad',
                                    `fecha_nacimiento`='$fecha_nacimiento',
                                    `direccion`='$direccion',
                                    `codigo_postal`='$codigo_postal',
                                    `provincia`='$provincia',
                                    `genero`='$genero' 
                                    WHERE id='$id'";
    
    $envio=mysqli_query($conexion,$query);

    mysqli_close($conexion);
    if(!$envio){
        echo 'Error: '.mysqli_error($conexion);
        return false;
    }

    return true;
}

//Comprobar email de registro/actualización
function comprobarEmail($email){
    require 'conexion.php';

    $query="SELECT * FROM `usuarios` where email='$email'";

    $compEmail=mysqli_query($conexion,$query);
    if(!$compEmail){
        echo 'Error: '.mysqli_error($conexion);
    }

    mysqli_close($conexion);

    //Si la consulta esta vacía false
    if(mysqli_num_rows($compEmail)==0){
        return false;
    }
    //Si no esta vacía true
    else{
        return true;
    }   
}

//Insertar usuarios
function insertarUsuario($nombre,$clave,$email,$edad,$fecha_nacimiento,
    $direccion,$codigo_postal,$provincia,$genero){
    require 'conexion.php';

    $query="INSERT INTO usuarios( `nombre`,
                                    `password`, 
                                    `email`,
                                    `edad`, 
                                    `fecha_nacimiento`, 
                                    `direccion`, 
                                    `codigo_postal`,
                                    `provincia`,
                                    `genero`) 
                        VALUES ('$nombre',
                                '$clave',
                                '$email',
                                '$edad',
                                '$fecha_nacimiento',
                                '$direccion',
                                '$codigo_postal',
                                '$provincia',
                                '$genero')";

    $envio=mysqli_query($conexion,$query);
    if(!$envio){
        echo 'Error: '.mysqli_error($conexion);
        return false;
    }

    mysqli_close($conexion);

    return true;
}

//Borrar usuarios
function borrarUsuario($id){
    require 'conexion.php';

    $query="DELETE FROM `usuarios` WHERE `id`=$id";

    $borrado=mysqli_query($conexion,$query);
    if(!$borrado){
        echo 'Error: '.mysqli_error($conexion);
    }

    mysqli_close($conexion);
}

//Funciones Tabla Noticias--------------------------------------------------------

//Mostrar noticias
function mostrarNoticias($pag,$cant){
    require 'conexion.php';

    $query="SELECT * FROM `noticias` LIMIT $pag, $cant";

    $listaNoticias=mysqli_query($conexion,$query);
    if(!$listaNoticias){
        echo 'Error: '.mysqli_error($conexion);
    }

    mysqli_close($conexion);

    return $listaNoticias;
}

//Contar total de noticias para la paginación
function totalNoticias(){
    require 'conexion.php';

    $query="SELECT * FROM `noticias`";

    $totalNoticias=mysqli_query($conexion,$query);
    if(!$totalNoticias){
        echo 'Error: '.mysqli_error($conexion);
    }

    mysqli_close($conexion);

    $total=mysqli_num_rows($totalNoticias);

    return $total;
}

//Insertar noticias
function insertarLikes($id,$likes){
    require 'conexion.php';

    $query="UPDATE `noticias` SET `likes`='$likes' WHERE id=$id";

    $envio=mysqli_query($conexion,$query);
    if(!$envio){
        echo 'Error: '.mysqli_error($conexion);
    }
    
    mysqli_close($conexion);
}

//Editar usuario
function editarNoticia($id,$titulo,$contenido,$autor){
    require 'conexion.php';

    $query="UPDATE `noticias` SET   `titulo`='$titulo',
                                    `contenido`='$contenido',
                                    `autor`='$autor'
                                    WHERE id='$id'";
    
    $envio=mysqli_query($conexion,$query);

    mysqli_close($conexion);

    if(!$envio){
        echo 'Error: '.mysqli_error($conexion);
        return false;
    }
    
    return true;
}

//Insertar noticias en la tabla noticias
function insertarNoticia($titulo,$contenido,$autor){
    require 'conexion.php';

    $query="INSERT INTO `noticias`( `titulo`,
                                    `contenido`, 
                                    `autor`) 
                        VALUES ('$titulo',
                                '$contenido',
                                '$autor')";

    $envio=mysqli_query($conexion,$query);
    if(!$envio){
        echo 'Error: '.mysqli_error($conexion);
        return false;
    }

    mysqli_close($conexion);

    return true;
}

//Borrar noticias
function borrarNoticia($id){
    require 'conexion.php';

    $query="DELETE FROM `noticias` WHERE `id`=$id";

    $borrado=mysqli_query($conexion,$query);
    if(!$borrado){
        echo 'Error: '.mysqli_error($conexion);
    }

    mysqli_close($conexion);
}

//Funciones Login y Vista------------------------------------------------------------

//Iniciar sesión
function inicioSesion($email){
    require 'conexion.php';

    $query="SELECT * FROM `usuarios` WHERE email='$email'";

    $usuario=mysqli_query($conexion,$query);
    if(!$usuario){
        echo 'Error: '.mysqli_error($conexion);
    }

    mysqli_close($conexion);

    return $usuario;
}
?>