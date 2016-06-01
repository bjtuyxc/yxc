package com.yxc.dao;

import org.json.JSONException;
import org.json.JSONObject;

import com.facepp.error.FaceppParseException;
import com.facepp.http.HttpRequests;
import com.facepp.http.PostParameters;
import com.yxc.model.Glass;
import com.yxc.model.Pose;

public class PoseDao {
public  static Pose parasePose(byte[] img) throws JSONException, FaceppParseException{
		
		
		HttpRequests httpRequests = new HttpRequests(FaceDao.api_key,FaceDao.api_secret);
		PostParameters postParameters=new PostParameters();
//		postParameters.setImg(new File("C:/Users/yxc/Desktop/test22.png"));
		
		postParameters.setImg(img);
		postParameters.setAttribute("pose");
		Pose pose=new Pose();
		
		
	    JSONObject result=httpRequests.detectionDetect(postParameters);
	    pose.setPitch_angle(result.getJSONArray("face").getJSONObject(0).getJSONObject("attribute").getJSONObject("pose").getJSONObject("pitch_angle").getDouble("value"));
        pose.setYaw_angle(result.getJSONArray("face").getJSONObject(0).getJSONObject("attribute").getJSONObject("pose").getJSONObject("yaw_angle").getDouble("value"));
        pose.setRoll_angle(result.getJSONArray("face").getJSONObject(0).getJSONObject("attribute").getJSONObject("pose").getJSONObject("roll_angle").getDouble("value"));
	        
	 
	    
	    return pose;
	    
		
	} 
}
