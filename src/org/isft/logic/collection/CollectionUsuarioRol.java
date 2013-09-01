/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package org.isft.logic.collection;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Collection;
import java.util.HashMap;
import java.util.Vector;
import org.isft.domain.Rol;
import org.isft.domain.Usuario;
import org.isft.domain.UsuarioRol;
import org.isft.jdbc.DataBase;

/**
 *
 * @author Jose
 */
public class CollectionUsuarioRol {
       public Vector getUsuariosRol (HashMap param) throws Exception{
        Vector vec_usuarios_rol = new Vector(), vec_roles=null;
        String usu_prev="", usu_current="";
        Usuario usu_obj=null;
        Usuario usuario = (Usuario)param.get("usuario");
        try{
            DataBase db = new DataBase(new HashMap());
            ResultSet rst = null;
            Connection cn = db.getConnection();
            Statement s = cn.createStatement();
            rst = s.executeQuery("SELECT U.USUARIO, U.APELLIDO, U.NOMBRE, R.IDROL, R.DESCRIPCIONROL FROM USUARIO U, ROL R, USUARIO_ROL UR WHERE U.USUARIO=UR.USUARIO_USUARIO AND UR.ROL_IDROL=R.IDROL AND U.USUARIO='"+usuario.getUsuario()+"' order by 1");   
            System.out.println("EJECUTO CONSULTA");
            while(rst.next()){
                System.out.println("EN EL WHILE");
                usu_current=rst.getString("usuario");
                System.out.println("Usuario recuperado: " + usu_current);
                if(usu_obj==null){
                    usu_obj=new Usuario();
                    usu_obj.setUsuario(usu_current);
                    usu_obj.setApellido(rst.getString("apellido"));
                    usu_obj.setNombre(rst.getString("nombre"));
                    vec_roles=new Vector();
                }
                Rol rol=new Rol();
                rol.setIdRol(rst.getInt("idRol"));
                rol.setDescripcionRol(rst.getString("descripcionRol"));
                vec_roles.add(rol);                    
            } 
            UsuarioRol usu_rol=new UsuarioRol();
            usu_rol.setUsuario(usu_obj);
            usu_rol.setRoles(vec_roles);
            vec_usuarios_rol.add(usu_rol);
        }catch(Exception exc){
            throw new Exception(exc);
        }
        return vec_usuarios_rol;
    }
}
