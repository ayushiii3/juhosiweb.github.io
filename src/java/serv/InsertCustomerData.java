/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package serv;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author CIT
 */
public class InsertCustomerData extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet InsertCustomerData</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet InsertCustomerData at " + request.getContextPath() + "</h1>");
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
            String id=request.getParameter("id");
            String date=request.getParameter("orderDate");
            String company = request.getParameter("company");
            String owner = request.getParameter("owner");
            String item = request.getParameter("item");
            int qty = Integer.parseInt(request.getParameter("qty"));
            float weight = Float.parseFloat(request.getParameter("weight"));
            String req = request.getParameter("req");
            String trackId = request.getParameter("trackId");
            int size = Integer.parseInt(request.getParameter("size"));
            int boxCount = Integer.parseInt(request.getParameter("boxCount"));
            String specification = request.getParameter("specification");
            String checklistQty = request.getParameter("checklistQty");
            
            try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/database","root","ayushi");
                PreparedStatement p = con.prepareStatement("insert into customer values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
                p.setString(1,id);
                Date dates = new SimpleDateFormat("yyyy-MM-dd").parse(date);
                p.setDate(2, new java.sql.Date(dates.getTime()));
                p.setString(3,company);
                p.setString(4, owner);
                p.setString(5, item);
                p.setInt(6, qty);
                p.setFloat(7, weight);
                p.setString(8, req);
                p.setString(9, trackId);
                p.setInt(10, size);
                p.setInt(11, boxCount);
                p.setString(12,specification);
                p.setString(13,checklistQty);
                p.executeUpdate();
                response.sendRedirect("Customer.jsp");
                
            }catch(Exception e){
                e.printStackTrace();
            }
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
