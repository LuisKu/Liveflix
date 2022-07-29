<%@page import="Entidades.Peliculas"%>
<%@page import="Procesos.Peliproces"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Insertar</title>
<%@ include file="templates/header.jsp"%>
<body class="fondo">
     <form name="myform" method="POST" action="Pagina_Peliculas.jsp">
    <%      
        String titulo = request.getParameter("titulo");
        String descripcion = request.getParameter("descripcion");
        String imagen = request.getParameter("imagen");
        String genero = request.getParameter("genero");
        String actores = request.getParameter("actores");
        String director = request.getParameter("director");
        int id_usuario = (Integer)session.getAttribute("id");
        
        Peliculas pelis= new Peliculas();
        pelis.setTitulo(titulo);
        pelis.setDescripcion(descripcion);
        pelis.setImagen(imagen);
        pelis.setGenero(genero);
        pelis.setActores(actores);
        pelis.setDirector(director);
        pelis.setFK_usuario(id_usuario);
    
        Peliproces pproces = new Peliproces();
        int isSaved = pproces.GuardarPelis(pelis);
    %>
    <input type="submit" name="var1" value="send" />
<script type="text/javascript">
    document.myform.submit();
</script>
     </form>
</body>
<%@ include file="templates/footer.html"%>
