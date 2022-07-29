<%@page import="Procesos.Peliproces"%>
<%@page import="Entidades.Peliculas"%>
<%@page import="Procesos.Listaproces"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Eliminar</title>
<%@ include file="templates/header.jsp"%>
<body class="fondo">
     <form name="myform" method="POST" action="Ingresar_con.jsp">
    <%      
        int id_pelicula = Integer.parseInt(request.getParameter("id_pelicula"));
        
        Peliculas peli= new Peliculas();
        peli.setId(id_pelicula);
        
        Peliproces pproces = new Peliproces();
        int isSaved = pproces.BorrarPeli(peli);
        %>
    <input type="submit" name="var1" value="send" />
<script type="text/javascript">
    document.myform.submit();
</script>
     </form>
</body>
<%@ include file="templates/footer.html"%>
