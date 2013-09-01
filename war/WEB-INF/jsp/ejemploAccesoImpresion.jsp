<%@page import="java.util.ResourceBundle"%>
<a href="ejemploReporte.rpt?cod=1000">Imprimir reporte de ejemplo</a><br/>
<a href="ejemploReporte.rpt?cod=1001&param=p_apellido=LOPEZ@p_nombre=JUAN&file=ReporteDeEjemplo">Imprimir reporte de ejemplo 2</a><br/>
<a href="ejemploReporte.rpt?cod=1003&param=p_apellido=lopez&file=ListadoDeUsuarios">Imprimir reporte</a>

<br/><br/>
Recuperando un valor a partir de una clave desde el properties en jsp
<br/><%
   ResourceBundle rb= ResourceBundle.getBundle("web.pathMenu");
   out.println("Para la clave 1000, su valor asociado es:" + rb.getString("1000"));
%>