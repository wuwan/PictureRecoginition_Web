package tool;

import java.awt.Image;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.imageio.ImageIO;

import database.ImageIdentification;

public class Launcher
{
	public static void main(String[] args)
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
			FileInputStream fileInputStream = new FileInputStream(place);
			int i = fileInputStream.available();
			System.out.print(i);
			/*byte image[] = new byte[i];
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
		} catch (IOException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}