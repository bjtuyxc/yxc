package com.yxc.dao;

import java.util.ArrayList;
import java.util.List;

import org.json.JSONException;
import org.json.JSONObject;

import com.facepp.error.FaceppParseException;
import com.facepp.http.HttpRequests;
import com.facepp.http.PostParameters;
import com.yxc.model.Age;
import com.yxc.model.Face;

public class AgeDao {
	public  static Age paraseAge(byte[] img) throws JSONException, FaceppParseException{
		
		
		HttpRequests httpRequests = new HttpRequests(FaceDao.api_key,FaceDao.api_secret);
		PostParameters postParameters=new PostParameters();
//		postParameters.setImg(new File("C:/Users/yxc/Desktop/test22.png"));
		
		postParameters.setImg(img);
		postParameters.setAttribute("age");
		Age age=new Age();
	    JSONObject result=httpRequests.detectionDetect(postParameters);
	    	age.setAge(result.getJSONArray("face").getJSONObject(0).getJSONObject("attribute").getJSONObject("age").getInt("value"));
	    	age.setAge_range( result.getJSONArray("face").getJSONObject(0).getJSONObject("attribute").getJSONObject("age").getInt("range"));
	        
	 
	    
	    return age;
	    
		
	} 
}
