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
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        
               <%
                   //Lista de amigos
                   List <Usuario> usuarios = (List<Usuario>) request.getAttribute("listaAmigos");
                   
                   if(usuarios != null){
                   
               %>
    <form>
               <table>
                   <thead>
                        <td>Nombre</td>
                        <td>Seleccionar</td>
                    </thead>
                    <tbody>
                   <%
                         // Recorremos la lista de amigos
                         for (int i=0;i<usuarios.size();i++) 
                         {
                   %>
                   <tr>
                       
                       // Muestra los nombre de todos los amigos
                    /*   <td> <% usuarios.get(i).getId1Usuario(). %> </td> */
                    <td> <input name="checkUsuario" type="checkbox" /> </td>
                   </tr>
                    </tbody>
                   <% 
                          }
                   %>
               </table>     
                <%-- Botón Invitar --%>
               <input type="submit" name="btnInvitar" value="invitar amigo">
    </form>
    </body>
</html>
