package com.yxc.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.yxc.model.DBHelper;
import com.yxc.model.User;

public class DBDao {
	private DBHelper dbHelper = null;
	private Connection conn = null;
	private Statement stmt = null;
	
	public DBDao(){
		dbHelper = new DBHelper();
		conn = dbHelper.getConnection();
	}
	
	//注册
	public int insert(User u){
		
		String sql = "insert into user values('"+u.getEmail()+"','"+u.getTel()+"','"+u.getPwd()+"')";
		try {
			stmt = conn.createStatement();
			if(stmt.execute(sql))  return 1;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0;
	}
	
	/*
	 * 返回0证明用户存在
	 * 返回1说明用户不存在
	 */
	public int serachForRegister(User u){  
		
		ResultSet rs = null;
		String sql = "select * from user";
		
		try {
			stmt = conn.prepareStatement(sql);
			rs = stmt.executeQuery(sql);
			
			while(rs.next()){
				if( u.getEmail().equals(rs.getString(1)) )  return 0;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return 1;
	}
	
	
	/*
	 * 返回-1说明用户名不存在
	 * 返回0说明密码错误
	 * 返回1说明登陆成功 
	 */
	public int serachForLogin(User u){
		
		ResultSet rs = null;
		if(serachForRegister(u) == 1){
			return -1;
		}
		
		String sql = "select pwd from user where email = '"+u.getEmail()+"'";
		
		try {
			stmt = conn.prepareStatement(sql);
			rs = stmt.executeQuery(sql);
			rs.next();
			if( u.getPwd().equals(rs.getString(1)) )  return 1;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return 0;
		
	}
}
