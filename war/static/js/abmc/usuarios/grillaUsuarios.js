function load_grid(apellido, nombre){
	if(typeof(apellido)=='undefined'){
		apellido='';
	}
	if(typeof(nombre)=='undefined'){
		nombre='';
	}
	$("#div_grilla_usuarios").load("grid.go?p=10001&apellido="+apellido+"&nombre="+nombre);
}

function modi(param){
	open_alta_modi_usuario(param);	
}

function baja(usuario){
	if(confirm("Realmente desea dar de baja al usuario " + usuario + "?")){ 
		  var param={
				usuario: usuario,
				accion: 'B'
			};
			$.ajax({
			  type: 'POST',
			  url: 'manager.usuario',
			  data: param,
			  success: function(response){
			  		Notifier.success('\n Baja de usuario ' + usuario + ' exitosa ');
			  		load_grid();						
			  },
			  error: function(response){
			  	console.dir(response);
			  	Notifier.error(response.statusText);	
			  }
			});	
	} 	
}
