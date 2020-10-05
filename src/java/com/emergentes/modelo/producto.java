package com.emergentes.modelo;
public class producto 
{
    
    private int id;
    private String descripcion;
    private String categoria;

    public producto()
    {    id = 0;
        descripcion="";
        categoria ="";      
    }
    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    public String getDescripcion() {
        return descripcion;
    }
    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
    public String getCategoria() {
        return categoria;
    }
    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }
}
    


    


