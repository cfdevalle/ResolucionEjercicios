<%@page import="org.isft.domain.Usuario, org.isft.logic.validator.ValidarUsuario"%>
<!--EJERCICIO 9-->
<link rel="stylesheet" type="text/css" href="/resolucionEjercicios/static/css/bootstrap/css/bootstrap.css"/>
<fieldset>
    <legend>Validacion de usuario - Ejercio 9</legend>
<%
String usuario=request.getParameter("txt_usuario");
String password=request.getParameter("txt_password");

Usuario usuario_instance=new Usuario();
usuario_instance.setUsuario(usuario);
usuario_instance.setPassword(password);

ValidarUsuario validar=new ValidarUsuario();

if(validar.isUsuarioValido(usuario_instance)){%>
<table><tr><td rowspan="2">
            <img src="/resolucionEjercicios/static/images/correcto.gif" align="absmiddle"/></td><td>
            Usuario ingresado: <%=usuario_instance.getUsuario().toUpperCase()%></td></tr><tr><td>
            Password ingresado: <%=usuario_instance.getPassword().toUpperCase()%></td></tr></table>
<%} else{%>
<table><tr><td><img src="/resolucionEjercicios/static/images/error.gif" align="absmiddle"/>Usuario o password err&oacute;neo</td></tr></table>
<%}%>
</fieldset>