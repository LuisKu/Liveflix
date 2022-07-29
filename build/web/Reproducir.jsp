<%@page import="Entidades.Capitulos"%>
<%@page import="Procesos.Capiproces"%>
<%@page import="java.util.List"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Reproductor</title>
    <link rel="stylesheet" href="css/Descripcion elemento.css">
    
<%@ include file="templates/header.jsp"%>
<body class="fondo">
    <br>
    <br>
<%
Capiproces sProces = new Capiproces();
        
        List<Capitulos> capituloss = sProces.consultarcapitulo();
            
        int id_capi = Integer.parseInt(request.getParameter("id"));

                     for(Capitulos capitulol : capituloss){
                         if(capitulol.getId_capitulo()==(id_capi)){
    %>
    <section class="contenedoruno">
        <div class="contenedorimagen col-12 col-sm-4 order-lg-first col-md-3">
            <img class="Img-fluid imagenthewitcher" src="<%= capitulol.getImagen()%>" alt="">
        </div>
        <div class="descripcion col-12 col-sm-8 order-lg-last col-md-9">
            <p class="Titulocontenido">Capitulo: <%= capitulol.getNum_cap()%></p>
            <p class="Titulogenero"><%= capitulol.getTitulo()%></p>
            <p class="synopsis">Synopsis: </p>
            <p class="synopsisres"><%= capitulol.getDescripcion()%></p>
        </div>
            </section>
        <hr style="clear: both;" class="rayanegra"> 
        <div class="vid">
            <video width="100%" controls>
                <source src="<%= capitulol.getVideo()%>" type="video/mp4">
                <source src="mov_bbb.ogg" type="video/ogg">
                Your browser does not support HTML video.
            </video>
        </div>
                    <%
                    }
}
                    %>
        
        
</body>
<%@ include file="templates/footer.html"%>