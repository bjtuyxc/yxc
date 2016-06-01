package com.yxc.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import com.facepp.error.FaceppParseException;
import com.yxc.dao.AgeDao;
import com.yxc.dao.EyeDao;
import com.yxc.dao.FaceDao;
import com.yxc.model.Age;
import com.yxc.model.Face;
import com.yxc.model.MaskPoint;

import sun.misc.BASE64Decoder;

/**
 * Servlet implementation class AgeServlet
 */
@WebServlet("/AgeServlet")
public class AgeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AgeServlet() {
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
			Age age = null;
			try {
				age=AgeDao.paraseAge(b);
			} catch (JSONException | FaceppParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
				JSONObject jsonObject = new JSONObject();
				try {
					jsonObject.put("age",age.getAge());
					jsonObject.put("age_range",age.getAge_range());
				} catch (JSONException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
		    response.setContentType("application/json");
		    response.getWriter().write(jsonObject.toString());
	}

}
