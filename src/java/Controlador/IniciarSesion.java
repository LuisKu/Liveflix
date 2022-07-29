/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Entidades.Usuarios;
import Procesos.Registro;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author LuisK
 */
public class IniciarSesion extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String username = request.getParameter("correo");
        String password = request.getParameter("contraseña");
        try (PrintWriter out = response.getWriter()) {
             try{
              if(username != null && password != null){
                  Class.forName("org.mariadb.jdbc.Driver");
                  Connection conn = DriverManager.getConnection("jdbc:mariadb://localhost:3306/liveflix","root","12345");
                  String query = "Select * from usuarios where correo=? and contraseña=?";
                  
                  String usuario = "";
                  String nombre = "";
                  String apellido = "";
                  String correo = "";
                  String contraseña = "";
                  
                  int rol = 0;
                  int id = 0;
                  
                  PreparedStatement psm = conn.prepareStatement(query);
                  psm.setString(1, username);
                  psm.setString(2, password);
                  
                  ResultSet rs = psm.executeQuery();
                  if(rs.next()){
                        Registro regis = new Registro();        
                        List<Usuarios> users = regis.consultarUsuario(username,password); 
                        for(Usuarios user : users){
                            usuario = user.getUsuario();
                            nombre = user.getNombre();
                            apellido = user.getApellido();
                            correo = user.getCorreo();
                            contraseña = user.getContraseña();
                            rol = user.getRol();
                            id = user.getId();
                        }
                        response.sendRedirect("Pagina_Principal.jsp");
                        HttpSession session = request.getSession();
                        session.setAttribute("user", usuario);
                        session.setAttribute("nombre", nombre);
                        session.setAttribute("apellido", apellido);
                        session.setAttribute("correo", correo);
                        session.setAttribute("contraseña", contraseña);
                        session.setAttribute("id", id);
                        session.setAttribute("rol", rol);
                      }  
                  else{                      
                      response.sendRedirect("index.jsp");
                      HttpSession session = request.getSession();
                      session.setAttribute("estado",1);
                  }
                  }
              }catch(Exception exw){}
          }
          catch(Exception ex){
          }
    
        }
    

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

}
