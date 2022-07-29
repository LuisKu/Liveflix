<meta charset="UTF-8">
<meta name="viewport" content="width-device-width, initial.scale-1.0">
<link rel="stylesheet" href="css/Header.css">
<link rel="stylesheet" href="bootstrap_css/bootstrap.css">
    </head>
    <% if(session.getAttribute("user")==null){response.sendRedirect("index.jsp");}
       response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
    %>
    <header class="fondoheader">
            <div class="container-fluid p-0 my-0">
                <div class="row">
                <div class="col-12 col-sm-12 col-md-5 col-lg-5">
                    <a href="Pagina_Principal.jsp"><img class="logotipo" src="imagenes/logo.svg" alt="logo"></a>
                    <nav class="navbar navbar-expand-xl navbar-dark">
                        <button class="navbar-toggler" data-target="#menu" data-toggle="collapse">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="menu">
                        <ul class="uls navbar-nav mr-auto">
                            <li class="nav-item"><a href="Pagina_Principal.jsp">Inicio</a></li>
                            <li class="nav-item"><a href="Pagina_Series.jsp">Series</a></li>
                            <li class="nav-item"><a href="Pagina_Peliculas.jsp">Peliculas</a></li>
                            <li class="nav-item"><a href="Pagina_Favoritos.jsp">Favoritos</a></li>
                        </ul>
                        </div>
                    </nav>
                </div>
                <div class="col-12 col-sm-12 col-md-7 col-lg-7">
                    <div class="row" style="float: right;">
                        <div class="d-md-block d-sm-block col-sm-6 col-md-7 col-lg-6">
                            <form method="POST" action="Pagina_Busqueda.jsp" class="form-inline mr-xl-1 mr-lg-1 mr-md-1 mr-sm-1">
                                <input class="form-control mr-sm-2" type="text" placeholder="buscar" name="buscar">
                                <div class="d-none d-sm-block ">
                                    <botton type="submit" name="busca"><img class="lupa" src="imagenes/lupa.png" alt="busc"></botton>
                                </div>
                            </form>
                        </div>
                        <div class="col-6 col-sm-6 col-md-5 col-lg-6">
                            <img class="log_user"src="https://cdn.pixabay.com/photo/2013/07/12/13/43/blue-147156_960_720.png" alt="">
                            <ul class="flecha">
                                <li><a href="Administrar_Usuario.jsp"><%=session.getAttribute("user")%></a>
                                    <ul style="padding: 0px;">                                           
                                        <li><a href="Administrar_Usuario.jsp">Administrar</a></li>
                                        <%
                                            if(session.getAttribute("user")!=null){
                                        if((Integer)session.getAttribute("rol")==1){%>
                                        <li><a href="Ingresar_con.jsp">Mi contenido</a></li>
                                        <%
                                        }
}
                                        %>
                                        <li><form action="CerrarSesion" id="my_form"><a href="javascript:{}" onclick="document.getElementById('my_form').submit();">Cerrar Sesion</a></form></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                </div>
            </div>
        </header>
