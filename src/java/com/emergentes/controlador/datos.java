package com.emergentes.controlador;
import com.emergentes.modelo.recive;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "datos", urlPatterns = {"/datos"})
public class datos extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       // processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        //String telef = request.getParameter("telefono");
        int telef = Integer.parseInt(request.getParameter("telefono"));//combierte en entero
        String correo = request.getParameter("correo");
                    
       String sexo[] = request.getParameterValues("sexo");
       
       recive dat = new recive();
       
       dat.setNombres(nombre);
       dat.setApellidos(apellido);
       dat.setSexo(sexo);
       dat.setTelefono(telef);
       dat.setCorreo(correo);
       
       
       request.setAttribute("midatos", dat);
       
       request.getRequestDispatcher("mostrar.jsp").forward(request,response);
    }


}
