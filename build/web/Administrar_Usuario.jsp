<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Administrar</title>
        <link rel="stylesheet" href="css/adm.css">
<%@ include file="templates/header.jsp"%>
<body class="fondo">
    <br>
    <br>
    <br>
        
<div class="container emp-profile">
            <form method="post">
                <div class="row">
                    <div class="col-md-4">
                        <div class="profile-img">
                            <img src="https://static-media-prod-cdn.itsre-sumo.mozilla.net/static/sumo/img/default-FFA-avatar.png" alt=""/>
                            <div class="file btn btn-lg btn-primary">
                                Change Photo
                                <input type="file" name="file"/>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="profile-head">
                                    <h5>
                                        <%= session.getAttribute("user")%>
                                    </h5>
                                        <%
                                            if((Integer)session.getAttribute("rol")==0){
                                        %>
                                    <h6>
                                      Tipo de usuario: Espectador.
                                    </h6>
                                           <%
                                           }
                                            else if((Integer)session.getAttribute("rol")==1){
                                           %> 
                                    <h6>
                                      Tipo de usuario: Administrador. 
                                    </h6>
                                           <%
                                           }
                                            %> 
                            
                        </div>
                    </div>
                    <div class="col-md-2">
                        <input type="submit" class="profile-edit-btn" name="btnAddMore" value="Edit Profile"/>
                    </div>
                </div>
                <div class="row">
                    <div class="offset-4 col-md-9">
                        <div class="tab-content profile-tab" id="myTabContent">
                            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Nombre</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p><%= session.getAttribute("nombre")%></p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Apellido</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p><%= session.getAttribute("apellido")%></p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Nickname</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p><%= session.getAttribute("user")%></p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Correo</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p><%=session.getAttribute("correo")%></p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Contraseña</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p><%=session.getAttribute("contraseña")%></p>
                                            </div>
                                        </div>
                            </div>
                        </div>
                    </div>
                </div>
            </form>           
        </div>
</body>
<%@ include file="templates/footer.html"%>