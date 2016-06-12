package com.yxc.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.yxc.model.Comment;
import com.yxc.model.DBHelper;
import com.yxc.model.User;

public class CommentDao {
	private DBHelper dbHelper = null;
	private Connection conn = null;
	private Statement stmt = null;
	
	public CommentDao(){
		dbHelper = new DBHelper();
		conn = dbHelper.getConnection();
	}
	
	//插入评论
	public int insert(Comment comm){
		
		System.out.println("插入的时间是："+comm.getTime());
		String sql = "insert into comment(email,vedioid,time,content) values('"+comm.getEmail()+"','"+comm.getvedioID()+"','"+comm.getTime()+"','"+comm.getContent()+"')";
		try {
			stmt = conn.createStatement();
			if(stmt.execute(sql))  return 1;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0;
	}
		
	//查找评论
	public ResultSet serach(Comment comm){
		
		ResultSet rs = null;
		
		String sql = "select * from comment";
		
		try {
			stmt = conn.prepareStatement(sql);
			rs = stmt.executeQuery(sql);
			
			return rs;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			
		return null;
	}
}
