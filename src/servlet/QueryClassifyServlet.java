package servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;

import database.ImageIdentification;

public class QueryClassifyServlet extends HttpServlet
{
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		try
		{
			Connection connection = ImageIdentification.getConnection();
			PreparedStatement preparedStatement;
			String sql = "select *  from classify";
			preparedStatement = connection.prepareStatement(sql);
			ResultSet rs = preparedStatement.executeQuery();
			ResultSetMetaData metaData = rs.getMetaData();
			int columnCount = metaData.getColumnCount();

			JSONArray array = new JSONArray();

			while (rs.next())
			{
				JSONObject jsonObj = new JSONObject();
				for (int i = 1; i <= columnCount; i++)
				{
					String columnName = metaData.getColumnLabel(i);
					String value = rs.getString(columnName);
					jsonObj.put(columnName, value);
				}
				array.add(jsonObj);

			}
			response.setContentType("text/JavaScript;charset=utf-8");
			response.getWriter().print(array.toJSONString());
			rs.close();
			preparedStatement.close();
			connection.close();

		} catch (SQLException e)
		{
			e.printStackTrace();
		}

	}
}