
package Procesos;

import Entidades.Lista;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author gabri
 */
public class Listaproces {
    
    Connection conn;
    
    public Listaproces(){
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
    
    public int GuardarLista_P(Lista lista){
        
        int resultado = 0;
        try{
            Statement smtm = conn.createStatement();
            String query = "INSERT INTO lista(fk_peliculas,fk_usuarios)";
                query += "VALUES('"+lista.getFk_peliculas()+"','"+lista.getFk_usuarios()+"')";
                
            resultado = smtm.executeUpdate(query);
            
            return resultado;
        }
        catch (Exception w){
            System.out.println("Error al insertar"+ w);
        }
        
        return 0;
    }
    
    public int GuardarLista_S(Lista lista){
        
        int resultado = 0;
        try{
            Statement smtm = conn.createStatement();
            String query = "INSERT INTO lista(fk_series,fk_usuarios)";
                query += "VALUES('"+lista.getFk_series()+"','"+lista.getFk_usuarios()+"')";
                
            resultado = smtm.executeUpdate(query);
            
            return resultado;
        }
        catch (Exception w){
            System.out.println("Error al insertar"+ w);
        }
        
        return 0;
    }
    public List<Lista> consultarlista(){
    
        List<Lista> listp = new ArrayList<>();
        
        try{
            Statement smtm = conn.createStatement();
            String query ="SELECT * FROM Lista ORDER BY id_lista DESC";
            ResultSet resultado = smtm.executeQuery(query);
            
            while(resultado.next()){
                Lista list = new Lista();
                
                list.setId_lista(resultado.getInt("id_lista"));
                list.setFk_series(resultado.getInt("fk_series"));
                list.setFk_peliculas(resultado.getInt("fk_peliculas"));
                list.setFk_usuarios(resultado.getInt("fk_usuarios"));
                
                listp.add(list);
            }
            resultado.close();
            smtm.close();
            conn.close();
            
            return listp;
        }
        catch(Exception a){
            System.out.println("Error"+a.getMessage().toString());
        }
        return listp;
    }
    public int BorrarLista(Lista lista){
        
        int resultado = 0;
        
        try{
            Statement smtm = conn.createStatement();
                
            resultado = smtm.executeUpdate("DELETE FROM lista WHERE id_lista = '"+lista.getId_lista()+"'");
            
        }
        catch (Exception w){
            System.out.println("Error al insertar"+ w);
        }
        
        return 0;
    }
}
