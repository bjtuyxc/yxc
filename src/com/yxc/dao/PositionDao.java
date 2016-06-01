package com.yxc.dao;

import org.json.JSONException;
import org.json.JSONObject;

import com.facepp.error.FaceppParseException;
import com.facepp.http.HttpRequests;
import com.facepp.http.PostParameters;
import com.yxc.model.Gender;
import com.yxc.model.Position_5Point;

public class PositionDao {
public  static Position_5Point parasePosition(byte[] img) throws JSONException, FaceppParseException{
		
		
		HttpRequests httpRequests = new HttpRequests(FaceDao.api_key,FaceDao.api_secret);
		PostParameters postParameters=new PostParameters();
//		postParameters.setImg(new File("C:/Users/yxc/Desktop/test22.png"));
		
		postParameters.setImg(img);
		
		Position_5Point position=new Position_5Point();
	    JSONObject result=httpRequests.detectionDetect(postParameters);
	    position.setCenter_x(result.getJSONArray("face").getJSONObject(0).getJSONObject("position").getJSONObject("center").getDouble("x"));
	    position.setCenter_y(result.getJSONArray("face").getJSONObject(0).getJSONObject("position").getJSONObject("center").getDouble("y"));
	    position.setEye_left_x(result.getJSONArray("face").getJSONObject(0).getJSONObject("position").getJSONObject("eye_left").getDouble("x"));
	    position.setEye_left_y(result.getJSONArray("face").getJSONObject(0).getJSONObject("position").getJSONObject("eye_left").getDouble("y"));
	    position.setEye_right_x(result.getJSONArray("face").getJSONObject(0).getJSONObject("position").getJSONObject("eye_right").getDouble("x"));
	    position.setEye_right_y(result.getJSONArray("face").getJSONObject(0).getJSONObject("position").getJSONObject("eye_right").getDouble("y"));
	    position.setMouth_left_x(result.getJSONArray("face").getJSONObject(0).getJSONObject("position").getJSONObject("mouth_left").getDouble("x"));
	    position.setMouth_left_y(result.getJSONArray("face").getJSONObject(0).getJSONObject("position").getJSONObject("mouth_left").getDouble("y"));
	    position.setMouth_right_x(result.getJSONArray("face").getJSONObject(0).getJSONObject("position").getJSONObject("mouth_right").getDouble("x"));
	    position.setMouth_right_y(result.getJSONArray("face").getJSONObject(0).getJSONObject("position").getJSONObject("mouth_right").getDouble("y"));
	    position.setNose_x(result.getJSONArray("face").getJSONObject(0).getJSONObject("position").getJSONObject("nose").getDouble("x"));
	    position.setNose_y(result.getJSONArray("face").getJSONObject(0).getJSONObject("position").getJSONObject("nose").getDouble("y"));
	        
	 
	    
	    return position;
	    
		
	} 
}
