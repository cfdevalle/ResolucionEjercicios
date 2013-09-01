<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<script type="text/javascript" src="/resolucionEjercicios/static/js/abmc/usuarios/grillaUsuarios.js"></script>
<script type="text/javascript" src="/resolucionEjercicios/static/js/abmc/usuarios/altaModiUsuario.js"></script>
<script type="text/javascript" src="/resolucionEjercicios/static/js/abmc/usuarios/abmcUsuario.js"></script>

<script type="text/javascript" src="/resolucionEjercicios/static/js/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="/resolucionEjercicios/static/js/jquery-ui.min.js"></script>

<script src="/resolucionEjercicios/static/css/notifier/notifier.js" type="text/javascript"></script>

<link rel="stylesheet" type="text/css" href="/resolucionEjercicios/static/css/bootstrap/css/bootstrap.css"/>

<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Abmc de Usuario</title>
</head>
<body>
<fieldset>
	<legend>Abmc de usuario</legend>
		<div class="row">
				<div class="span8">
					<div class="row">
						<div class="span3">Apellido: <input type="text" id="txt_apellido" name="txt_apellido"></div>
						<div class="span3">Nombre: <input type="text" id="txt_nombre" name="txt_nombre"></div>
						<div class="span2">
							<a href="javascript:load_grid_usuarios()"><img src="/resolucionEjercicios/static/images/buscar.gif" title="Buscar" alt="Buscar"/></a>
							<a href="javascript:open_alta_usuario()"><img src="/resolucionEjercicios/static/images/nuevo.gif" title="Nuevo" alt="Nuevo"/></a>
						</div>
					</div>
					<div class="row">
						<div class="span8">
								<div id="div_grilla_usuarios"></div>
						</div>
					</div>
				</div>
				<div class="span4">
					<div id="div_alta_modi_usuario" style="display:none"></div>
				</div>
		</div>	
</fieldset>
</body>
<script type="text/javascript">
	$(document).ready(function() {
    	init();
	});
</script>
</html>