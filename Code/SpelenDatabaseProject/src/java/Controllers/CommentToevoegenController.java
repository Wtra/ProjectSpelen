/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import DAL.Comment;
import DAL.Spel;
import Services.SpelServices;
import ViewModels.LijstSpelViewModel;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.Set;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author FxA
 */
@WebServlet(name = "CommentToevoegenController", urlPatterns = {"/CommentToevoegenController"})
public class CommentToevoegenController extends HttpServlet {

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
        
        if (request.getParameter("edit") != null) {
            Spel spel = new Spel();
            spel.setId(Integer.parseInt(request.getParameter("id")));
            Comment comment = new Comment();
            comment.setComment("Dit is een comment");
            comment.setDatum(new Date());
            comment.setUsername("Wouter");
            SpelServices.saveComment(comment);
           // spel.setComment(comment);
           // comment.setSpels(SpelServices.getSpel(Integer.parseInt(request.getParameter("id"))));
            
            
           //spel.setCategory(SpelServices.getCategory(Integer.parseInt(request.getParameter("categorie-id"))));
            
            
//            spel.setComment(comment);
//            SpelServices.saveSpel(spel);
//            
//            LijstSpelViewModel vm = new LijstSpelViewModel(SpelServices.getAllSpelletjes());
//            
//            HttpSession session = request.getSession();
//            session.setAttribute("ViewModel", vm);
//            
//            RequestDispatcher dispatcher = request.getRequestDispatcher("lijstSpelletjes.jsp");
//            dispatcher.forward(request, response);
        }
        else{
            Spel spel = SpelServices.getSpel(Integer.parseInt(request.getParameter("id")));

            HttpSession session = request.getSession();
            session.setAttribute("ViewModel", spel);

            RequestDispatcher dispatcher = request.getRequestDispatcher("commentSpel.jsp");
            dispatcher.forward(request, response);
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
