/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package org.isft.logic.validator;

import org.isft.domain.Usuario;

/**
 *
 * @author Jose
 */
public class ValidarUsuario {
    public boolean isUsuarioValido(Usuario usuario){
        System.out.println("usuario : " + usuario.getUsuario() + " - " + usuario.getPassword());
        return (usuario.getUsuario().equals("jlopez") && usuario.getPassword().equals("lopezj"));
    }
}
