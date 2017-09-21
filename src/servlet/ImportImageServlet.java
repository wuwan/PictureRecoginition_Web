package servlet;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import database.ImageIdentification;

public class ImportImageServlet extends HttpServlet
{
	private static final long serialVersionUID = 1L;
	int id = 0;

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
			DiskFileItemFactory factory = new DiskFileItemFactory();
			factory.setSizeThreshold(1024 * 1024);
			ServletFileUpload upload = new ServletFileUpload(factory);
			upload.setHeaderEncoding("UTF-8");
			if (!ServletFileUpload.isMultipartContent(request))
			{
				return;
			}
			List<FileItem> list = upload.parseRequest(request);
			String imageName = getImageName();
			String relativePath = this.getServletContext().getRealPath("/WEB-INF/image");
			String outFile = relativePath + "/" + imageName;
			System.out.println(outFile);
			File file = new File(outFile);
			if (!file.exists())
			{
				file.createNewFile();
			}
			FileOutputStream fileOutputStream = new FileOutputStream(file);
			InputStream inputStream = list.get(0).getInputStream();
			int size = 0;
			byte[] Buffer = new byte[1024];
			while (size != -1)
			{
				size = inputStream.read(Buffer);
				if (size != -1)
				{
					fileOutputStream.write(Buffer, 0, size);
				}
			}
			fileOutputStream.close();
			
			Connection connection = ImageIdentification.getConnection();
			String url = "http://120.24.157.7:8080/ImageIdentification/WEB-INF/image/" + imageName;
			String sql = "insert into image values(?,?,?)";
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, String.valueOf(id + 1));
			preparedStatement.setString(2, url);
			preparedStatement.setString(3, "");
			boolean flag = preparedStatement.execute();
			if(flag)
			{
				response.getWriter().print("true");
			}
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		response.sendRedirect("../index.jsp");
	}
	
	public String getImageName()
	{
		try
		{
			Connection connection = ImageIdentification.getConnection();
			String sql = "select max(id) from image";
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			ResultSet rs = preparedStatement.executeQuery();
			rs.next();
			id = rs.getInt(1);
			rs.close();
			connection.close();
		}
		catch (SQLException e)
		{
			e.printStackTrace();
		}
		return String.valueOf(id + 1) + ".jpg";
	}
}