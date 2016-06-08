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
	
	//ע��
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
	 * ����0֤���û�����
	 * ����1˵���û�������
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
	 * ����-1˵���û���������
	 * ����0˵���������
	 * ����1˵����½�ɹ� 
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
