<%@page import="org.isft.domain.Usuario, org.isft.domain.UsuarioRol, org.isft.domain.Rol, org.isft.logic.validator.ValidarUsuario, java.util.HashMap, org.isft.logic.collection.CollectionUsuarioRol, java.util.Vector, java.util.ResourceBundle"%>
<!--EJERCICIO 12-->
<link rel="stylesheet" type="text/css" href="/ISFT_APPLICATION_NAME/static/css/bootstrap/css/bootstrap.css"/>
<fieldset>
    <legend>Muestreo en tabla de los roles de usuario desde DB - Ejercicio 12</legend>
<%
String usuario=request.getParameter("txt_usuario");
String password=request.getParameter("txt_password");
Usuario usuario_instance=new Usuario();
usuario_instance.setUsuario(usuario);
usuario_instance.setPassword(password);
ValidarUsuario validar=new ValidarUsuario();
if(validar.isUsuarioValido(usuario_instance)){
    HashMap param=new HashMap();
    param.put("usuario", usuario_instance);
    CollectionUsuarioRol col_usu_rol=new CollectionUsuarioRol();
    try{
        Vector usuariosRoles=col_usu_rol.getUsuariosRol(param);
        for(int i=0; i<usuariosRoles.size(); i++){
            UsuarioRol usuarioRol = (UsuarioRol)usuariosRoles.get(i);
            Usuario usuItem=usuarioRol.getUsuario();
            Vector roles=usuarioRol.getRoles();%>
            Usuario recuperado de la base de datos: <b><%=usuItem.getApellido().toUpperCase()%>, <%=usuItem.getNombre().toUpperCase()%></b><br/>
            Roles recuperados para el mismo:
            <table border="1"><tr><td>Id</td><td>Descripcion</td></tr>
            <%for(int j=0; j<roles.size(); j++){%>
                <tr><td><%=((Rol)roles.get(j)).getIdRol()%></td><td><%=((Rol)roles.get(j)).getDescripcionRol()%></td></tr>  
            <%}%>
            </table>
        <%}
    } catch(Exception exc){%>
        Excepcion producida: <%=exc.getMessage()%>
   <%}
} else{%>
<table><tr><td><img src="/ISFT_APPLICATION_NAME/static/images/error.gif" align="absmiddle"/>Usuario o password err&oacute;neo</td></tr></table>
<%}%>
</fieldset>
<a href="abmc/abmcUsuario.jsp">Ir a ejercicio 13</a>
<a href="ejemploReporte.rpt?cod=1000">Imprimir reporte de ejemplo</a>
<a href="ejemploReporte.rpt?cod=1001&param=p_apellido=LOPEZ@p_nombre=JUAN&file=ReporteDeEjemplo">Imprimir reporte de ejemplo 2</a>

<br/><br/>
Recuperando un valor a partir de una clave desde el properties en jsp
<br/><%
   ResourceBundle rb= ResourceBundle.getBundle("web.pathMenu");
   out.println("Para la clave 1000, su valor asociado es:" + rb.getString("1000"));
%>