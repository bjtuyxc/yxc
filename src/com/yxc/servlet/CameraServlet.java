package com.yxc.servlet;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
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
import com.yxc.dao.FaceDao;
import com.yxc.model.Face;

import sun.misc.BASE64Decoder;

/**
 * Servlet implementation class CameraServlet
 */
@WebServlet("/CameraServlet")
public class CameraServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CameraServlet() {
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
	
//	String imgFilePath = "C:/Users/yxc/Desktop/test22.png";// 新生成的图片
//	OutputStream out = new FileOutputStream(imgFilePath);
//	out.write(b);
//	out.flush();
//	out.close();
//	
	List<Face> faces = null;
	try {
		faces=FaceDao.paraseFace(b);
	} catch (JSONException | FaceppParseException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	JSONArray jsonArray = new JSONArray();
	for(Face face :faces){
		JSONObject jsonObject = new JSONObject();
		try {
		jsonObject.put("age", face.getAge());
		jsonObject.put("age_range", face.getAge_range());
		jsonObject.put("gender", face.getGender());
		jsonObject.put("smile", face.getSmiling());
		
		jsonObject.put("glass", face.getGlass());
		jsonObject.put("glass_rate", face.getGlass_rate());
		jsonObject.put("race", face.getRace());
		jsonObject.put("pitch_angle", face.getPitch_angle());
		jsonObject.put("yaw_angle", face.getYaw_angle());
		
			jsonObject.put("roll_angle", face.getRoll_angle());
		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		jsonArray.put(jsonObject);
	}
    response.setContentType("application/json");
    response.getWriter().write(jsonArray.toString());
    
//	for(int i=0;i<faces.size();i++){
//		System.out.println("年龄："+faces.get(i).getAge());
//		System.out.println("性别："+faces.get(i).getGender());
//		System.out.println("眼镜："+faces.get(i).getGlass());
//		System.out.println("微笑程度："+faces.get(i).getSmiling());
//		System.out.println("种族："+faces.get(i).getRace());
//		System.out.println("抬头角度："+faces.get(i).getPitch_angle());
//		System.out.println("平面旋转角度："+faces.get(i).getYaw_angle());
//		System.out.println("摇头角度："+faces.get(i).getRoll_angle());
//	}
	}

}
