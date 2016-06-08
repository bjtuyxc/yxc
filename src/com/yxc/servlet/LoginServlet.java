package com.yxc.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yxc.dao.DBDao;
import com.yxc.model.User;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
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
		User user = new User();
		DBDao dbDao = new DBDao();
		
		String email = request.getParameter("email");
		String password = request.getParameter("password");
				
		user.setEmail(email);
		user.setPwd(password);
		
		int result = dbDao.serachForLogin(user);
		if(result == -1)  System.out.println("用户名不存在");
		else if(result == 0)  System.out.println("密码错误");
		else 
		{
			//System.out.println("登陆成功");
			//request.setAttribute("username", user.getEmail());
			request.getSession().setAttribute("username", user.getEmail());
			request.getRequestDispatcher("single.jsp").forward(request, response);
			System.out.println("email: "+email);
		}
		
		if(email.equals("")){
			request.getSession().setAttribute("username", null);
			request.getRequestDispatcher("single.jsp").forward(request, response);
		}
	}

}
