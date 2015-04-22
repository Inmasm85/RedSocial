<%-- 
    Document   : SeleccionarAmigos
    Created on : 14-abr-2015, 10:17:46
    Author     : Inma
--%>

<%@page import="java.util.List"%>
<%@page import="app.entity.Amigos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Crear grupo de amigos</title>
    </head>
    <body>
        <h1>Selecciona los amigos para crear el grupo </h1>
        
        
        <form name="edit" action="ConsultarAmigos" method="get">
            
           <fieldset>  
               <%
                   //Lista de amigos
                   List <Amigos> amigos = (List<Amigos>) request.getAttribute("listaAmigos");
               %>
                
               <br>
               Introduzca el nombre del grupo que desea crear
               <br>
               <input name="nombregrupo" type="text" />
               <br>
               
               <table>
                   <tr>
                        <td>Nombre</td>
                        <td>Seleccionar</td>
                   </tr>
                   
                   <%
                         // Recorremos la lista de amigos
                         for (int i=0;i<amigos.size();i++) 
                         {
                   %>
                   <tr>
                       
                       // Muestra los nombre de todos los amigos
                    /*   <td> <% amigos.get(i).getId1Usuario(). %> </td> */
                    <td> <input name="checkAmigo" type="checkbox" /> </td>
                   </tr>

                   <% 
                          }
                   %>
               </table>     
                    <%-- Botón buscar --%>
                    <input type="submit" name="btnCrear" value="Crear grupo">
            </fieldset>

            </form>
        
        
        
        
        
    </body>
</html>
