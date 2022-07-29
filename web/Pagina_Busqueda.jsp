<%@page import="Procesos.Seriproces"%>
<%@page import="Entidades.Series"%>
<%@page import="Entidades.Busquedas"%>
<%@page import="java.util.List"%>
<%@page import="Entidades.Peliculas"%>
<%@page import="Procesos.Peliproces"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Busqueda</title>
        <link rel="stylesheet" href="css/Peliculas.css">
        <link rel="stylesheet" href="css/Busqueda.css">
<%@ include file="templates/header.jsp"%>
    <body class="fondo">
        <div style="margin: 40px; margin-top:100px">
            <%

        Peliproces pProces = new Peliproces();
        Seriproces pSeries = new Seriproces();
        
        List<Peliculas> peliss = pProces.consultardatos();
        List<Series> seriess = pSeries.consultarseries();
        
        String busc = request.getParameter("buscar");
        
        Busquedas busca = new Busquedas();
        busca.setBusqueda(busc);
        %>
            <h3 class="a" style="text-decoration: none;">Resultados de: </h3>
            <h3 class="a" style="text-decoration: none;"><%= busc %></h3>
            <br>
            <div class="row">
                    <%
                     for(Peliculas pelisl : peliss){
                         if (pelisl.getTitulo().equals(busc) || pelisl.getGenero().equals(busc)){
                         %>
                    <div class="col-6 col-sm-4 col-md-4 col-lg-2">
                        <form method="POST" action="Descripcion_Elemento.jsp">
                        <div class="nombrevid" href="">
                            <h5><input type="hidden" name="id" value="<%= pelisl.getId()%>"> <%= pelisl.getTitulo() %></h5>
                            <input type="image" class="imagenmin" src="<%= pelisl.getImagen()%>" >
                            <input type="hidden" name="tipo" value="1">
                        </div>
                        </form>
                </div>
                    <%
                    }
}
                     for(Series seriesl : seriess){
                         if (seriesl.getTitulo().equals(busc) || seriesl.getGenero().equals(busc)){
                         %>
                    <div class="col-6 col-sm-4 col-md-4 col-lg-2">
                        <form method="POST" action="Descripcion_Elemento.jsp">
                        <div class="nombrevid" href="">
                            <h5><input type="hidden" name="id" value="<%= seriesl.getId()%>"> <%= seriesl.getTitulo() %></h5>
                            <input type="image" class="imagenmin" src="<%= seriesl.getImagen()%>" >
                            <input type="hidden" name="tipo" value="2">
                        </div>
                        </form>
                </div>
                    <%
                    }
}
                    %>
                </div>
        </div>
    </body>
<%@ include file="templates/footer.html"%>