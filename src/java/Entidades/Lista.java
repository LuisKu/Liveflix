/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entidades;

/**
 *
 * @author gabri
 */
public class Lista {

    private int id_lista;
    private int fk_series;
    private int fk_peliculas;
    private int fk_usuarios;
    
    public int getFk_usuarios() {
        return fk_usuarios;
    }

    public void setFk_usuarios(int fk_usuarios) {
        this.fk_usuarios = fk_usuarios;
    }

    public int getId_lista() {
        return id_lista;
    }

    public void setId_lista(int id_lista) {
        this.id_lista = id_lista;
    }

    public int getFk_series() {
        return fk_series;
    }

    public void setFk_series(int fk_series) {
        this.fk_series = fk_series;
    }

    public int getFk_peliculas() {
        return fk_peliculas;
    }

    public void setFk_peliculas(int fk_peliculas) {
        this.fk_peliculas = fk_peliculas;
    }
    
   
}
