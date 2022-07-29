package Procesos;

import Entidades.Capitulos;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class Capiproces {
    
    Connection conn;
    
    public Capiproces() {
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
    
    public List<Capitulos> consultarcapitulo(){
    
        List<Capitulos> capip = new ArrayList<>();
        
        try{
            Statement smtm = conn.createStatement();
            String query ="SELECT * FROM Capitulos ORDER BY id_capitulo";
            ResultSet resultado = smtm.executeQuery(query);
            
            while(resultado.next()){
                Capitulos capi = new Capitulos();
                
                capi.setId_capitulo(resultado.getInt("id_capitulo"));
                capi.setTitulo(resultado.getString("titulo"));
                capi.setDescripcion(resultado.getString("descripcion"));
                capi.setTemporada(resultado.getInt("temporada"));
                capi.setImagen(resultado.getString("imagen"));
                capi.setVideo(resultado.getString("video"));
                capi.setNum_cap(resultado.getInt("num_cap"));
                capi.setFK_series(resultado.getInt("FK_series"));
                
                capip.add(capi);
            }
            resultado.close();
            smtm.close();
            conn.close();
            
            return capip;
        }
        catch(Exception a){
            System.out.println("Error"+a.getMessage().toString());
        }
        return capip;
    }
}
