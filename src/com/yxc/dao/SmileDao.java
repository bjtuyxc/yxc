package com.yxc.dao;

import org.json.JSONException;
import org.json.JSONObject;

import com.facepp.error.FaceppParseException;
import com.facepp.http.HttpRequests;
import com.facepp.http.PostParameters;
import com.yxc.model.Race;

public class SmileDao {
public  static double paraseSmile(byte[] img) throws JSONException, FaceppParseException{
		
		
		HttpRequests httpRequests = new HttpRequests(FaceDao.api_key,FaceDao.api_secret);
		PostParameters postParameters=new PostParameters();
//		postParameters.setImg(new File("C:/Users/yxc/Desktop/test22.png"));
		
		postParameters.setImg(img);
		postParameters.setAttribute("smiling");
		double smile;
		
	    JSONObject result=httpRequests.detectionDetect(postParameters);
	    smile=result.getJSONArray("face").getJSONObject(0).getJSONObject("attribute").getJSONObject("smiling").getDouble("value");
	 
	    
	    return smile;
	    
		
	} 
}
