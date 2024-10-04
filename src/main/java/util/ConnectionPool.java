package util;

import java.sql.*;

public interface ConnectionPool {
	//lấy kết nối csdl
	public Connection getConnection(String objectName) throws SQLException;
	//trả kết nối
	public void releaseConnection(Connection con, String objectName) throws SQLException;
}
