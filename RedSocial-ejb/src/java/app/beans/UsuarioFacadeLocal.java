/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package app.beans;

import app.entity.Usuario;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author JoseAntonio
 */
@Local
public interface UsuarioFacadeLocal {

    void create(Usuario usuario);

    void edit(Usuario usuario);

    void remove(Usuario usuario);

    Usuario find(Object id);

    List<Usuario> findAll();

    List<Usuario> findRange(int[] range);

    int count();
    
    public Usuario login(String email, String pass);
    public List<Usuario> buscarPorNombreParecido(String nombre);
}
