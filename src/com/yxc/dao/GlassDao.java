package com.yxc.dao;

import org.json.JSONException;
import org.json.JSONObject;

import com.facepp.error.FaceppParseException;
import com.facepp.http.HttpRequests;
import com.facepp.http.PostParameters;
import com.yxc.model.Gender;
import com.yxc.model.Glass;

public class GlassDao {
public  static Glass paraseGlass(byte[] img) throws JSONException, FaceppParseException{
		
		
		HttpRequests httpRequests = new HttpRequests(FaceDao.api_key,FaceDao.api_secret);
		PostParameters postParameters=new PostParameters();
//		postParameters.setImg(new File("C:/Users/yxc/Desktop/test22.png"));
		
		postParameters.setImg(img);
		postParameters.setAttribute("glass");
		Glass glass=new Glass();
		
	    JSONObject result=httpRequests.detectionDetect(postParameters);
	    	glass.setGlass(result.getJSONArray("face").getJSONObject(0).getJSONObject("attribute").getJSONObject("glass").getString("value"));
	    	glass.setGlass_rate(result.getJSONArray("face").getJSONObject(0).getJSONObject("attribute").getJSONObject("glass").getDouble("confidence"));
	        
	 
	    
	    return glass;
	    
		
	} 
}
