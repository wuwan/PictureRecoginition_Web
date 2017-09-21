package servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import database.ImageIdentification;

public class AddRecordServlet extends HttpServlet
{
	private static final long serialVersionUID = 1L;

	public AddRecordServlet()
	{
		super();
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		String account = request.getParameter("account");
		String imageId = request.getParameter("imageId");
		String classifyId = request.getParameter("classifyId");
		try
		{
			Connection connection = ImageIdentification.getConnection();
			String sql = "insert into record values(?,?,?)";
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, imageId);
			preparedStatement.setString(2, account);
			preparedStatement.setString(3, classifyId);
			boolean flag = preparedStatement.execute();
			if(flag)
			{
				sql = "select count(*) from record where classifyId = ? And imageId = ?";
				preparedStatement = connection.prepareStatement(sql);
				preparedStatement.setString(1, classifyId);
				preparedStatement.setString(2, imageId);
				ResultSet rs = preparedStatement.executeQuery();
				rs.next();
				int count = rs.getInt(1);
				if(count == 5)
				{
					sql = "update image set classifyId = ? where imageId = ?";
					preparedStatement = connection.prepareStatement(sql);
					preparedStatement.setString(1, classifyId);
					preparedStatement.setString(2, imageId);
					preparedStatement.execute();
				}
				rs.close();
			}
			response.getWriter().print(String.valueOf(flag));
			preparedStatement.close();
			connection.close();
		}
		catch (SQLException e)
		{
			e.printStackTrace();
		}
	}
}