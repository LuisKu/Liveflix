<%@page import="Entidades.Lista"%>
<%@page import="Procesos.Listaproces"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Insertar</title>
<%@ include file="templates/header.jsp"%>
<body class="fondo">
     <form name="myform" method="POST" action="Pagina_Favoritos.jsp">
    <%      
        int id_usuario = (Integer)session.getAttribute("id");
        int id_pelicula = Integer.parseInt(request.getParameter("id_pelicula"));
        int id_serie = Integer.parseInt(request.getParameter("id_serie"));
        
        Lista lista= new Lista();
        lista.setFk_usuarios(id_usuario);
        lista.setFk_peliculas(id_pelicula);
        lista.setFk_series(id_serie);
        
        Listaproces plista = new Listaproces();
        if(id_serie==0){
        int isSaved_p = plista.GuardarLista_P(lista);
        }
        else if(id_pelicula==0){
        int isSaved_s = plista.GuardarLista_S(lista);
        }
        %>
    <input type="submit" name="var1" value="send" />
<script type="text/javascript">
    document.myform.submit();
</script>
     </form>
</body>
<%@ include file="templates/footer.html"%>
