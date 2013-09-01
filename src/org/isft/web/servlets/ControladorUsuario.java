/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package org.isft.web.servlets;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.isft.logic.updater.AbmUsuario;
import java.util.HashMap;

public class ControladorUsuario  extends HttpServlet {
  public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    doGet(request, response);
  }
  public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
 		String usuario=request.getParameter("usuario");
 		String apellido=request.getParameter("apellido");
 		String nombre=request.getParameter("nombre");
 		String password=request.getParameter("password");
 		String accion=request.getParameter("accion");
 		
 		HashMap param=new HashMap();
 		param.put("usuario", usuario);
 		param.put("apellido", apellido);
 		param.put("nombre", nombre);
 		param.put("password", password);
 		
 		AbmUsuario abm=new AbmUsuario();
 		try{
	 		if(accion.equals("A")){
	 			abm.insert(param);
	 		} else if(accion.equals("B")){
	 			abm.delete(param);
	 		} else {
	 			abm.update(param);
	 		}
 		} 
 		catch(ServletException exc){
 			throw new ServletException(exc.getMessage());
 		}
 		catch(Exception exc){
 			throw new ServletException(exc.getMessage());
 		}
  }
}
