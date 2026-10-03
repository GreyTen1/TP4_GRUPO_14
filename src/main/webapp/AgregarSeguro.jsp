<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="dao.DaoSeguro" %>
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
			<td> <input type="text" name="txtIdSeguro"> </td>
		</tr>
		<tr> 
			<td> Descripcion: </td>
			<td> <input type="text" name="txtDescripcion"> </td>
		</tr>
		<tr> 
			<td> Tipo de Seguro: </td>
			<td> 
				<select name="tiposeguro" name="ddlTipoSeguro">
				    <option value="segurodecasas">Seguro De Casas</option>
				    <option value="segurodevidas">Seguro De Vidas</option>
				    <option value="segurodemotos">Seguro De Motos</option>
				</select> 
			</td>
		</tr>
		<tr> 
			<td> Id Seguro: </td>
			<td> <input type="text" name="txtIdSeguro"> </td>
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
			<td>  </td>
			<td> <input type="submit" value="Aceptar">  </td>
		</tr>
		<tr> 
			<td> <input type="submit" value="Aceptar">  </td>
			<td>  </td>
		</tr>
	</table>
</form>

</body>
</html>