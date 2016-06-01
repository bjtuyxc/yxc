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
import com.yxc.dao.PoseDao;
import com.yxc.dao.PositionDao;
import com.yxc.model.Pose;
import com.yxc.model.Position_5Point;

/**
 * Servlet implementation class PositionServlet
 */
@WebServlet("/PositionServlet")
public class PositionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PositionServlet() {
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
			Position_5Point position = null;
			try {
				position=PositionDao.parasePosition(b);
			} catch (JSONException | FaceppParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
				JSONObject jsonObject = new JSONObject();
				try {
					jsonObject.put("center_x", position.getCenter_x());
					jsonObject.put("center_y", position.getCenter_y());
					jsonObject.put("eye_left_x", position.getEye_left_x());
					jsonObject.put("eye_left_y", position.getEye_left_y());
					jsonObject.put("eye_right_x", position.getEye_right_x());
					jsonObject.put("eye_right_y", position.getEye_right_y());
					jsonObject.put("mouth_left_x", position.getMouth_left_x());
					jsonObject.put("mouth_left_y", position.getMouth_left_y());
					jsonObject.put("mouth_right_x", position.getMouth_right_x());
					jsonObject.put("mouth_right_y", position.getMouth_right_y());
					jsonObject.put("nose_x", position.getNose_x());
					jsonObject.put("nose_y", position.getNose_y());
				} catch (JSONException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
		    response.setContentType("application/json");
		    response.getWriter().write(jsonObject.toString());
	}

}
