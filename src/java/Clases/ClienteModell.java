/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Clases;

/**
 *
 * @author bryan
 */
public class ClienteModell {
    private String codigo;
    private String nombres;
    private String apellidos;
    private String direccion;
    private String correo;
    private String celular;
    private String tipo;
    
    public ClienteModell(String codigo, String nombres, String apellidos, String correo, String direccion,String celular, String tipo){
        this.codigo=codigo;
        this.nombres=nombres;
        this.apellidos=apellidos;
        this.correo=correo;
        this.direccion=direccion;  
        this.celular=celular;
        this.tipo=tipo;   
    }
    
    public ClienteModell(){
        this.nombres="Clientes de ejemplo";
    }

  

    public String getCodigo() {
        return codigo;
    }

    public void setCodigo(String codigo) {
        this.codigo = codigo;
    }

    public String getNombres() {
        return nombres;
    }

    public void setNombres(String nombres) {
        this.nombres = nombres;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }
    
     public String getCelular() {
        return celular;
    }

    public void setCelular(String celular) {
        this.celular = celular;
    }


    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    
    
   

    
    
    
    
}