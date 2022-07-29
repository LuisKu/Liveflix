<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link rel="stylesheet" href="bootstrap_css/bootstrap.css">
    <title>Registrar Usuario</title>
    <link rel="stylesheet" type="text/css" href="css/registro.css">
    <link href="https://fonts.googleapis.com/css2?family=Sunflower:wght@300;500;700&display=swap" rel="stylesheet">
</head>
<body>
    <header class="fondoheader">
            <div class="container-fluid p-0 my-0">
                <div class="row">
                <div class="col-12 col-sm-12 col-md-5 col-lg-5">
                    <img class="logotipo" src="imagenes/logo.svg" alt="logo">
                </div>      
                </div>
            </div>
        </header>
    <br>
    <br>
    <br>
    <br>
    <h2><center>Noche de pelis, una maraton de tus series favoritas? Te ofrecemos la mejor opción para vivir la experiencia con tus amigos!</center></h2>  
    <form class="" method="POST" action="Insertar_Usuarios.jsp">
 

<br>


<h1><center>Registro</center></h1>

<a href="Pagina_Busqueda.jsp"></a>
<div class="container-fluid">
    <form class="card bg-light" id="registro">
      <!-- First & Last Name  -->
      <div class="form-group input-group">     
 <input class="form-control" type="text" name="nombre" placeholder="Nombre" required>
 <input class="form-control" type="text" name="apellido" placeholder="Apellido" required>
      </div>
           <!-- Nickname -->
      <div class="form-group input-group">     
 <input class="form-control" type="text" name="usuario" placeholder="Nickname" required>
      </div>
      <!-- Email  -->
      <div class="form-group input-group">
        <div class="input-group-prepend">
          <span class="input-group-text" id="basic-addon1">@</span>
        </div>        
 <input class="form-control" type="email" name="correo" placeholder="Ingrese su correo" required>
      </div>
      <!--Password  -->      
      <div class="form-group">
<input class="form-control" type="password" name="contraseña" placeholder="Contraseña" required>
      </div>
      <!-- Signup Button -->      
     <center><button type="submit" class="btn btn-primary">Registrarse</button></center>
         <Script>
    $(form).submit(function(){
    $('.alert-success').show();
    event.preventDefault(); // if you want to send data only, do not reload page.
});
</script>    </form>    
    
  </div>
          
      
 </body>