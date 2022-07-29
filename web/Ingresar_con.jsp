<%@page import="java.util.List"%>
<%@page import="Procesos.Peliproces"%>
<%@page import="Entidades.Peliculas"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Ingresar</title>
        <link rel="stylesheet" href="css/Peliculas.css">
        <link rel="stylesheet" href="css/Ingresar.css">
        <%@ include file="templates/header.jsp"%>
    <body class="fondo">
        <div class="row" style="margin: 5%; margin-top: 10%">
            <div class="col-6 col-sm-6 col-md-6 col-lg-6">
                <form method="POST" action="Insertar_Peliculas.jsp">
                        <div class="formularios">
                            <fieldset style="margin: 10px;">
                                <h2 id="Title">Datos de la pelicula</h2>
                                <div class="form-group">
                                    <label>Titulo</label>
                                    <input type="text" class="form-control" name="titulo" placeholder="Titulo de la pelicula" required>
                                </div>
                                <div class="form-group">
                                    <label>Imagen</label>
                                    <input type="text" class="form-control" name="imagen" placeholder="Ruta de la portada" required>
                                </div>
                                <div class="form-group">
                                    <label>Actores</label>
                                    <input type="text" class="form-control" name="actores" placeholder="Gabriel Murillo, Luis Ku, Mavis perez..." required>
                                </div>
                                <div class="form-group">
                                    <label>Director</label>
                                    <input type="text" class="form-control" name="director" placeholder="Director de la pelicula" required>
                                </div>
                                <div class="form-group">
                                    <label>Genero</label>
                                    <select class="form-control" name="genero" required>
                                        <option value="Accion">Accion</option>
                                        <option value="Comedia">Comedia</option>
                                        <option value="Terror">Terror</option>
                                        <option value="Terror">Fantasia</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label><h2>Descripcion de la pelicula</h2></label><br>
                                    <textarea rows="5" name="descripcion" class="form-control" placeholder="-Descripcion corta de la pelicula" required></textarea>
                                </div>
                                <input type="hidden" name="id_usuario" value="<%= (Integer)session.getAttribute("id")%>">
                                <center><button type="submit" class="btn btn-primary">Subir</button></center>
                                <p>Si hace click en el boton de "Subir", se guardaria la informacion.</p>
                                </fieldset>
                        </div>               
                </form>
            </div>
                <div class="col-6 col-sm-6 col-md-6 col-lg-6">
                    <div class="formularios">
                                <fieldset style="margin: 10px;">
                                    <h2 id="Title">Elementos Subidos</h2>
                                    <div class="row">
                                        <section class="contenedoruno">
                                    <%

        Peliproces pProces = new Peliproces();
        
        List<Peliculas> peliss = pProces.consultardatos();
        
        int i=0;
                     for(Peliculas pelisl : peliss){
                         if(pelisl.getFK_usuario() == (Integer)session.getAttribute("id")){
    %>
        <div class="contenedorimagen col-12 col-sm-12 col-md-3 order-lg-3">
            <img class="Img-fluid imagenthewitcher" src="<%= pelisl.getImagen()%>" alt="">
            <form method="POST" action="Eliminar_peli.jsp">
            <div class="contenedordebotones">
                <input type="hidden" name="id_pelicula" value="<%= pelisl.getId()%>">
                <button type="submit" class="milista">Eliminar</button> 
            </div> 
            </form>
        </div>
        <div class="descripcion col-12 col-sm-12 col-md-9 order-lg-9">
            <p class="Titulocontenido"><%= pelisl.getTitulo()%></p>
            <p class="Titulogenero"><%= pelisl.getGenero()%></p>
            <p class="Nombreactores">Actores: <%= pelisl.getActores()%></p>
            <p class="Nombrecreador">Creador: <%= pelisl.getDirector()%></p>
            <p class="synopsis">Synopsis: </p>
            <p class="synopsisres"><%= pelisl.getDescripcion()%></p>
             
        </div>
            <br clear="both">
        <%
                    }
i=i+1;
}
%>
            </section>
    </div>
                                </fieldset>
                     </div>
            </div>
        </div>
        <br>
    </body>
    <%@ include file="templates/footer.html"%>