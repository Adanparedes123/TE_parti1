package com.emergentes.controlador;

import com.emergentes.modelo.producto;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "datos_pro", urlPatterns = {"/datos_pro"})

public class datos_pro extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       // processRequest(request, response);
    }

  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       // processRequest(request, response);
       int id = Integer.parseInt(request.getParameter("id"));
       String desc = request.getParameter("descripcion");
       String cate = request.getParameter("categoria");
       
       producto pro = new producto();
       
       pro.setId(id);
       pro.setDescripcion(desc);
       pro.setCategoria(cate);
       
       
       request.setAttribute("mipro", pro);
       request.getRequestDispatcher("mostrar2.jsp").forward(request, response);
       
    }


}
