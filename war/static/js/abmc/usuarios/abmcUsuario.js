function init(){
	load_grid_usuarios();
	define_divs();
}

function define_divs(){
	/*$('#div_alta_modi_usuario').dialog({
		title: '',
		height: 280,
		width: 550,
		modal:true,
		autoOpen: false,
		bgiframe: true
	});*/
}

function open_alta_usuario(){
		open_alta_modi_usuario('accion=A');
}

function open_alta_modi_usuario(param){
	$('#div_alta_modi_usuario').load("url.go?p=10002&"+param);
	$('#div_alta_modi_usuario').show();
	//$('#div_alta_modi_usuario').dialog("open");
}


function close_alta_modi_usuario(){
	$('#div_alta_modi_usuario').hide();
}



function load_grid_usuarios(){
	var apellido=$("#txt_apellido").val();
	var nombre=$("#txt_nombre").val();
	load_grid(apellido, nombre); //esta function esta definida en grillaUsuarios.js
}

