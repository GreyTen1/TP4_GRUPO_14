<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<tr> 
<td> </td>
<td> </td>
<td> </td>
<td> </td>
</tr>
<tr> 
<td> </td>
<td> </td>
<td> </td>
<td> </td>
</tr>
</table>
</body>
</html>