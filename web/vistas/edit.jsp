<%@page import="Modelo.Usuario"%>
<%@page import="ModeloDAO.UsuarioDAO"%>
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
            <div class="col-lg-6">
              <%
              UsuarioDAO dao=new UsuarioDAO();
              int id=Integer.parseInt((String)request.getAttribute("idper"));
              Usuario u=(Usuario)dao.list(id);
          %>
            <h1>Modificar Usuario</h1>
            <form action="Controlador">
                <label>Nombre</label><br>
                <input class="form-control" type="text" name="txtNombre" value="<%= u.getNombre_usuario()%>"><br>
                 <label>Apellido</label><br>
                <input class="form-control" type="text" name="txtApellido" value="<%= u.getApellido_usuario()  %>"><br>
                 <label>Correo</label><br>
                <input class="form-control" type="text" name="txtNombre" value="<%= u.getCorreo_usuario()  %>"><br>
                 <label>Contrasñ</label><br>
                <input class="form-control" type="text" name="txtNombre" value="<%= u.getContrasena_usuario()  %>"><br>
                
                <input type="hidden" name="txtId" value="<%= u.getId_usuario() %>">
                <input class="btn btn-primary" type="submit" name="accion" value="Actualizar"> 
                <a href="Controlador?accion=listar">Regresar</a>
            </form>
          </div>
          
        </div>
    </body>
</html>
