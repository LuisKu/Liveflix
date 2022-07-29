package Procesos;

import Entidades.Busquedas;
import Entidades.Peliculas;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class Busqueproces {
    
    Connection conn;
    
    public Busqueproces(){
        try{
            Class.forName("org.mariadb.jdbc.Driver");
            this.conn= (Connection) DriverManager.getConnection("jdbc:mariadb://localhost:3306/liveflix", "root", "12345");
        }
        catch(SQLException e){
            System.out.println("Error al conectar"+ e);
        }
        catch(ClassNotFoundException ex){
            System.out.println("Error al registrar el driver de MySQL"+ ex);
        }
    }
    
    public int GuardarBusqueda(Busquedas busque){
        
        int resultado = 0;
        
        try{
            Statement smtm = conn.createStatement();
            String query = "INSERT INTO busqueda(busqueda)";
                query += "VALUES('"+busque.getBusqueda()+"')";
                
            resultado = smtm.executeUpdate(query);
            
            return resultado;
        }
        catch (Exception w){
            System.out.println("Error al insertar"+ w);
        }
        
        return 0;
    }
    
}