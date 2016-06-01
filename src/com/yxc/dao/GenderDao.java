package com.yxc.dao;

import org.json.JSONException;
import org.json.JSONObject;

import com.facepp.error.FaceppParseException;
import com.facepp.http.HttpRequests;
import com.facepp.http.PostParameters;
import com.yxc.model.Age;
import com.yxc.model.Gender;

public class GenderDao {
public  static Gender paraseGender(byte[] img) throws JSONException, FaceppParseException{
		
		
		HttpRequests httpRequests = new HttpRequests(FaceDao.api_key,FaceDao.api_secret);
		PostParameters postParameters=new PostParameters();
//		postParameters.setImg(new File("C:/Users/yxc/Desktop/test22.png"));
		
		postParameters.setImg(img);
		postParameters.setAttribute("gender");
		Gender gender=new Gender();
	    JSONObject result=httpRequests.detectionDetect(postParameters);
	    	gender.setGender(result.getJSONArray("face").getJSONObject(0).getJSONObject("attribute").getJSONObject("gender").getString("value"));
	    	gender.setConfidence(result.getJSONArray("face").getJSONObject(0).getJSONObject("attribute").getJSONObject("gender").getDouble("confidence"));
	        
	 
	    
	    return gender;
	    
		
	} 
}
