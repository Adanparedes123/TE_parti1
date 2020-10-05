package com.emergentes.controlador;
import com.emergentes.modelo.nota;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "Controlador", urlPatterns = {"/Controlador"})
public class agenda extends HttpServlet {

    
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
    //    processRequest(request, response);
        int op= Integer.parseInt(request.getParameter("op"));
        int id,pos;
        HttpSession ses =request.getSession();
        ArrayList<nota> lista = (ArrayList<nota>)ses.getAttribute("listaest");
        //nuevo
        if(op==1)
        {
            nota p = new nota();
            request.setAttribute("miagenda", p);
            request.getRequestDispatcher("editar_3.jsp").forward(request,response);
        }
        //editar
        if(op == 2)
        {
            id=Integer.parseInt(request.getParameter("id"));
            pos= buscarIndice(request,id);
            
            nota p1 = lista.get(pos);
             request.setAttribute("miagenda", p1);
             request.getRequestDispatcher("editar_3.jsp").forward(request,response);
        }
        //eliminar
         if(op == 3)
        {
            id=Integer.parseInt(request.getParameter("id"));
            pos= buscarIndice(request,id);
            lista.remove(pos);
            ses.setAttribute("listaest,",lista);
             response.sendRedirect("index_3.jsp");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        //processRequest(request, response);
        int id= Integer.parseInt(request.getParameter("id"));
  
        String hora = request.getParameter("hora");
        String activi = request.getParameter("actividad");
        String cumpli = request.getParameter("cumplido");
        
        String nuevo = request.getParameter("nuevo");
        
        nota per= new nota();
        
        per.setId(id);
        per.setHora(hora);
        per.setActividad(activi);
        per.setCumplido(cumpli);
        
        HttpSession ses= request.getSession();
        ArrayList<nota> lista = (ArrayList<nota>)ses.getAttribute("listaest");
        
        if(nuevo.equals("true"))
        {
            lista.add(per);
        }
        else
        {
            //editar
            //buscar el elemento en la seleccion
            int pos = buscarIndice(request,id);
            lista.set(pos,per);
            //reemplzar
        }
        response.sendRedirect("index_3.jsp");
    }
private int buscarIndice(HttpServletRequest request,int id)
{
    HttpSession ses =request.getSession();
    ArrayList<nota> lista = (ArrayList<nota>)ses.getAttribute("listaest");
        int i=0;
        if(lista.size()>0)
        {
            while(i<lista.size())
            {
                if(lista.get(i).getId()==id)
                {
                    break;
                }
                else i++;
            }
        }
        return i;
}
}
