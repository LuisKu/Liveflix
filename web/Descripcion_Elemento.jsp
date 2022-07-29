<%@page import="Entidades.Capitulos"%>
<%@page import="Procesos.Capiproces"%>
<%@page import="Entidades.Series"%>
<%@page import="Procesos.Seriproces"%>
<%@page import="java.util.List"%>
<%@page import="Procesos.Peliproces"%>
<%@page import="Entidades.Peliculas"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Descripción</title>
    <link rel="stylesheet" href="css/Descripcion elemento.css">
    
<%@ include file="templates/header.jsp"%>
<body class="fondo">
    <br>
    <br>
    
    <%

        Peliproces pProces = new Peliproces();
        
        List<Peliculas> peliss = pProces.consultardatos();
        
        int id = Integer.parseInt(request.getParameter("id"));
        int tipo = Integer.parseInt(request.getParameter("tipo"));
        
                     for(Peliculas pelisl : peliss){
                         if(pelisl.getId()==(id) && tipo == 1){
    %>
    <section class="contenedoruno">
        
        <div class="contenedorimagen col-12 col-sm-4 order-lg-first col-md-3">
            <img class="Img-fluid imagenthewitcher" src="<%= pelisl.getImagen()%>" alt="">
            <br clear="both">
            <form method="POST" action="Insertar_Lista.jsp">
            <div class="contenedordebotones">
                <input type="hidden" name="id_pelicula" value="<%= pelisl.getId()%>">
                <input type="hidden" name="id_serie" value="0">
                <center><button type="submit" class="milista">Añadir a la lista</button></center>    
            </div>  
            </form>
        </div>
        <div class="descripcion col-12 col-sm-8 order-lg-last col-md-9">
            <p class="Titulocontenido"><%= pelisl.getTitulo()%></p>
            <p class="Titulogenero">Género: <%= pelisl.getGenero()%></p>
            <p class="Nombreactores">Actores: <%= pelisl.getActores()%></p>
            <p class="Nombrecreador">Director: <%= pelisl.getDirector()%></p>
            <p class="synopsis">Synopsis: </p>
            <p class="synopsisres"><%= pelisl.getDescripcion()%></p>
            
        </div>
            </section>
            <br style="clear: both;">
            <hr style="clear: both;" class="rayanegra"> 
    <div class="vid">
            <video width="100%" controls>
                <source src="video/THE WITCHER Tráiler Español (2019).mp4" type="video/mp4">
                <source src="mov_bbb.ogg" type="video/ogg">
                Your browser does not support HTML video.
            </video>
    </div>
        <%
                    }
}
Seriproces sProces = new Seriproces();
        
        List<Series> seriess = sProces.consultarseries();
            
        int id_serie = Integer.parseInt(request.getParameter("id"));
        int tipo_serie = Integer.parseInt(request.getParameter("tipo"));

                     for(Series seriel : seriess){
                         if(seriel.getId()==(id_serie) && tipo_serie == 2){
    %>
    <section class="contenedoruno">
        <div class="contenedorimagen col-12 col-sm-4 order-lg-first col-md-3">
            <img class="Img-fluid imagenthewitcher" src="<%= seriel.getImagen()%>" alt="">
            <form method="POST" action="Insertar_Lista.jsp">
            <div class="contenedordebotones">
                <input type="hidden" name="id_serie" value="<%= seriel.getId()%>">
                <input type="hidden" name="id_pelicula" value="0">
                <center><button type="submit" class="milista">Añadir a la lista</button></center>       
            </div>  
            </form> 
        </div>
        <div class="descripcion col-12 col-sm-8 order-lg-last col-md-9">
            <p class="Titulocontenido"><%= seriel.getTitulo()%></p>
            <p class="Titulogenero">Género: <%= seriel.getGenero()%></p>
            <p class="Nombreactores">Actores: <%= seriel.getActores()%></p>
            <p class="Nombrecreador">Director: <%= seriel.getDirector()%></p>
            <p class="synopsis">Synopsis: </p>
            <p class="synopsisres"><%= seriel.getDescripcion()%></p>
            
        </div>
            </section>
            <br style="clear: both;">
        <hr style="clear: both;" class="rayanegra">
        <div style="margin: 40px; margin-top:0px">
        <p class="episodios">Episodios</p>
        <H2 style="color: white">Temporada: 1</H2>
        <div class="row">
        <%

        Capiproces pcapitulo = new Capiproces();
        
        List<Capitulos> capituloss = pcapitulo.consultarcapitulo();
            
        int i=0;
                     for(Capitulos capitulosl : capituloss){
                         if(capitulosl.getFK_series()==(id_serie) && capitulosl.getTemporada()== 1){
                         %>
                    <div class="col-6 col-sm-6 col-md-6 col-lg-3">
                        <form method="POST" action="Reproducir.jsp">
                        <div class="nombrevid" href="">
                            <h5><input type="hidden" name="id" value="<%= capitulosl.getId_capitulo()%>">Capitulo: <%= capitulosl.getNum_cap()%>: <%= capitulosl.getTitulo() %></h5>
                            <input type="image" class="imagenmin" src="<%= capitulosl.getImagen()%>" >
                            <input type="hidden" name="tipo" value="2">
                        </div>
                        </form>
                </div>  
                            
                    <%
}
}
%>
</div>
        <br>
        <H2 style="color: white">Temporada: 2</H2>
        <div class="row">
            <%
                for(Capitulos capitulosl : capituloss){
                         if(capitulosl.getFK_series()==(id_serie) && capitulosl.getTemporada()== 2){
                         %>
                    <div class="col-6 col-sm-6 col-md-6 col-lg-3">
                        <form method="POST" action="Reproducir.jsp">
                        <div class="nombrevid" href="">
                            <h5><input type="hidden" name="id" value="<%= capitulosl.getId_capitulo()%>">Capitulo: <%= capitulosl.getNum_cap()%>: <%= capitulosl.getTitulo() %></h5>
                            <input type="image" class="imagenmin" src="<%= capitulosl.getImagen()%>" >
                            <input type="hidden" name="tipo" value="2">
                        </div>
                        </form>
                </div> 
                            
                    <%
}
}
%></div><%
}
}
                    %>
                </div>

        
        <br style="clear: both">
</body>
<%@ include file="templates/footer.html"%>