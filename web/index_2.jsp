
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Partisipacion 2</title>
    </head>
    <body>
        <h1>Productos </h1>
         <form action="datos_pro" method="post">
        <table cellspacing="6" align="center">
            <caption><h3 align="center">DATOS DE UN PRODUCTO</h3></caption>
           
                <tr>
                    <td align="right">ID</td>
			<th>
		<input type="text" name="id"></th>
		</tr>	
                
		<tr>
			<td align="right">DESCRIPCION</td>
			<th><input   type="text" name="descripcion" ></th>
		</tr>	
               
                <tr>
			<td align="right">CATEGORIA</td>
			<th><input   type="text" name="categoria" ></th>
		</tr>
                
                <tr>
			<td></td>
			<th><input type="submit" value="REGISTRAR"></th>
		</tr>
         
        </table>
        </form>
    </body>
</html>
