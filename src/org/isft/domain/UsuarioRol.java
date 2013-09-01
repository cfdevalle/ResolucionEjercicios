/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package org.isft.domain;

import java.util.Vector;

/**
 *
 * @author Jose
 */
public class UsuarioRol {
private Usuario usuario;
private Vector roles;

    /**
     * @return the usuario
     */
    public Usuario getUsuario() {
        return usuario;
    }

    /**
     * @param usuario the usuario to set
     */
    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }

    /**
     * @return the roles
     */
    public Vector getRoles() {
        return roles;
    }

    /**
     * @param roles the roles to set
     */
    public void setRoles(Vector roles) {
        this.roles = roles;
    }

}
