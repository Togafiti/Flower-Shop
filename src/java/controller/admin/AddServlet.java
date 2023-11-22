/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.admin;

import dal.AdminDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import model.Product;

/**
 *
 * @author xuanh
 */
@WebServlet(name = "AddServlet", urlPatterns = {"/add"})
public class AddServlet extends HttpServlet {

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
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet AddServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AddServlet at " + request.getContextPath() + "</h1>");
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
        String id_raw = request.getParameter("id");
        String catid_raw = request.getParameter("catalogid");
        String name = request.getParameter("name");
        String price_raw = request.getParameter("price");
        String quantity_raw = request.getParameter("quantity");
        String description = request.getParameter("description");
        String discount_raw = request.getParameter("discount");
        String img = request.getParameter("img");
        String date = request.getParameter("created");
        String sold_raw = request.getParameter("sold");
        int id, cataid, price, quantity, discount, sold;
        try {
            id = Integer.parseInt(id_raw);
            cataid = Integer.parseInt(catid_raw);
            price = Integer.parseInt(price_raw);
            quantity = Integer.parseInt(quantity_raw);
            discount = Integer.parseInt(discount_raw);
            sold = Integer.parseInt(sold_raw);
            DateFormat df = new SimpleDateFormat("yyyy/MM/d");
            Date created = (Date) df.parse(date);
            AdminDAO d = new AdminDAO();
            Product p = d.getProductById(id);
            if (p == null) {
                Product pNew = new Product(id, cataid, name, price, quantity, description, discount, img, created, sold);
                d.insert(pNew);
                response.sendRedirect("ptable");
            } else {
                String error = "id da ton tai";
                request.setAttribute("error", error);
                request.getRequestDispatcher("new.jsp").forward(request, response);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
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
