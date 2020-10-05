
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Participacion 1</title>
    </head>
    <body>
        <form action="datos" method="post">
        <h1>Datos</h1>
        <table cellspacing="6" align="center">
            <caption><h3 align="center">DATOS DE UNA PERSONA</h3></caption>
           
                <tr>
                    <td align="right">NOMBRES</td>
			<th>
		<input type="text" name="nombre"></th>
		</tr>	
                
		<tr>
			<td align="right">APELLIDOS</td>
			<th><input   type="text" name="apellido" ></th>
		</tr>	
                
		<tr>
                    <td align="right"><label for="">SEXO</label></td>
		</tr>
                <tr>
                    <td align="right"><input type="checkbox"name="sexo" value="Hombre"></td>
                    <td>HOMBRE</td>
                </tr>
                <tr>
                    <td align="right"><input type="checkbox"name="sexo" value="Mujer"></td>
                    <td>MUJER</td>
                </tr>
                <tr>
			<td align="right"><label for="">TELEFONO</label></td>
                        <td><input type="text" name="telefono" value="0"></td>
		</tr>
                <tr>
			<td align="right"><label for="">CORRERO ELECTRONICO</label></td>
			<td><input type="email" name="correo"></td>
		</tr>
                <tr>
			<td></td>
			<th><input type="submit" value="REGISTRAR"></th>
		</tr>
         
        </table>
        </form>
    </body>
</html>
