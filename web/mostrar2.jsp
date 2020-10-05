<%@page import="com.emergentes.modelo.producto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% producto prod = (producto)request.getAttribute("mipro");%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro del producto</title>
    </head>
    <body>
        <h1>Datos del producto</h1>
        <p>El ID es : <%=prod.getId()%> </p>
        <p>La Descripcion es :<%=prod.getDescripcion()%> </p>
        <p>La Categoria es : <%=prod.getDescripcion()%></p>
        
         <a href="index.jsp">Volver</a>
    </body>
</html>
