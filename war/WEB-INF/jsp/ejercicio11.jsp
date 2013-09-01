<%@page import="org.isft.domain.Usuario, org.isft.domain.UsuarioRol, org.isft.domain.Rol, org.isft.logic.validator.ValidarUsuario, java.util.HashMap, org.isft.logic.collection.CollectionUsuarioRol, java.util.Vector"%>
<!--EJERCICIO 11-->
<link rel="stylesheet" type="text/css" href="/resolucionEjercicios/static/css/bootstrap/css/bootstrap.css"/>
<fieldset>
    <legend>Recuperar roles de usuario desde DB - Ejercicio 11</legend>
<%
String usuario=request.getParameter("txt_usuario");
String password=request.getParameter("txt_password");
Usuario usuario_instance=new Usuario();
usuario_instance.setUsuario(usuario);
usuario_instance.setPassword(password);
ValidarUsuario validar=new ValidarUsuario();
if(validar.isUsuarioValido(usuario_instance)){%>
    <table><tr><td rowspan="2"><img src="/resolucionEjercicios/static/images/correcto.gif" align="absmiddle"/></td><td>Usuario ingresado: <%=usuario_instance.getUsuario().toUpperCase()%></td></tr><tr><td>Password ingresado: <%=usuario_instance.getPassword().toUpperCase()%></td></tr></table><hr/>
    <%HashMap param=new HashMap();
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
            <ul>
            <%for(int j=0; j<roles.size(); j++){%>
            <li><b><%=((Rol)roles.get(j)).getIdRol()%> - <%=((Rol)roles.get(j)).getDescripcionRol()%></b></li>  
            <%}%>
            </ul>
        <%}
    } catch(Exception exc){%>
        Excepcion producida: <%=exc.getMessage()%>
   <%}
} else{%>
<table><tr><td><img src="/resolucionEjercicios/static/images/error.gif" align="absmiddle"/>Usuario o password err&oacute;neo</td></tr></table>
<%}%>
</fieldset>