<%@page import="Procesos.Seriproces"%>
<%@page import="Entidades.Series"%>
<%@page import="Procesos.Peliproces"%>
<%@page import="Entidades.Peliculas"%>
<%@page import="Procesos.Listaproces"%>
<%@page import="java.util.List"%>
<%@page import="Entidades.Lista"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="viewport" content="width-device-width, initial.scale-1.0">
    <title>Favoritos</title>
    <link rel="stylesheet" href="css/Peliculas.css">
<%@ include file="templates/header.jsp"%>
<body class="fondo">
    <div style="margin: 40px; margin-top:0px">
       <%
        Peliproces pProces = new Peliproces();
        Listaproces pLista = new Listaproces();
        Seriproces pseries = new Seriproces();
        
        List<Series> seriess = pseries.consultarseries();
        List<Peliculas> peliss = pProces.consultardatos();
        List<Lista> listass = pLista.consultarlista();
        
        int i=0;
        
        %> 
        <section class="contenedordefavoritos">
                <div class="row posicion">
        <div class="col-12 col-sm-12 col-md-12 col-lg-12">
            <h1>Mis Favoritos</h1>
        </div>
 </div>
            <h3><a class="a" style="text-decoration: none;" href="">Mis Peliculas</a></h3>
                <div class="row">
                  <%
                     for(Lista listal : listass){
                         if(listal.getFk_usuarios()== (Integer)session.getAttribute("id")){
                             for(Peliculas pelisl : peliss){
                                 if(pelisl.getId()==listal.getFk_peliculas()){
                         %>
                    <div class="col-6 col-sm-4 col-md-4 col-lg-2">
                        <form method="POST" action="Descripcion_Elemento.jsp">
                        <div class="nombrevid">
                            <h5><input type="hidden" name="id" value="<%= pelisl.getId()%>"> <%= pelisl.getTitulo() %></h5>
                            <input type="image" class="imagenmin" src="<%= pelisl.getImagen()%>" >
                            <input type="hidden" name="tipo" value="1">
                        </div>
                        </form>
                            <form method="POST" action="Eliminar_lista.jsp">
                            <input type="hidden" name="id_lista" value="<%= listal.getId_lista()%>">
                            <center><button type="submit" class="btn btn-primary">Eliminar</button></center>
                            </form>
                </div>
     <%
                    }
}
}
}
                    %>
                </div>
                <br>
                <h3><a class="a" style="text-decoration: none;" href="">Mis Series</a></h3>
                <div class="row">
                  <%
                     for(Lista listal : listass){
                         if(listal.getFk_usuarios()== (Integer)session.getAttribute("id")){
                             for(Series seriesl : seriess){
                                 if(seriesl.getId()==listal.getFk_series()){
                         %>
                    <div class="col-6 col-sm-4 col-md-4 col-lg-2">
                        <form method="POST" action="Descripcion_Elemento.jsp">
                        <div class="nombrevid">
                            <h5><input type="hidden" name="id" value="<%= seriesl.getId()%>"> <%= seriesl.getTitulo() %></h5>
                            <input type="image" class="imagenmin" src="<%= seriesl.getImagen()%>" >
                            <input type="hidden" name="tipo" value="1">
                        </div>
                        </form>
                            <form method="POST" action="Eliminar_lista.jsp">
                            <input type="hidden" name="id_lista" value="<%= listal.getId_lista()%>">
                            <center><button type="submit" class="btn btn-primary">Eliminar</button></center>
                            </form>
                </div>
     <%
                    }
}
}
}
                    %>
                </div>
                          </section>
                </div>
</body>
<%@ include file="templates/footer.html"%>