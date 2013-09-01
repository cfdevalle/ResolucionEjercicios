/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package org.isft.web.servlets;

import java.io.IOException;
import java.util.MissingResourceException;
import java.util.ResourceBundle;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Jose
 */
public class ControladorMenu  extends HttpServlet {
    
     public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
 	String codPage=request.getParameter("p");
	try{	
		despachar(request, response, codPage);	 
        } catch(Exception exc){
        	response.sendError(404, exc.toString());
           	throw new ServletException(exc.getMessage());
        }
    }

    public void despachar(HttpServletRequest request, HttpServletResponse response, String codPage) throws ServletException, IOException {
	String path="",  error="";
        try{
            ResourceBundle resbound=ResourceBundle.getBundle("web.pathMenu");
            /*if(request.getSession(false)==null || request.getSession(false).getAttribute("usr")==null){
                codPage="9404";
                error="Para acceder precisa iniciar sesión";
            }*/
            try{
                path=resbound.getString(codPage);
            }catch(Exception exc){
                path=resbound.getString("9505");
                error="Pagina no encontrada";
            }
            RequestDispatcher despachador = getServletContext().getRequestDispatcher(path);
            System.out.println("PATH A BUSCAR: " + path);
            request.setAttribute("error", error);
            despachador.forward(request, response);             
     	}catch(MissingResourceException mExc){
            System.out.println("MISSING EXCEPTION:" + mExc.toString());
            //VER DIRECCIONAMIENTO DE CODPAGE NO ENCONTRADO
            throw new ServletException(mExc.getMessage());
     	}
	catch(Exception exc){
            //VER DIRECCIONAMIENTO DE EXCEPCION GENERAL
            throw new ServletException(exc.getMessage());
	}
    }
}
