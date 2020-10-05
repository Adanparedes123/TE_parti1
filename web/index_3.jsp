<%@page import="com.emergentes.modelo.nota"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Participacion 3</title>
    </head>
    <body>
        <%
            if (session.getAttribute("listaest") == null) {
                ArrayList<nota> listaux = new ArrayList<nota>();
                session.setAttribute("listaest", listaux);
            }
            ArrayList<nota> lista = (ArrayList<nota>) session.getAttribute("listaest");

        %>
        <h1>Registre sus actividades </h1>
        <a href="Controlador?op=1">Nuevo</a>
        <br>
        <table border ="1">
            <tr>
              
                <th>Id</th>
                <th>Hora</th>
                <th>Actividad</th>
                <th>Cumplido</th>
                <th></th>
                <th></th>
            </tr>
            <%                if (lista != null) {
                    for (nota item : lista) {
            %>
            <tr>
                <td><%=item.getId()%></td>
                <td><%=item.getHora()%></td>
                <td><%=item.getActividad()%></td>
                <td><%=item.getCumplido()%></td>
                <td><a href="Controlador?op=2&id=<%=item.getId()%>">
                        Editar</a>
                </td>
                <td><a href="Controlador?op=3&id=<%=item.getId()%>"
                       onclick='return confirm("Esta seguro de elimiar el registro ?");
                       '>Eliminar</a>
                </td>

            </tr>
            <%
                    }
                }
            %>
        </table>
    </body>
</html>
