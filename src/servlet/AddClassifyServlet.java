package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import database.ImageIdentification;

public class AddClassifyServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
    int id=59;

	public AddClassifyServlet() {
		super();
	}

	public void destroy() {
		super.destroy(); 
	}

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Connection connection = ImageIdentification.getConnection();
		int num=getImageName();
		
		String parentId = request.getParameter("parentId");
		String name=new String(request.getParameter("name").getBytes("ISO8859-1"),"utf-8");
		String secId=new String(request.getParameter("secId").getBytes("ISO8859-1"),"utf-8");
		System.out.print(secId);
		try {
		if(parentId.equals("0")){
			String s="select * from classify where name='"+secId+"'";
			PreparedStatement p;
			p = connection.prepareStatement(s);
			ResultSet rs = p.executeQuery();
			while (rs.next()){
			   parentId=rs.getString(1);
			}
		}	
			
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

		try
		{
			String sql = "insert into classify values(?,?,?)";
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, String.valueOf(num + 1));
			preparedStatement.setString(2, name);
			preparedStatement.setString(3, parentId);
			boolean flag = preparedStatement.execute();
			if(flag)
			{
				response.getWriter().print("true");
			}
			preparedStatement.close();
			connection.close();
			response.sendRedirect("../addClassify.jsp");
		}
		catch (SQLException e)
		{
			e.printStackTrace();
		}
	}

	public int getImageName()
	{
		try
		{
			Connection connection = ImageIdentification.getConnection();
			String sql = "select max(id) from classify";
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
		return id;
	}
	public void init() throws ServletException {
		// Put your code here
	}

}
