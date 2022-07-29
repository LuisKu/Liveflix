package Procesos;

import Entidades.Series;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class Seriproces {
    
    Connection conn;
    
    public Seriproces(){
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
    
    public int GuardarSerie(Series series){
        
        int resultado = 0;
        
        try{
            Statement smtm = conn.createStatement();
            String query = "INSERT INTO peliculas(titulo,descripcion,imagen,genero,actores,director)";
                query += "VALUES('"+series.getTitulo()+"','"+series.getDescripcion()+"','"+series.getImagen()+"','"+series.getGenero()+"','"+series.getActores()+"','"+series.getDirector()+"')";
                
            resultado = smtm.executeUpdate(query);
            
            return resultado;
        }
        catch (Exception w){
            System.out.println("Error al insertar"+ w);
        }
        
        return 0;
    }
    public List<Series> consultarseries(){
    
        List<Series> seriesp = new ArrayList<>();
        
        try{
            Statement smtm = conn.createStatement();
            String query ="SELECT * FROM Series ORDER BY id_serie DESC";
            ResultSet resultado = smtm.executeQuery(query);
            
            while(resultado.next()){
                Series seri = new Series();
                
                seri.setId(resultado.getInt("id_serie"));
                seri.setTitulo(resultado.getString("titulo"));
                seri.setDescripcion(resultado.getString("descripcion"));
                seri.setImagen(resultado.getString("imagen"));
                seri.setGenero(resultado.getString("genero"));
                seri.setDirector(resultado.getString("director"));
                seri.setActores(resultado.getString("actores"));
                
                seriesp.add(seri);
            }
            resultado.close();
            smtm.close();
            conn.close();
            
            return seriesp;
        }
        catch(Exception a){
            System.out.println("Error"+a.getMessage().toString());
        }
        return seriesp;
    }
}