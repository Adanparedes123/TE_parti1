<%@page import="com.emergentes.modelo.nota"%>
<%@page import="com.emergentes.controlador.agenda"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Participacion 3 </title>
    </head>
    <body>
        <% 
            nota item =(nota)request.getAttribute("miagenda");
            boolean nuevo = true;
            if(item.getId()>0)
            {
                nuevo = false;
            }
            %>
        <h1>Registro de actividades</h1>
        <form action="Controlador" method="post">
            <table>
                <tr>
                    <td>ID :</td>
                    <td><input type="text" name="id" value="<%=item.getId()%>"></td>
                </tr>
                
                <tr>
                    <td>HORA</td>
                    <td><input type="text" name="hora" value="<%=item.getHora()%>"></td>
                </tr>
                <tr>
                    <td>ACTIVIDAD</td>
                    <td><input type="text" name="actividad" value="<%=item.getActividad()%>"></td>
                </tr>
                
                <tr>
                    <td>CUMPLIDO</td>
                    <td><input type="text" name="cumplido" value="<%=item.getCumplido()%>"></td>
                </tr>
                
                <tr>
                    <td><input type="hidden" name="op"value="4"</td>
                    <td><input type="hidden" name="nuevo"value="<%=nuevo%>"></td>
                    <td><input type="submit" value="Enviar"</td>
                </tr>
            </table>
        </form>
        
    </body>
</html>
