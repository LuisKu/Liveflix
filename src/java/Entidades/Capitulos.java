
package Entidades;


public class Capitulos {

    private int id_capitulo;
    private int num_cap;
    private String titulo;
    private String descripcion;
    private String video;
    private int temporada;
    private int FK_series;
    private String imagen;
    
    public int getId_capitulo() {
        return id_capitulo;
    }

    /**
     * @param id_capitulo the id_capitulo to set
     */
    public void setId_capitulo(int id_capitulo) {
        this.id_capitulo = id_capitulo;
    }

    /**
     * @return the num_cap
     */
    public int getNum_cap() {
        return num_cap;
    }

    /**
     * @param num_cap the num_cap to set
     */
    public void setNum_cap(int num_cap) {
        this.num_cap = num_cap;
    }

    /**
     * @return the titulo
     */
    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }
    
    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public int getTemporada() {
        return temporada;
    }
    
    public String getVideo() {
        return video;
    }
    
    public void setVideo(String video) {
        this.video = video;
    }

    
    /**
     * @param temporada the temporada to set
     */
    public void setTemporada(int temporada) {
        this.temporada = temporada;
    }

    /**
     * @return the FK_serie
     */
    public int getFK_series() {
        return FK_series;
    }

    /**
     * @param FK_serie the FK_serie to set
     */
    public void setFK_series(int FK_series) {
        this.FK_series = FK_series;
    }

    /**
     * @return the imagen
     */
    public String getImagen() {
        return imagen;
    }

    /**
     * @param imagen the imagen to set
     */
    public void setImagen(String imagen) {
        this.imagen = imagen;
    }

    
    
    
    
}
