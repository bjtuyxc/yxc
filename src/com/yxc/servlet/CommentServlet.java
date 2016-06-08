package com.yxc.servlet;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import com.yxc.dao.CommentDao;
import com.yxc.model.Comment;
import com.yxc.model.Face;

/**
 * Servlet implementation class CommentServlet
 */
@WebServlet("/CommentServlet")
public class CommentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CommentServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//System.out.println("coming");
		String email = request.getParameter("email");
		String date = request.getParameter("date");
		String content = request.getParameter("content");
		
		Comment com = new Comment();
		com.setContent(content);
		com.setEmail(email);
		com.setTime(date);
		com.setvedioID("1");
		
		//System.out.println(date+":"+content);
		CommentDao commentDao = new CommentDao();
		commentDao.insert(com);
		
		List<Comment> Comment = null;
		JSONArray jsonArray = new JSONArray();
		ResultSet rs = commentDao.serach(com);
		
		try {
			while(rs.next()){
				JSONObject jsonObject = new JSONObject();
				jsonObject.put("email", rs.getString(1));
				jsonObject.put("vedioID", rs.getString(2));
				jsonObject.put("date", rs.getString(3));
				jsonObject.put("content", rs.getString(4));
				//System.out.println( "������"+rs.getString(1)+":"+ rs.getString(2)+":"+ rs.getString(3)+":"+ rs.getString(4));
				jsonArray.put(jsonObject);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		response.setCharacterEncoding("utf-8");
		response.setContentType("application/json");
		response.getWriter().write(jsonArray.toString());
		System.out.println(jsonArray.toString());
	}
}
