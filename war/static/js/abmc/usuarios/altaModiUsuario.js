function recargar(){
	load_grid();	//esta function esta definida en grillaUsuarios.js
}

function confirmar_accion(accion){
	var am_apellido=$("#txt_am_apellido").val();
	var am_nombre=$("#txt_am_nombre").val();
	var am_usuario=$("#txt_am_usuario").val();
	var am_password=$("#txt_am_password").val();
  var param={
		usuario: am_usuario,
		password: am_password,
		apellido: am_apellido,
		nombre: am_nombre,
		accion: accion
	};
	$.ajax({
	  type: 'POST',
	  url: 'manager.usuario',
	  data: param,
	  success: function(response){
	  		Notifier.success('\n ' + (accion=='A'? 'Alta': 'Modificacion') + ' de usuario '  + am_usuario + ' efectuada con exitoso ');
	  		recargar();						
	  },
	  error: function(response){
	  	Notifier.error(response.statusText);	
	  }
	});		
}
