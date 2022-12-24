package ar.com.cac22550.daos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import ar.com.cac22550.factories.conectionFactory;
import ar.com.cac22550.models.user;
import jakarta.servlet.http.HttpSession;

public class userDAO implements DAO<user>{
	@Override
	public int insert(user usuario) throws SQLException {

		String query = "insert into usuarios";
		query += " (nombre, apellido, email, pass, domicilio, ciudad, pais, cp)";
		query += " values (?,?,?,?,?,?,?,?)";

		Connection conn = null;
		int rowCount = 0;
		
		try {
		
			conn = conectionFactory.getConexion();
			PreparedStatement ps = conn.prepareStatement(query);
	
			ps.setString(1, usuario.getNombreUsuario());
			ps.setString(2, usuario.getApellidoUsuario());
			ps.setString(3, usuario.getEmail());
			ps.setString(4, usuario.getPassword());
			ps.setString(5, usuario.getDomicilioUsuario());
			ps.setString(6, usuario.getCiudad());
			ps.setString(7, usuario.getPais());
			ps.setString(8, usuario.getCodigoPostal());
	
			rowCount = ps.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			try {
				conn.close();
			} catch(SQLException e) {
				e.printStackTrace();
			}
		}
		return rowCount;

	}

	@Override
	public void update(user modelo) throws SQLException {
		// TODO Auto-generated method stub

	}

	@Override
	public void delete(int id) throws SQLException {
		// TODO Auto-generated method stub

	}
	
	@Override
	public ResultSet exist(user usuario) throws SQLException{
		
		String query = "select * from usuarios";
		query += " where email = ? and pass = ?";

		Connection conn = null;
		ResultSet rs = null;
		
		try {
		
			conn = conectionFactory.getConexion();
			PreparedStatement ps = conn.prepareStatement(query);
	
			ps.setString(1, usuario.getEmail());
			ps.setString(2, usuario.getPassword());
	
			rs = ps.executeQuery();
			
		} catch(Exception e) {
			e.printStackTrace();
		} 
		/*finally {
			try {
				conn.close();
			} catch(SQLException e) {
				e.printStackTrace();
			}
		}*/
		
		return rs;
	}

	@Override
	public user getById(int id) throws SQLException {
		user usuario = null;
		/*
		var conn = ConectionFactory.getConexion();

		String query = "select id, username, password, activo, categoria, nickname";
		query += " from usuarios";
		query += " where id = ?";
		var ps = conn.prepareStatement(query);
		ps.setInt(1, id);
		var rs = ps.executeQuery();
		if (rs.next()) {
			usuario = new Usuario();
			usuario.setId(rs.getInt("id"));
			usuario.setUsername(rs.getString("username"));
			usuario.setPassword(rs.getString("password"));
			usuario.setActivo(rs.getInt("activo") == 1);
			usuario.setCategoria(rs.getString("categoria"));
			usuario.setNickname(rs.getString("nickname"));
		}
*/
		return usuario;
	
	}
	
	@Override
	public ResultSet getByEmail(String email) throws SQLException {
		
		String query = "select * from usuarios";
		query += " where email = ?";

		Connection conn = null;
		ResultSet rs = null;
		
		try {
		
			conn = conectionFactory.getConexion();
			PreparedStatement ps = conn.prepareStatement(query);
	
			ps.setString(1, email);
	
			rs = ps.executeQuery();
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return rs;
	
	}

	@Override
	public List<user> getAll() throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}
}