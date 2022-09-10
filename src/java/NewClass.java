/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import Clases.Clientes;
import Clases.ClienteModell;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author bryan
 */
@WebServlet(urlPatterns = {"/NewClass"})
public class NewClass extends HttpServlet {
    ClienteModell clientemodell;
    Clientes registradosClientes;
     ClienteModell[] clientesRegistrados;

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter respuesta = response.getWriter()) {            
            clientemodell= new ClienteModell(
                request.getParameter("codigo"),
                request.getParameter("nombres"),
                request.getParameter("apellidos"),
                request.getParameter("correo"),
                request.getParameter("direccion"),
                request.getParameter("celular"),
                request.getParameter("tipo")
            );               
            
            if(registradosClientes==null){
                 registradosClientes=new Clientes();
            }
           
            registradosClientes.guardarClienteModell(clientemodell);//almacenarlo en el array
             clientesRegistrados= registradosClientes.getClientes();           
           
            for (int i = 0; i <  clientesRegistrados.length; i++){
                    if(! clientesRegistrados[i].getCodigo().isEmpty()){
                       respuesta.println("<tr><td>" + clientesRegistrados[i].getCodigo()+ "</td>");
                       respuesta.println("<td>" +  clientesRegistrados[i].getNombres() + "</td>");
                       respuesta.println("<td>" +  clientesRegistrados[i].getApellidos() + "</td>");
                       respuesta.println("<td>" +  clientesRegistrados[i].getDireccion()+ "</td>");
                       respuesta.println("<td>" +  clientesRegistrados[i].getCorreo()+ "</td>");
                       respuesta.println("<td>" +  clientesRegistrados[i].getCelular()+ "</td>");
                       respuesta.println("<td>"
                               
                               + "<button type=\"button\" onclick=\"confirmar()\" class=\"btn btn-danger formulario-eliminar\">Eliminar</button>"
                               + "</td></tr>");
                    } 
                }
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}