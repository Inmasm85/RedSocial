/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package app.beans;

import app.entity.Usuario;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

/**
 *
 * @author JoseAntonio
 */
@Stateless
public class UsuarioFacade extends AbstractFacade<Usuario> implements UsuarioFacadeLocal {
    @PersistenceContext(unitName = "RedSocial-ejbPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public UsuarioFacade() {
        super(Usuario.class);
    }
    public Usuario login(String email, String pass)
    {
        Usuario usu;
        Query q;
        
        try
        {
            q = em.createQuery("SELECT u FROM Usuario u WHERE u.email = :email AND u.password = :pass")
                    .setParameter("email", email)
                    .setParameter("pass", pass);
           
            usu = (Usuario) q.getSingleResult();
        }
        catch(NoResultException e)
        {
            return null;
        }
        return usu;   
    }

}
