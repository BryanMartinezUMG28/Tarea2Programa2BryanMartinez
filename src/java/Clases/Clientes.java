/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Clases;

/**
 *
 * @author bryan
 */
public class Clientes {
      ClienteModell[] tablaCliente;
    int indiceArray;
    
    public Clientes(){
        this.tablaCliente = new ClienteModell[100];
        this.indiceArray=0;
    }
    
     public void guardarClienteModell(ClienteModell clientemodell){
        this.tablaCliente[this.indiceArray]=clientemodell;  
        this.indiceArray=this.indiceArray+1;
    }
    
    public ClienteModell[] getClientes(){
        return this.tablaCliente;
    }

    
}