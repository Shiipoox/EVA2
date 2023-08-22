/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Interfaces;
import Modelo.Usuario;
import java.util.List;


public interface CRUD {
    public List listar();
    public Usuario list(int id_usuario);
    public boolean add(Usuario usu);
    public boolean edit(Usuario usu);
    public boolean eliminar(int id_usuario);
}

