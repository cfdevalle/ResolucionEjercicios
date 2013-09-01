<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<script type="text/javascript" src="static/js/index.js"></script>
	<link rel="stylesheet" type="text/css" href="static/css/bootstrap/css/bootstrap.css"/>
	<link rel="stylesheet" type="text/css" href="static/css/index.css"/>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Login</title>
</head>
<body>
	<div id="div_main">
	<fieldset>
	<legend>Login</legend>
<form name="frm_login" id="frm_login" action="" method="post">
  <table width="50%" border="0" align="center">
	<tr>
		<td>Usuario</td>
      		<td><input type="text" name="txt_usuario" id="txt_usuario" autocomplete="off"></td>
      		<td><div id="div_mensaje_usuario"/></td>
	</tr>
	<tr>
		<td>Password</td>
      		<td><input type="password" name="txt_password" id="txt_password" autocomplete="off"></td>
      		<td><div id="div_mensaje_password"/></td>
	</tr>
	<tr>
		<td colspan="3" align="center">
	  		<input type="button" name="btn_aceptar" value="Aceptar" onclick="validar()">
		  	<input type="reset" name="btn_cancelar" value="Cancelar">
		</td>
	</tr>
  </table>
</form>
	</fieldset>
	</div>
</body>
</html>
