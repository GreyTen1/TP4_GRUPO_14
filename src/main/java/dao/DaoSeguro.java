package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import entidad.Seguro;

public class DaoSeguro {
	private String host = "jdbc:mysql://localhost:3306/";
	private String user = "root";
	private String pass = "root";
	private String dbName = "segurosgroup";

	public DaoSeguro()
	{
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
				e.printStackTrace();
		}
	}

	public int agregarSeguro(Seguro seguro) {
		String query = "INSERT INTO seguros (descripcion, idTipo, costoContratacion, costoAsegurado) VALUES ('" + seguro.getDescripcion() + "', " + seguro.getIdTipo() + ", " + seguro.getCostoContratacion() + ", " + seguro.getCostoAsegurado() + ")";Connection cn = null;
		int filas = 0;
		try 
		{
			cn = DriverManager.getConnection(host+dbName, user, pass);
			Statement st = cn.createStatement();
			filas = st.executeUpdate(query);
		}
		catch(Exception e ){
			e.printStackTrace();
		}
		return filas;
	}
	
	public ArrayList<Seguro> obtenerTodasLasCategorias(){
		ArrayList<Seguro> lSeguros = new ArrayList<Seguro>();
		Connection cn = null;
		try 
		{
			cn = DriverManager.getConnection(host+dbName, user, pass);
			Statement st = cn.createStatement();
			String query = "SELECT * FROM seguros";
			ResultSet rs = st.executeQuery(query);
			while(rs.next())
			{
				Seguro c = new Seguro();
				c.setIdSeguro(rs.getInt("idseguro"));
				c.setDescripcion(rs.getString("descripcion"));
				c.setIdTipo(rs.getInt("idtipo"));
				c.setCostoContratacion(rs.getDouble("costoContratacion"));
				c.setCostoAsegurado(rs.getDouble("costoAsegurado"));
				lSeguros.add(c);
			}
			
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return lSeguros;
	}

}

