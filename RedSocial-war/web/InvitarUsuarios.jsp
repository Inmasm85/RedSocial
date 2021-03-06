<%-- 
    Document   : InvitarAmigos
    Created on : 23-abr-2015, 13:03:42
    Author     : Andrés Ramos
--%>

<%@page import="java.util.List"%>
<%@page import="app.entity.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Invitar amigo</title>
    </head>
    <body>
        <h1>Busca a alguien para invitarlo como amigo</h1>
        
        <form name="buscarUsuarios" action="InvitarAmigo" method="POST">
            <input type="text" name="nombre" />
            <input type="submit" value="Buscar" name="btnBuscar" />
        </form>
<%
                   //Lista de amigos
                   List <Usuario> usuarios = (List<Usuario>) request.getAttribute("listaAmigos");
                   if(usuarios != null){
%>
        <form name="seleccionarUsuarios" action="InvitarUsuarios" method="POST">
            <table>
                <thead>
                    <th>Nombre</th>
                    <th>Seleccionar</th>
                </thead>
                <tbody>
<%                  // Recorremos la lista de amigos
                        for (int i=0;i<usuarios.size();i++){
%>
                    <tr>
                            <%-- Muestra los usuarios--%>
                        <td> <=% usuarios.get(i).getNombre + " " + usuarios.get(i).getApellidos %> </td>
                        <td> <input name="checkUsuario" type="checkbox" /> </td>
                    </tr>
<% 
                        }
                   }
%>
                </tbody>
            </table>     
            <%-- Botón Invitar --%>
            <input type="submit" name="btnInvitar" value="Invitar">
        </form>
    </body>
</html>
