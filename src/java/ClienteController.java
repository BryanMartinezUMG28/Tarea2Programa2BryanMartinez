/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

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
@WebServlet(urlPatterns = {"/ClienteController"})
public class ClienteController extends HttpServlet {
    ClienteModell clientemodell;
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
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            clientemodell= new ClienteModell();
            clientemodell.setCod(request.getParameter("cod"));
            clientemodell.setPrimero(request.getParameter("primero"));
            clientemodell.setSegundo(request.getParameter("segundo"));
            clientemodell.setUbicacion(request.getParameter("ubicacion"));
            clientemodell.setEmail(request.getParameter("email"));
            clientemodell.setCelular(request.getParameter("celular"));
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ClienteController</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>DATOS DE FORMULARIO " + request.getContextPath() + "</h1>");         
            out.println("<h2>Codigo:" + clientemodell.getCod() + "</h2>");
            out.println("<h2>Nombre:" + clientemodell.getPrimero() + "</h2>");
            out.println("<h2>Apellido:" + clientemodell.getSegundo() + "</h2>");
            out.println("<h2>Direccion:" + clientemodell.getUbicacion() + "</h2>");
            out.println("<h2>Correo electronico:" + clientemodell.getEmail() + "</h2>");
            out.println("<h2>Telefono:" + clientemodell.getCelular() + "</h2>");
            out.println("<h3>¿Quieres volver a crear un nuevo registro?</h3>");
            out.println("<h3>Presiona regresar, y volveras al formulario de registro.</h3>");
            out.println("<a href='index.html'>Regresar</a>");
            out.println("</body>"); 
            out.println("</html>");
            
            
            
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
