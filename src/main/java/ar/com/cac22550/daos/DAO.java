package ar.com.cac22550.daos;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public interface DAO<T> {

	public int insert(T modelo) throws SQLException;

	public void update(T modelo) throws SQLException;

	public void delete(int id) throws SQLException;

	public T getById(int id) throws SQLException;
	
	public ResultSet getByEmail(String email) throws SQLException;
	
	public ResultSet exist(T modelo) throws SQLException;

	public List<T> getAll() throws SQLException;
}