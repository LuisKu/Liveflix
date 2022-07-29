<%@page import="Procesos.Registro"%>
<%@page import="Entidades.Usuarios"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Pagina Principal</title>
<meta charset="UTF-8">
<meta name="viewport" content="width-device-width, initial.scale-1.0">
<link rel="stylesheet" href="css/Header.css">
<link rel="stylesheet" href="bootstrap_css/bootstrap.css">
    </head>
<body class="fondo">
     <form name="myform" method="POST" action="index.jsp">
    <%
            
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String correo = request.getParameter("correo");
        String contraseña = request.getParameter("contraseña");
        String usuario = request.getParameter("usuario");
        
        Usuarios user= new Usuarios();
        user.setNombre(nombre);
        user.setApellido(apellido);
        user.setCorreo(correo);
        user.setContraseña(contraseña);
        user.setUsuario(usuario);
    
    
        Registro registro = new Registro();
        int isSaved = registro.GuardarUsuarios(user);
    %>
    <input type="submit" name="var1" value="send"/>
<script type="text/javascript">
    document.myform.submit();
</script>
     </form>
</body>
<%@ include file="templates/footer.html"%>
