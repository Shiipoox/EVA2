

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
</html>
        <div class="container">
            <div class="col-lg-6">
                <h1>Agregar Persona</h1>
                <form action="Controlador">
                <label>Nombre</label><br>
                <input class="form-control" type="text" name="txtNombre" ><br>
                 <label>Apellido</label><br>
                <input class="form-control" type="text" name="txtApellido" ><br>
                 <label>Correo</label><br>
                <input class="form-control" type="text" name="txtNombre" ><br>
                 <label>Contrasñ</label><br>
                <input class="form-control" type="text" name="txtNombre" ><br>
                <input class="btn btn-primary" type="submit" name="accion" value="Agregar"><br>
                    <a href="Controlador?accion=listar">Regresar</a>
                </form>
            </div>

        </div>