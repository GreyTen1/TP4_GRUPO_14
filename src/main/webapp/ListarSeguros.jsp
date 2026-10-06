<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="dao.DaoSeguro,entidad.Seguro" %>

<% 
	DaoSeguro dao = new DaoSeguro();
ArrayList<Seguro> lista;
if(request.getParameter("btnFiltrar") != null)
{
int idTipo = Integer.parseInt(request.getParameter("tiposeguro"));
lista = dao.obtenerSegurosPorTipo(idTipo);
}
else
{
lista = dao.obtenerTodasLasCategorias();
}
%>

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

<H1>"Tipos de Seguros en la base de datos"</H1>


<form method="get">
 
<select name="tiposeguro">
<option value="1">Seguro De Casas</option>
<option value="2">Seguro De Vidas</option>
<option value="3">Seguro De Motos</option>
</select>
 
<input type="submit" name="btnFiltrar" value="Filtrar">
 
</form>
<br><br>

<table border="1" cellspacing="2">
<tr> 
<td> ID Seguro </td>
<td> Descripcion Seguro </td>
<td> Costo Contratacion </td>
<td> Costo Maximo Asegurado </td>
</tr>
<%
if(lista.isEmpty() == false)
{
		for(Seguro seg : lista)
		{
			%>
			<tr>
			<td> <%= seg.getIdSeguro() %> </td>
			<td> <%= seg.getDescripcion() %> </td>
			<td> <%= seg.getCostoContratacion() %> </td>
			<td> <%= seg.getCostoAsegurado() %> </td>
			</tr>
		<%
		}
	} 
	%>
</table>
</body>
</html>