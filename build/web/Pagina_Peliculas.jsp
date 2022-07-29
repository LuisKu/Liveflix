<%@page import="java.util.List"%>
<%@page import="Procesos.Peliproces"%>
<%@page import="Entidades.Peliculas"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Peliculas</title>
        <link rel="stylesheet" href="css/Peliculas.css">
<%@ include file="templates/header.jsp"%>
<body class="fondo">
    
            <div style="margin: 40px; margin-top:0px">
                <div class="row posicion">
        <div class="col-9 col-sm-9 col-md-9 col-lg-9">
            <h1>Peliculas</h1>
        </div>
        <div class="col-3 col-sm-3 col-md-3 col-lg-3">
            <ul class="gen">
                    <li><a href="a">Género</a>
                        <ul>
                            <li><a href="a">Acción</a></li>
                            <li><a href="a">Aventura</a></li>
                            <li><a href="a">Biográficas</a></li>
                            <li><a href="a">Fantasía</a></li>
                            <li><a href="a">Comedias</a></li>
                            <li><a href="a">Crimen</a></li>
                            <li><a href="a">Deportes</a></li>
                            <li><a href="a">Documentales</a></li>
                            <li><a href="a">Dramas</a></li>
                            <li><a href="a">Fantasia</a></li>
                            <li><a href="a">Historia</a></li>
                            <li><a href="a">Misterios</a></li>
                            <li><a href="a">Romance</a></li>
                            <li><a href="a">Terror</a></li>
                            <li><a href="a">Triller</a></li>
                        </ul>
                    </li>
                </ul>
        </div>
    </div>
                <%

        Peliproces pProces = new Peliproces();
        
        List<Peliculas> peliss = pProces.consultardatos();
        
        int i=0;
        
        %>
                
                <h3><a class="a" style="text-decoration: none;" href="">Nuevos</a></h3>
                <div class="row">
                    <%
                     for(Peliculas pelisl : peliss){
                         if(i<6){
                         %>
                         
                    <div class="col-6 col-sm-4 col-md-4 col-lg-2">
                        <form method="POST" action="Descripcion_Elemento.jsp">
                        <div class="nombrevid">
                            <h5><input type="hidden" name="id" value="<%= pelisl.getId()%>"> <%= pelisl.getTitulo() %></h5>
                            <input type="image" class="imagenmin" src="<%= pelisl.getImagen()%>" >
                            <input type="hidden" name="tipo" value="1">
                        </div>
                        </form>
                </div>
 
                        
                    <%
                        i=i+1;
                    }
}
                        i=0;
                    %>
                </div>

            <h3><a class="a" style="text-decoration: none;" href="">Fantasía</a></h3>
                <div class="row">
                    <%
                     for(Peliculas pelisl : peliss){
                         if(i<6 && pelisl.getGenero().equals("Fantasia")){
                         %>
                    <div class="col-6 col-sm-4 col-md-4 col-lg-2">
                        <form method="POST" action="Descripcion_Elemento.jsp">
                        <div class="nombrevid">
                            <h5><input type="hidden" name="id" value="<%= pelisl.getId()%>"> <%= pelisl.getTitulo() %></h5>
                            <input type="image" class="imagenmin" src="<%= pelisl.getImagen()%>" >
                            <input type="hidden" name="tipo" value="1">
                        </div>
                        </form>
                </div>
                    <%
                        i=i+1;
                    }
}
                        i=0;
                    %>
                </div>

            <h3><a class="a" style="text-decoration: none;" href="">Comedias</a></h3>
                <div class="row">
                    <%
                     for(Peliculas pelisl : peliss){
                         if(i<6  && pelisl.getGenero().equals("Comedia")){
                         %>
                    <div class="col-6 col-sm-4 col-md-4 col-lg-2">
                        <form method="POST" action="Descripcion_Elemento.jsp">
                        <div class="nombrevid">
                            <h5><input type="hidden" name="id" value="<%= pelisl.getId()%>"> <%= pelisl.getTitulo() %></h5>
                            <input type="image" class="imagenmin" src="<%= pelisl.getImagen()%>" >
                            <input type="hidden" name="tipo" value="1">
                        </div>
                        </form>
                </div>
                    <%
                        i=i+1;
                    }
}
                        i=0;
                    %>
                </div>
  
            <h3><a class="a"  style="text-decoration: none;" style="text-decoration: none;" href="">Terror</a></h3>
                <div class="row">
                    <%
                     for(Peliculas pelisl : peliss){
                         if(i<6 && pelisl.getGenero().equals("Terror")){
                         %>
                    <div class="col-6 col-sm-4 col-md-4 col-lg-2">
                        <form method="POST" action="Descripcion_Elemento.jsp">
                        <div class="nombrevid">
                            <h5><input type="hidden" name="id" value="<%= pelisl.getId()%>"> <%= pelisl.getTitulo() %></h5>
                            <input type="image" class="imagenmin" src="<%= pelisl.getImagen()%>" >
                            <input type="hidden" name="tipo" value="1">
                        </div>
                        </form>
                </div>
                    <%
                        i=i+1;
                    }
}
                        i=0;
                    %>
                </div>

            <h3><a class="a" style="text-decoration: none;" href="">Acción</a></h3>
                <div class="row">
                    <%
                     for(Peliculas pelisl : peliss){
                         if(i<6 && pelisl.getGenero().equals("Accion")){
                         %>
                    <div class="col-6 col-sm-4 col-md-4 col-lg-2">
                        <form method="POST" action="Descripcion_Elemento.jsp">
                        <div class="nombrevid">
                            <h5><input type="hidden" name="id" value="<%= pelisl.getId()%>"> <%= pelisl.getTitulo() %></h5>
                            <input type="image" class="imagenmin" src="<%= pelisl.getImagen()%>" >
                            <input type="hidden" name="tipo" value="1">
                        </div>
                        </form>
                </div>
                    <%
                        i=i+1;
                    }
}
                        i=0;
                    %>
                </div>
                </div> 
            
        </body>
<%@ include file="templates/footer.html"%>
