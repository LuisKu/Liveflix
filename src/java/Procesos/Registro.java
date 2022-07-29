/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Procesos;

import Entidades.Peliculas;
import Entidades.Usuarios;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author gabri
 */
public class Registro {
    
    Connection conn;
    
    public Registro(){
        try{
           Class.forName("org.mariadb.jdbc.Driver");
           this.conn = DriverManager.getConnection("jdbc:mariadb://localhost:3306/liveflix","root","12345");
        }
        catch(SQLException e){
            System.out.println("Error al conectar"+ e);
        }
        catch(ClassNotFoundException ex){
            System.out.println("Error al registrar el driver de MySQL"+ ex);
        }
    }
    
    public int GuardarUsuarios(Usuarios usuario){
        
        int resultado = 0;
        
        try{
            Statement smtm = conn.createStatement();
            String query = "INSERT INTO Usuarios(nombre,apellido,correo,usuario,contraseña)";
                query += "VALUES('"+usuario.getNombre()+"','"+usuario.getApellido()+"','"+usuario.getCorreo()+"','"+usuario.getUsuario()+"','"+usuario.getContraseña()+"')";
                
            resultado = smtm.executeUpdate(query);
            
            return resultado;
        }
        catch (Exception w){
            System.out.println("Error al insertar"+ w);
        }
        
        return 0;
    }
    public List<Usuarios> consultarUsuario(String correo, String password){
        List<Usuarios> usuariosp = new ArrayList<>();
        try{
            
            String queryser = "SELECT * FROM usuarios WHERE correo=? AND contraseña=?";
            PreparedStatement psm = conn.prepareStatement(queryser);
            psm.setString(1, correo);
            psm.setString(2, password);
            ResultSet result = psm.executeQuery();
            
            while(result.next()){
                Usuarios usuario = new Usuarios();
                usuario.setNombre(result.getString("nombre"));
                usuario.setApellido(result.getString("apellido"));
                usuario.setCorreo(result.getString("correo"));
                usuario.setContraseña(result.getString("contraseña"));
                usuario.setUsuario(result.getString("usuario"));
                usuario.setRol(result.getInt("rol"));
                usuario.setId(result.getInt("id"));
                
                usuariosp.add(usuario);
            }
            result.close();
            psm.close();
            conn.close();
            
            return usuariosp;
        }
        catch (Exception eps){
            System.out.println("Error al meter"+ eps);
        }
        return usuariosp;
   }
}
