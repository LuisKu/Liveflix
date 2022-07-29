<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inicio de Sesión</title>
    <link rel="stylesheet" href="css/IniciarSesion.css">
</head>
<body>
    <%if(session.getAttribute("user")!=null){response.sendRedirect("Pagina_Principal.jsp");}
        response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");%>
    <img src="https://media.istockphoto.com/photos/blue-abstract-background-or-texture-picture-id1138395421?k=6&m=1138395421&s=612x612&w=0&h=bJ1SRWujCgg3QWzkGPgaRiArNYohPl7-Wc4p_Fa_cyA=" alt="" class="back">
    <div class="login">
        <img src="imagenes/imagen/logo.svg" alt="" class="logo">
        <h1>Iniciar Sesión</h1>
        <form action="IniciarSesion" method="POST">
            <label for="exampleInputEmail1">Direccion de correo:</label>
            <input type="email" name="correo" placeholder="Ingrese su correo" required>

            <label for="exampleInputPassword1">Contraseña</label>
            <input type="password" name="contraseña" placeholder="Ingrese su contraseña" required>

            <center><button type="submit" class="btn btn-primary">Iniciar Sesion</button></center>
        </form>   
        <form action="Registro_Usuarios.jsp" method="POST">
            <center><button type="submit" class="btn btn-primary">Registrar</button></center>
        </form>    
            <center><a href="">Se le olvido el usuario?</a> <br></center>
            <center><a href="">Se le olvido la contraseña?</a> </center>   
    </div>
</body>
</html>