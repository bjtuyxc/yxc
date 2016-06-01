package com.yxc.dao;

import org.json.JSONException;
import org.json.JSONObject;

import com.facepp.error.FaceppParseException;
import com.facepp.http.HttpRequests;
import com.facepp.http.PostParameters;
import com.yxc.model.Position_5Point;
import com.yxc.model.Race;

public class RaceDao {
public  static Race paraseRace(byte[] img) throws JSONException, FaceppParseException{
		
		
		HttpRequests httpRequests = new HttpRequests(FaceDao.api_key,FaceDao.api_secret);
		PostParameters postParameters=new PostParameters();
//		postParameters.setImg(new File("C:/Users/yxc/Desktop/test22.png"));
		
		postParameters.setImg(img);
		postParameters.setAttribute("race");
		Race race =new Race();
		
	    JSONObject result=httpRequests.detectionDetect(postParameters);
	    race.setRace(result.getJSONArray("face").getJSONObject(0).getJSONObject("attribute").getJSONObject("race").getString("value"));
	    race.setConfidence(result.getJSONArray("face").getJSONObject(0).getJSONObject("attribute").getJSONObject("race").getDouble("confidence"));
	 
	    
	    return race;
	    
		
	} 
}
