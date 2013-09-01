<%@page import="org.isft.domain.Usuario, java.util.HashMap, org.isft.logic.collection.CollectionUsuario, java.util.Vector, java.util.Iterator"%>
<%String apellido=request.getParameter("apellido");
String nombre=request.getParameter("nombre");
if(apellido==null){
	apellido="";
}
if(nombre==null){
	nombre="";
}
%>
<div class="row" style="background-color:#6699CC; font-weight:bold">
	<div class="span2">Usuario</div><div class="span2">Apellido</div><div class="span2">Nombre</div><div class="span1">Modificar</div><div class="span1">Eliminar</div>	
		</div>
			<%CollectionUsuario collection = new CollectionUsuario();
			HashMap param=new HashMap();
			param.put("apellido", apellido);
			param.put("nombre", nombre);
			try{
			Vector vec_usuarios=collection.select(param);
			int i=0; String color="";
			for( Iterator it = vec_usuarios.iterator(); it.hasNext(); ) { 
			    Usuario usuario = (Usuario)it.next();
			    color=(i%2==0)?"#CCCCCC":"#FFFFFF";
			    i++;%>
					<div class="row" style="background-color: <%=color%>;">
						<div class="span2"><%=usuario.getUsuario()%></div>
						<div class="span2"><%=usuario.getApellido()%></div>
						<div class="span2"><%=usuario.getNombre()%></div>
						<div class="span1"><a href="javascript:modi('accion=M&usuario=<%=usuario.getUsuario()%>&nombre=<%=usuario.getNombre()%>&apellido=<%=usuario.getApellido()%>&password=<%=usuario.getPassword()%>')"><img id="img_modi_usuario" src="/resolucionEjercicios/static/images/editar.gif" alt="Modificar" title="Modificar"/></a></div>
						<div class="span1"><a href="javascript:baja('<%=usuario.getUsuario()%>')"><img src="/resolucionEjercicios/static/images/eliminar.gif" alt="Eliminar" title="Eliminar"/></a></div>	
		</div>
		 <%}
		 } catch(Exception exc){%>
		 	<%=exc.getMessage()%>
		<%}%>
