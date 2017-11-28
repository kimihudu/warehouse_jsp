/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.ProdDao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Product;

/**
 *
 * @author GeorgyGeo
 */
public class Home extends HttpServlet {
 private static final long serialVersionUID = 1L;
    private static String INSERT_OR_EDIT = "/prodDetail.jsp";
    private static String LIST_PROD = "/prodList.jsp";
    private ProdDao dao;

    public Home() {
        super();
        dao = new ProdDao();
    }


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String forward = "";
        String action = request.getParameter("action");

        if (action.equalsIgnoreCase("delete")) {
            String prodID = request.getParameter("prodId");
            dao.deleteProd(prodID);
            forward = LIST_PROD;
            request.setAttribute("products", dao.getAllProds());
        } else if (action.equalsIgnoreCase("edit")) {
            forward = INSERT_OR_EDIT;
            String prodID = request.getParameter("proID");
            Product prod = dao.getProductById(prodID);
            request.setAttribute("product", prod);
        } else if (action.equalsIgnoreCase("prodList")) {
            forward = LIST_PROD;
            request.setAttribute("products", dao.getAllProds());
        } else {
            forward = INSERT_OR_EDIT;
        }

        RequestDispatcher view = request.getRequestDispatcher(forward);
        view.forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Product prod = new Product();
//        user.setName(request.getParameter("name"));
//        user.setType(request.getParameter("type"));
//        user.setEmail(request.getParameter("email"));
        String prodID = request.getParameter("id");
        if (prodID == null || prodID.isEmpty()) {
            dao.addProd(prod);
        } else {
            prod.setRowID(prodID);
            dao.updateProd(prod);
        }
        RequestDispatcher view = request.getRequestDispatcher(LIST_PROD);
        request.setAttribute("products", dao.getAllProds());
        view.forward(request, response);
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
