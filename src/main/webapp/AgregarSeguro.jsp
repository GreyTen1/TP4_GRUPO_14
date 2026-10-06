<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="dao.DaoSeguro,entidad.Seguro, java.lang.String" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<a href="Inicio.jsp"> Inicio </a>
<a href="AgregarSeguro.jsp"> Agregar Seguros </a>
<a href="ListarSeguros.jsp"> Listar Seguros </a>

<H1>Agregar seguros</H1>

<form method="post" action="AgregarSeguro.jsp">
	<table>
		<tr> 
			<td> Id Seguro: </td>
			<td> </td>
		</tr>
		<tr> 
			<td> Descripcion: </td>
			<td> <input type="text" name="txtDescripcion"> </td>
		</tr>
		<tr> 
			<td> Tipo de Seguro: </td>
			<td> 
				<select name="ddlTipoSeguro">
				    <option value="1">Seguro De Casas</option>
				    <option value="2">Seguro De Vidas</option>
				    <option value="3">Seguro De Motos</option>
				</select> 
			</td>
		</tr>
		<tr> 
			<td> Costo contratacion: </td>
			<td> <input type="text" name="txtCostoContratacion"> </td>
		</tr>
		<tr> 
			<td> Costo Maximo Asegurado: </td>
			<td> <input type="text" name="txtcostoMaxAsegurado"> </td>
		</tr>
		<tr> 
			<td> <input type="submit" name="btnAceptar" value="Aceptar">  </td>
			<td>  </td>
		</tr>
	</table>
</form>

<%
	try
	{
		if(request.getParameter("btnAceptar") != null){

			String desc = request.getParameter("txtDescripcion");
			int tipoSeguro = Integer.parseInt(request.getParameter("ddlTipoSeguro"));
			double costoContratacion = Double.parseDouble(request.getParameter("txtCostoContratacion"));
			double costoMaxAsegurado = Double.parseDouble(request.getParameter("txtcostoMaxAsegurado"));

			Seguro seguro = new Seguro();
			seguro.setDescripcion(desc);
			seguro.setIdTipo(tipoSeguro);
			seguro.setCostoContratacion(costoContratacion);
			seguro.setCostoAsegurado(costoMaxAsegurado);

			DaoSeguro daoSeguro = new DaoSeguro();
			int filas = daoSeguro.agregarSeguro(seguro);

			if(filas > 0){
%>
				<b style="color: green;">Operacion exitosa</b>
<%
			} else {
%>
				<p style="color: red;">No se pudo agregar el seguro</p>
<%
			}
		}
	}
	catch(NumberFormatException e)
	{
%>
		<p style="color: red;">Error: el costo de contratacion y el costo maximo asegurado deben ser numeros validos</p>
<%
	}
	catch(Exception e)
	{
%>
		<p>Error inesperado</p>
<%
	}
%>

</body>
</html>