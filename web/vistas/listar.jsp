
<%@page import="ModeloDAO.UsuarioDAO"%>
<%@page import="Modelo.Usuario"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">
            <h1>Personas</h1>
            <a class="btn btn-success" href="Controlador?accion=add">Agregar Nuevo</a>
            <br>
            <br>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th class="text-center">Id_Usurio</th>
                        <th class="text-center">Nombre</th>
                        <th class="text-center">Apellido</th>
                        <th class="text-center">Correo</th>
                        <th class="text-center">Contraseña</th>
                        <th class="text-center">Acciones</th>
                    </tr>
                </thead>
                <%
                    
                    UsuarioDAO dao = new UsuarioDAO();
                    List<Usuario>list=dao.listar();
                    Iterator<Usuario>iter=list.iterator();
                    Usuario usu=null;
                    while(iter.hasNext()){
                        usu=iter.next();
                    
                %>
                <tbody>
                    <tr>
                        <td class="text-center"><%= usu.getNombre_usuario()%></td>
                        <td class="text-center"><%= usu.getApellido_usuario()%></td>
                        <td class="text-center"><%= usu.getCorreo_usuario()%></td>
                        <td class="text-center"><%= usu.getContrasena_usuario() %></td>
                        <td class="text-center">
                            <a class="btn btn-warning" href="Controlador?accion=editar&id=<%= usu.getId_usuario()%>">Editar</a>
                            <a class="btn btn-danger" href="Controlador?accion=eliminar&id=<%= usu.getId_usuario() %>">Eliminar</a>
                        </td>
                    </tr>
                    <%}%>
                </tbody>
            </table>

        </div>
    </body>
</html>
