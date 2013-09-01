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
import org.isft.domain.Usuario;
import org.isft.jdbc.DataBase;
import org.isft.logic.AccessManager;
import org.isft.logic.AccessInterface;

public class CollectionUsuario extends AccessManager implements AccessInterface {
       public Vector select(HashMap param) throws Exception{
        Vector vec_usuarios = new Vector();
        try{
        		String sql="SELECT * from usuario  where usuario is not null ";
        		if(param!=null && param.get("usuario")!=null){ 
        			sql +=" and USUARIO ='"+(String)param.get("usuario")+"'";
        		}   
        		if(param!=null && param.get("apellido")!=null && !(((String)param.get("apellido")).equals(""))){ 
		        			sql +=" and APELLIDO like '%"+(String)param.get("apellido")+"%'";
		     		}
						if(param!=null && param.get("nombre")!=null && !(((String)param.get("nombre")).equals(""))){ 
		        			sql +=" and NOMBRE like '%"+(String)param.get("nombre")+"%'";
		     		}
		     		
        		System.out.println("CONSULTA A EJECUTAR: " + sql);
            ResultSet rst = execute(sql);   
            System.out.println("EJECUTO CONSULTA");
            while(rst.next()){
                System.out.println("EN EL WHILE");
                Usuario usuario = new Usuario();
                usuario.setUsuario(rst.getString("usuario"));
                usuario.setPassword(rst.getString("password"));
                usuario.setApellido(rst.getString("apellido"));
                usuario.setNombre(rst.getString("nombre"));    
                vec_usuarios.add(usuario);
                System.out.println("usuario recuperado: " + usuario.getApellido());
            }             
        }catch(Exception exc){
            throw new Exception(exc);
        }
        finally{
            try{
                close_connection();
            }
            catch(Exception exc){
                throw new Exception(exc.getMessage());
            }
        }   
        return vec_usuarios;
    }
    
}
