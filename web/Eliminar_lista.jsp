<%@page import="Entidades.Lista"%>
<%@page import="Procesos.Listaproces"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Eliminar</title>
<%@ include file="templates/header.jsp"%>
<body class="fondo">
     <form name="myform" method="POST" action="Pagina_Favoritos.jsp">
    <%      
        int id_lista = Integer.parseInt(request.getParameter("id_lista"));
        
        Lista list= new Lista();
        list.setId_lista(id_lista);
        
        Listaproces lproces = new Listaproces();
        int isSaved = lproces.BorrarLista(list);
        %>
    <input type="submit" name="var1" value="send" />
<script type="text/javascript">
    document.myform.submit();
</script>
     </form>
</body>
<%@ include file="templates/footer.html"%>
