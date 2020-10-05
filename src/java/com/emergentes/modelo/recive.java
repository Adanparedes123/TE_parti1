package com.emergentes.modelo;
public class recive
{
    private String nombres;
    private int telefono;
    private String correo;
    private String[] sexo;
    private String apellidos;

    
    public recive()
    {
        telefono =0;
    }
    public String getNombres() {
        return nombres;
    }
    public void setNombres(String nombres) {
        this.nombres = nombres;             }
    public String getApellidos() {
        return apellidos;        }          
    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;             }
    public int getTelefono()    {
        return telefono;        }
    public void setTelefono(int telefono)   {
        this.telefono = telefono;           }
    public String getCorreo()   {
        return correo;          }
    public void setCorreo(String correo)     {
        this.correo = correo;                }
    public String[] getSexo()   {
        return sexo;            }
    public void setSexo(String[] sexo) {
        this.sexo = sexo;              }  
    
}
