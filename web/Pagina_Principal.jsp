<%@page import="Entidades.Series"%>
<%@page import="Procesos.Seriproces"%>
<%@page import="java.util.List"%>
<%@page import="Entidades.Peliculas"%>
<%@page import="Procesos.Peliproces"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Pagina Principal</title>
    <link rel="stylesheet" href="css/carrusel.css">
<%@ include file="templates/header.jsp"%>
<body class="fondo">
    <%

        Peliproces pProces = new Peliproces();
        Seriproces pseries = new Seriproces();
        
        List<Peliculas> peliss = pProces.consultardatos();
        List<Series> seriess = pseries.consultarseries();
        
        int i=0;
        
        %>
        <div style="margin-top: 65px">
          <img style="width: 100%;" src="imagenes/Collage.jpg">
          </div>
      <section style="margin: 3%; margin-top: 0%"> 
          
         <br>
         <div>
             <h3><a class="a" style="text-decoration: none;" href="">Peliculas nuevas</a></h3>
        <div id="nuevo" class="carousel slide" data-ride="carousel">
          <div style="margin-right: 2%; margin-left: 2%" class="carousel-inner">
            <div  class="carousel-item active">
              <table  width="96%" border="0" cellpadding="10">
                  <tr>
                        <%
                     for(Peliculas pelisl : peliss){
                         if(i<5){
                         %>
                        <td>
                            <form style="text-align: center" method="POST" action="Descripcion_Elemento.jsp">
                                <div class="nombrevid">
                                    <h5><input type="hidden" name="id" value="<%= pelisl.getId()%>"> <%= pelisl.getTitulo() %></h5>
                                    <input type="image" class="imagenmin" src="<%= pelisl.getImagen()%>" >
                                    <input type="hidden" name="tipo" value="1">
                                </div>
                            </form>
                        </td>
                       
                        <%
                    }
i=i+1;
}
                        i=0;
                    %>
                    </tr>
              </table>
            </div>
            <div class="carousel-item">
              <table  width="96%" border="0" cellpadding="10">
                    <tr>
                        <%
                     for(Peliculas pelisl : peliss){
                         if(i>4 && i<10){
                         %>
                        <td>
                            <form style="text-align: center" method="POST" action="Descripcion_Elemento.jsp">
                                <div class="nombrevid">
                                    <h5><input type="hidden" name="id" value="<%= pelisl.getId()%>"> <%= pelisl.getTitulo() %></h5>
                                    <input type="image" class="imagenmin" src="<%= pelisl.getImagen()%>" >
                                    <input type="hidden" name="tipo" value="1">
                                </div>
                            </form>
                        </td>
                        <%
                    }
i=i+1;
}
                        i=0;
                    %>
                    </tr>
              </table>
            </div>
            <div class="carousel-item">
              <table  width="96%" border="0" cellpadding="10">
                    <tr>
                        <%
                     for(Peliculas pelisl : peliss){
                         if(i>9 && i<15){
                         %>
                        <td>
                            <form style="text-align: center" method="POST" action="Descripcion_Elemento.jsp">
                                <div class="nombrevid">
                                    <h5><input type="hidden" name="id" value="<%= pelisl.getId()%>"> <%= pelisl.getTitulo() %></h5>
                                    <input type="image" class="imagenmin" src="<%= pelisl.getImagen()%>" >
                                    <input type="hidden" name="tipo" value="1">
                                </div>
                            </form>
                        </td>
                        <%
                    }
i=i+1;
}
                        i=0;
                    %>
                    </tr>
              </table>
            </div>
          </div>
          <a class="carousel-control-prev" href="#nuevo" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
          </a>
          <a class="carousel-control-next" href="#nuevo" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
          </a>
        </div>
        
        <br>
        <h3><a class="a" style="text-decoration: none;" href="">Series nuevas</a></h3>
        <div id="popular" class="carousel slide" data-ride="carousel">
          <div style="margin-right: 2%; margin-left: 2%" class="carousel-inner">
            <div  class="carousel-item active">
              <table  width="96%" border="0" cellpadding="10">
                    <tr>
                        <%
                     for(Series seriesl : seriess){
                         if(i<5){
                         %>
                        <td>
                            <form style="text-align: center" method="POST" action="Descripcion_Elemento.jsp">
                                <div class="nombrevid">
                                    <h5><input type="hidden" name="id" value="<%= seriesl.getId()%>"> <%= seriesl.getTitulo() %></h5>
                                    <input type="image" class="imagenmin" src="<%= seriesl.getImagen()%>" >
                                    <input type="hidden" name="tipo" value="2">
                                </div>
                            </form>
                        </td>
                        <%
                    }
i=i+1;
}
                        i=0;
                    %>
                    </tr>
              </table>
            </div>
            <div class="carousel-item">
              <table  width="96%" border="0" cellpadding="10">
                    <tr>
                       <%
                     for(Series seriesl : seriess){
                         if(i>4 && i<10){
                         %>
                        <td>
                            <form style="text-align: center" method="POST" action="Descripcion_Elemento.jsp">
                                <div class="nombrevid">
                                    <h5><input type="hidden" name="id" value="<%= seriesl.getId()%>"> <%= seriesl.getTitulo() %></h5>
                                    <input type="image" class="imagenmin" src="<%= seriesl.getImagen()%>" >
                                    <input type="hidden" name="tipo" value="2">
                                </div>
                            </form>
                        </td>
                        <%
                    }
i=i+1;
}
                        i=0;
                    %>
                    </tr>
              </table>
            </div>
            <div class="carousel-item">
              <table  width="96%" border="0" cellpadding="10">
                    <tr>
                        <%
                     for(Series seriesl : seriess){
                         if(i>9 && i<15){
                         %>
                        <td>
                            <form style="text-align: center" method="POST" action="Descripcion_Elemento.jsp">
                                <div class="nombrevid">
                                    <h5><input type="hidden" name="id" value="<%= seriesl.getId()%>"> <%= seriesl.getTitulo() %></h5>
                                    <input type="image" class="imagenmin" src="<%= seriesl.getImagen()%>" >
                                    <input type="hidden" name="tipo" value="2">
                                </div>
                            </form>
                        </td>
                        <%
                    }
i=i+1;
}
                        i=0;
                    %>
                    </tr>
              </table>
            </div>
          </div>
          <a class="carousel-control-prev" href="#popular" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
          </a>
          <a class="carousel-control-next" href="#popular" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
          </a>
        </div>
                    </div>  
 </section>  
</body>
<%@ include file="templates/footer.html"%>
 
