<%-- 
    Document   : CrearPostGrupo
    Created on : 23-abr-2015, 11:19:34
    Author     : Josan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    
    <title>Crear Post</title>
    
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    

  </head>
  <body>
	<form name="edit" action="CrearPost" method="post">
		<table border="1">
			<tbody>
				<%--<tr>
					<td><b>Título:</b></td>
					<td><input type="text" name="titulo" size ="60" value=""/></td>		
					</tr><tr>		
					<td><b>Mensaje:</b></td>	
					<td><input type="text" name="mensaje" size ="60" value=""/></td>
					</tr><tr>
					<td colspan="2"><input type="submit" name="btnSave" value="Publicar"/></td>--%>
                                </tr>
                                	<tr>
					<td><b>Título:</b></td>
					<td><input type="text" name="titulo" size ="60" value=""/></td>		
					</tr><tr>		
                        		<td><b>Mensaje:</b></td>
					<td><textarea name="mensaje" rows="10" cols="45"> ¿Qué estás pensando?</textarea></td>
					</tr><tr>
                                        <td colspan="2"><input type="submit" name="btnSave" value="Publicar"/></td>
                                        </tr>
                                        <tr></tr>
			</tbody>
		</table>
	</form>
  </body>
</html>
