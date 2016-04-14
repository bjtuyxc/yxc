package com.yxc.dao;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;

import org.json.JSONException;
import org.json.JSONObject;

import com.faceplusplus.api.FaceDetecter;
import com.facepp.error.FaceppParseException;
import com.facepp.http.HttpRequests;
import com.facepp.http.PostParameters;
import com.yxc.model.Face;

public class FaceDao {
	
	public static String api_key="1785dcca59a4fabe8fc2a49fde364b76";
	public static String api_secret="-IuvAoxhJdFVmOtQCks0nKpEhKrJJjaa";
public  static List<Face> paraseFace(byte[] img) throws JSONException, FaceppParseException{
	
	
	HttpRequests httpRequests = new HttpRequests(FaceDao.api_key,FaceDao.api_secret);
	PostParameters postParameters=new PostParameters();
//	postParameters.setImg(new File("images/1’’∆¨.jpg"));
	
	postParameters.setImg(img);
	postParameters.setAttribute("glass,pose,gender,age,race,smiling");
	List<Face> faces=new ArrayList<Face>();
    JSONObject result=httpRequests.detectionDetect(postParameters);
    int length=result.getJSONArray("face").length();
    for(int i=0;i<length;i++){
    	Face face=new Face();
    	face.setAge(result.getJSONArray("face").getJSONObject(i).getJSONObject("attribute").getJSONObject("age").getInt("value"));
    	face.setAge_range( result.getJSONArray("face").getJSONObject(i).getJSONObject("attribute").getJSONObject("age").getInt("range"));
        face.setGender( result.getJSONArray("face").getJSONObject(i).getJSONObject("attribute").getJSONObject("gender").getString("value"));
        face.setGlass(result.getJSONArray("face").getJSONObject(i).getJSONObject("attribute").getJSONObject("glass").getString("value"));
        face.setGlass_rate(result.getJSONArray("face").getJSONObject(i).getJSONObject("attribute").getJSONObject("glass").getDouble("confidence"));
        face.setRace(result.getJSONArray("face").getJSONObject(i).getJSONObject("attribute").getJSONObject("race").getString("value"));
        face.setSmiling(result.getJSONArray("face").getJSONObject(i).getJSONObject("attribute").getJSONObject("smiling").getDouble("value"));
        face.setPitch_angle(result.getJSONArray("face").getJSONObject(i).getJSONObject("attribute").getJSONObject("pose").getJSONObject("pitch_angle").getDouble("value"));
        face.setYaw_angle(result.getJSONArray("face").getJSONObject(i).getJSONObject("attribute").getJSONObject("pose").getJSONObject("yaw_angle").getDouble("value"));
        face.setRoll_angle(result.getJSONArray("face").getJSONObject(i).getJSONObject("attribute").getJSONObject("pose").getJSONObject("roll_angle").getDouble("value"));
        faces.add(face);
    }
    return faces;
    
	
} 
}
