package database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 * ��ݿ�EShop�Ĺ�����
 * 
 * @author shenshenxin
 * 
 */
public class ImageIdentification
{
	public static String db_url = "jdbc:sqlserver://127.0.0.1:1433; DatabaseName=imageIdentification";
	public static String db_user = "sa";
	public static String db_password = "123";

	public static Connection getConnection()
	{
		Connection connection = null;
		try
		{
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			//Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection(db_url, db_user, db_password);
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return connection;
	}

	public static void close(Statement state, Connection conn)
	{
		if (state != null)
		{
			try
			{
				state.close();
			}
			catch (SQLException e)
			{
				e.printStackTrace();
			}
		}
		if (conn != null)
		{
			try
			{
				conn.close();
			}
			catch (SQLException e)
			{
				e.printStackTrace();
			}
		}
	}

	public static void close(ResultSet rs, Statement state, Connection conn)
	{
		if (rs != null)
		{
			try
			{
				rs.close();
			}
			catch (SQLException e)
			{
				e.printStackTrace();
			}
		}
		if (state != null)
		{
			try
			{
				state.close();
			}
			catch (SQLException e)
			{
				e.printStackTrace();
			}
		}
		if (conn != null)
		{
			try
			{
				conn.close();
			}
			catch (SQLException e)
			{
				e.printStackTrace();
			}
		}
	}
}