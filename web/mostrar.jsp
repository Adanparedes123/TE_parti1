<%@page import="com.emergentes.modelo.recive"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    recive dat = (recive)request.getAttribute("midatos");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro de la persona</title>
    </head>
    <body>
        <h1>Los datos son</h1>
        <p>su nombre es : <%=dat.getNombres()%></p>
                <p> su apeliido es : <%=dat.getApellidos()%></p>         
                    <% String sex[] = dat.getSexo();
                    if(sex != null)
                    { for(int i=0;i<sex.length; i++)
                    {
                        
                        %>
                <p>su sexo es : <%=sex[i]%></p>
                <%  
                    } 
                    }
                %>
                <p>su telefono es : <%=dat.getTelefono()%></p>
                <p>su correo es : <%=dat.getCorreo()%></p>
                
                <a href="index.jsp">Volver</a>


    </body>
</html>
