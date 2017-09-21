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

import com.alibaba.fastjson.JSONObject;

import database.ImageIdentification;

public class ImagePushServlet extends HttpServlet
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
			String sql = "select top 1 id,place from image";
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			ResultSet rs = preparedStatement.executeQuery();
			rs.next();
			String id = rs.getString(1);
			String place = rs.getString(2);
			JSONObject jsonObject = new JSONObject();
			jsonObject.put("id", id);
			jsonObject.put("place", place);
			response.setContentType("text/JavaScript;charset=utf-8");
			response.getWriter().print(jsonObject.toJSONString());
			rs.close();
			preparedStatement.close();
			connection.close();
			/*FileInputStream fileInputStream = new FileInputStream(place);
			int i = fileInputStream.available();
			byte image[] = new byte[i];
			fileInputStream.read(image);
			OutputStream toClient = response.getOutputStream();
			response.getWriter().print(id);
			toClient.write(image);
			toClient.flush();
			toClient.close();
			fileInputStream.close();*/
		}
		catch (SQLException e)
		{
			e.printStackTrace();
		}
	}
}