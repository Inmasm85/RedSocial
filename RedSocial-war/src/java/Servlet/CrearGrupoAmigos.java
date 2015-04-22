/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Servlet;

import app.beans.GrupoFacadeLocal;
import app.entity.Amigos;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Inma
 */
@WebServlet(name = "CrearGrupoAmigos", urlPatterns = {"/CrearGrupoAmigos"})
public class CrearGrupoAmigos extends HttpServlet {

   @EJB
   private GrupoFacadeLocal grupoFacade;
   
   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        RequestDispatcher rd;
        //Sesiones
        HttpSession sesion = request.getSession();
        
        
        // Recoger el nombre del grupo 
        String nomgrupo = request.getParameter("nombregrupo");
        
        
        // Recoger la lista de amigos O RECOGER EL VALOR DEL INPUT???????????
         List<Amigos> listaAmigos;
   //      listaAmigos = (List<Amigos>) amigosFacade.findbyIdUsuario(usuario.getIdUsuario());
        
        
        
        
        
        
        rd = getServletContext().getRequestDispatcher("/Principal");
        rd.forward(request, response);
        
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
