<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="dao.DaoSeguro,entidad.Seguro" %>

<% 
	DaoSeguro dao = new DaoSeguro();
	ArrayList<Seguro> lista = dao.obtenerTodasLasCategorias();
	
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


<a> Busqueda por tipo de seguros:</a>
<select name="tiposeguro">
    <option value="segurodecasas">Seguro De Casas</option>
    <option value="segurodevidas">Seguro De Vidas</option>
    <option value="segurodemotos">Seguro De Motos</option>
</select> 
<input button="filtrar" value="Filtrar">
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