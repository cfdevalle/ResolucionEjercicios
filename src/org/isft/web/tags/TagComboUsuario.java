package org.isft.web.tags;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.TagSupport;
import org.isft.logic.collection.CollectionUsuario;
import java.util.HashMap;
import java.util.Vector;
import org.isft.domain.Usuario;

public class TagComboUsuario extends TagCombo {
    private String apellido;
    private String nombre;
    
    public int doStartTag() throws JspException {
        try {
        		
            super.doStartTag();

            CollectionUsuario collection=new CollectionUsuario();
            HashMap param=new HashMap();
            Vector vec=collection.select(param);

            for(int i=0; i<vec.size(); i++){
                Usuario usuario= (Usuario)vec.get(i);
                pageContext.getOut().print("<option value=\""+usuario.getUsuario()+"\">"+usuario.getApellido()+", "+usuario.getNombre()+"</option>\n");
            }
            
	} catch(Exception exc){
            exc.printStackTrace();
            throw new JspException("Exception en TagCombo " + exc.getMessage());
        }
        return SKIP_BODY;
    }
    
    public int doEndTag() throws JspException {
        try{
        	super.doEndTag();
        } catch(Exception exc){
            exc.printStackTrace();
            throw new JspException(exc.getMessage());
        }return EVAL_PAGE;
    }
	  public void setApellido(String apellido){
	  	this.apellido=apellido;
	  }
	  public String getNombre(){
	  	return this.nombre;
	  }
}
