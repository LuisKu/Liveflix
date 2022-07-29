
package Procesos;

import Entidades.Peliculas;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class Peliproces {
    
    Connection conn;
    
    public Peliproces() throws ClassNotFoundException{
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
    
    public int GuardarPelis(Peliculas pelis){
        
        int resultado = 0;
        
        try{
            Statement smtm = conn.createStatement();
            String query = "INSERT INTO peliculas(titulo,descripcion,imagen,genero,actores,director,FK_usuario)";
                query += "VALUES('"+pelis.getTitulo()+"','"+pelis.getDescripcion()+"','"+pelis.getImagen()+"','"+pelis.getGenero()+"','"+pelis.getActores()+"','"+pelis.getDirector()+"','"+pelis.getFK_usuario()+"')";
                
            resultado = smtm.executeUpdate(query);
            
            return resultado;
        }
        catch (Exception w){
            System.out.println("Error al insertar"+ w);
        }
        
        return 0;
    }
    public List<Peliculas> consultardatos(){
    
        List<Peliculas> pelisp = new ArrayList<>();
        
        try{
            Statement smtm = conn.createStatement();
            String query ="SELECT * FROM Peliculas ORDER BY id_pelicula DESC";
            ResultSet resultado = smtm.executeQuery(query);
            
            while(resultado.next()){
                Peliculas pelis = new Peliculas();
                
                pelis.setId(resultado.getInt("id_pelicula"));
                pelis.setTitulo(resultado.getString("titulo"));
                pelis.setDescripcion(resultado.getString("descripcion"));
                pelis.setImagen(resultado.getString("imagen"));
                pelis.setGenero(resultado.getString("genero"));
                pelis.setDirector(resultado.getString("director"));
                pelis.setActores(resultado.getString("actores"));
                pelis.setFK_usuario(resultado.getInt("FK_usuario"));
                
                pelisp.add(pelis);
            }
            resultado.close();
            smtm.close();
            conn.close();
            
            return pelisp;
        }
        catch(Exception a){
            System.out.println("Error"+a.getMessage().toString());
        }
        return pelisp;
    }
    public int BorrarPeli(Peliculas pelis){
        
        int resultado = 0;
        
        try{
            Statement smtm = conn.createStatement();
                
            resultado = smtm.executeUpdate("DELETE FROM peliculas WHERE id_pelicula = '"+pelis.getId()+"'");
            
        }
        catch (Exception w){
            System.out.println("Error al insertar"+ w);
        }
        
        return 0;
    }
    
}
