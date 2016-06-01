package com.yxc.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONException;
import org.json.JSONObject;

import sun.misc.BASE64Decoder;

import com.facepp.error.FaceppParseException;
import com.yxc.dao.AgeDao;
import com.yxc.dao.GenderDao;
import com.yxc.model.Age;
import com.yxc.model.Gender;

/**
 * Servlet implementation class GenderServlet
 */
@WebServlet("/GenderServlet")
public class GenderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GenderServlet() {
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
		 BASE64Decoder decode = new BASE64Decoder();
			String img=request.getParameter("img");
			String img1=img.substring(22);		
			byte [] b = decode.decodeBuffer(img1);
			Gender gender = null;
			try {
				gender=GenderDao.paraseGender(b);
			} catch (JSONException | FaceppParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
				JSONObject jsonObject = new JSONObject();
				try {
					jsonObject.put("gender",gender.getGender());
					jsonObject.put("confidence",gender.getConfidence());
				} catch (JSONException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
		    response.setContentType("application/json");
		    response.getWriter().write(jsonObject.toString());
	}

}
