<%@page import="Entidades.Busquedas"%>
<%@page import="Procesos.Busqueproces"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Insertar</title>
<%@ include file="templates/header.jsp"%>
<body class="fondo">
     <form name="myform" method="POST" action="Pagina_Busqueda.jsp">
    <%
        Boolean guardado = (Boolean)session.getAttribute("guardado");
        int cantidad = (int)session.getAttribute("ejecucion");
        session.setAttribute("ejecucion", cantidad+1);
        if(guardado){
            
        String busc = request.getParameter("buscar");
        
        Busquedas busca = new Busquedas();
        busca.setBusqueda(busc);
        
       Busqueproces busproces = new Busqueproces();
        int isSaved = busproces.GuardarBusqueda(busca);
        %>
      <%
        if(isSaved > 0){
            %>
            <center><h2>LOS DATOS SE INSERTARON CORRECTAMENTE</h2></center>
        <%
        }
        else{
            %>
            <center><h2>LOS DATOS NO SE INSERTARON</h2></center>
        <%
        }
        %> 
    <input type="submit" name="var1" value="5" />
    
<script type="text/javascript">
    document.myform.submit();
</script>
    <%
        }
    else{
    %>
    <h2>No hay datos que mostrar</h2>
    <%}
    %>
     </form>
</body>
<%@ include file="templates/footer.html"%>
