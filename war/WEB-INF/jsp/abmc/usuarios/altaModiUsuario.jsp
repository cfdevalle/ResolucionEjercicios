<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%String accion=request.getParameter("accion");
if(accion==null){ 
	accion="";
}
String usuario=request.getParameter("usuario");
if(usuario==null){
	usuario="";
}
String password=request.getParameter("password");
if(password==null){
	password="";
}
String nombre=request.getParameter("nombre");
if(nombre==null){
	nombre="";
}
String apellido=request.getParameter("apellido");
if(apellido==null){
	apellido="";
}
%>
<fieldset>
<legend><%if(accion.equals("A")){%>Alta<%} else{%>Modificacion<%}%> de usuarios</legend>
	<div class="row">
		<div class="span2">Usuario</div><div class="span2"><input type="text"  id="txt_am_usuario" value="<%=usuario%>" <%if(accion.equals("M")){%>disabled<%}%>/></div>
	</div>
	<div class="row">
		<div class="span2">Password</div><div class="span2"><input type="text" id="txt_am_password" value="<%=password%>"/></div>
	</div>
	<div class="row">
		<div class="span2">Apellido</div><div class="span2"><input type="text" id="txt_am_apellido" value="<%=apellido%>"/></div>
	</div>
	<div class="row">
		<div class="span2">Nombre</div><div class="span2"><input type="text" id="txt_am_nombre" value="<%=nombre%>"/></div>
	</div>
	<div class="row">
	<div class="span2"><input type="button" value="Aceptar" id="btn_aceptar" onclick="javascript:confirmar_accion('<%=accion%>')"/></div>
	<div class="span2"><input type="button" value="Cancelar" id="btn_cancelar" onclick="javascript:close_alta_modi_usuario()"/></div>
	</div>
</fieldset>
