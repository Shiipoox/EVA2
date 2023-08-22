import Config.Conexion;
import Interfaces.CRUD;
import Modelo.Usuario;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;



public class UsuarioDAO implements CRUD {
    Conexion cn=new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;    
    Usuario u = new Usuario();
    @Override
    public List listar() {
        ArrayList<Usuario>list=new ArrayList<>();
        String sql="select * from tbl_usuario";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                Usuario usu=new Usuario();
               usu.setId_usuario(rs.getInt("id_usuario"));
               usu.setNombre_usuario(rs.getString("nombre_usuario"));
               usu.setApellido_usuario(rs.getString("apellido_usuario"));
               usu.setCorreo_usuario(rs.getString("correo_usuario"));
               usu.setContrasena_usuario(rs.getString("contrasena_usuario"));
                list.add(usu);
            }
        } catch (SQLException e) {
        }
        return list;
    }

    @Override
    public Usuario list(int id_usuario) {
        String sql="select * from tbl_usuario where Id="+id_usuario;
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){                
                u.setId_usuario(rs.getInt("id_usuario"));
                u.setNombre_usuario(rs.getString("nombre_usuario"));
                u.setApellido_usuario(rs.getString("apellido_usuario"));
                u.setCorreo_usuario(rs.getString("correo_usuario"));
                u.setContrasena_usuario(rs.getString("contrasena_usuario"));
            }
        } catch (SQLException e) {
        }
        return u;
    }

    @Override
    public boolean add(Usuario usu) {

String sql = "INSERT INTO tbl_usuario (Nombre_usuario, Apellido_Usuario, Correo_Usuario, Contrasena_Usuario) VALUES ('" + usu.getNombre_usuario()+ "','" + usu.getApellido_usuario()+ "','" + usu.getCorreo_usuario()+ "','" + usu.getContrasena_usuario()+ "')";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (SQLException e) {
        }
       return false;
    }

   
    @Override
     public boolean edit(Usuario usu) {
        String sql="update tbl_usuario set Nombre_Usuario='"+usu.getNombre_usuario()+"',Apellido_Usuario='"+usu.getApellido_usuario()+"',Correo_Usuario='"+usu.getCorreo_usuario()+"',Contrasena_Usuario='"+usu.getContrasena_usuario()+"'where Id_usuario="+usu.getId_usuario();
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (SQLException e) {
        }
        return false;
    }
    @Override
    public boolean eliminar(int id_usuario) {
        String sql="delete from tbl_usuario where Id="+id_usuario;
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (SQLException e) {
        }
        return false;
    }
    
    
    
}
