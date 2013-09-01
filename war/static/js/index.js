function validar(){
	var usuario=document.getElementById("txt_usuario").value,
	    password=document.getElementById("txt_password").value,
	    div_mensaje_usuario=document.getElementById("div_mensaje_usuario"),
	    div_mensaje_password=document.getElementById("div_mensaje_password"),
	    image_mensaje_error="<img src=\"static/images/error.gif\"/>",
	    image_mensaje_atencion="<img src=\"static/images/atencion.gif\"/>",
	    flag=false;
	
	div_mensaje_usuario.innerHTML="";
	div_mensaje_password.innerHTML="";
	if(usuario.trim()=="" || usuario.length<6){
		flag=true;
		if(usuario.trim()==""){
			div_mensaje_usuario.innerHTML=image_mensaje_error;
		} else{
			div_mensaje_usuario.innerHTML=image_mensaje_atencion;
		}
	}
	if(password.trim()=="" || password.length<6){
		flag=true;
		if(password.trim()==""){
			div_mensaje_password.innerHTML=image_mensaje_error;
		} else{
			div_mensaje_password.innerHTML=image_mensaje_atencion;;
		}
	}
	if(flag){
		return false;
	} else{
		document.getElementById("frm_login").action="jsp/abmc/usuarios/abmcUsuario.jsp";
		document.getElementById("frm_login").submit();
	}	
}