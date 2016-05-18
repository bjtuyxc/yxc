package com.yxc.dao;

import java.util.List;

import org.json.JSONException;
import org.json.JSONObject;

import com.facepp.error.FaceppParseException;
import com.facepp.http.HttpRequests;
import com.facepp.http.PostParameters;
import com.yxc.model.Face;
import com.yxc.model.MaskPoint;

public class EyeDao {
	
	public  static MaskPoint paraseEye(String faceid) throws JSONException, FaceppParseException{
		HttpRequests httpRequests = new HttpRequests(FaceDao.api_key,FaceDao.api_secret);
		PostParameters postParameters=new PostParameters();
		postParameters.setFaceId(faceid);
		postParameters.setType("25p");
		JSONObject result=httpRequests.detectionLandmark(postParameters);
		System.out.println(result);
		
		
		return changeJsontoMack(result);
	}
	public static MaskPoint changeJsontoMack(JSONObject result) throws JSONException{
		MaskPoint mp=new MaskPoint();
		
		mp.setLeft_eye_bottom_x(result.getJSONArray("result").getJSONObject(0).getJSONObject("landmark").getJSONObject("left_eye_bottom").getDouble("x"));
		mp.setLeft_eye_bottom_y(result.getJSONArray("result").getJSONObject(0).getJSONObject("landmark").getJSONObject("left_eye_bottom").getDouble("y"));
		mp.setLeft_eye_top_x(result.getJSONArray("result").getJSONObject(0).getJSONObject("landmark").getJSONObject("left_eye_top").getDouble("x"));
		mp.setLeft_eye_top_y(result.getJSONArray("result").getJSONObject(0).getJSONObject("landmark").getJSONObject("left_eye_top").getDouble("y"));
		mp.setRight_eye_bottom_x(result.getJSONArray("result").getJSONObject(0).getJSONObject("landmark").getJSONObject("right_eye_bottom").getDouble("x"));
		mp.setRight_eye_bottom_y(result.getJSONArray("result").getJSONObject(0).getJSONObject("landmark").getJSONObject("right_eye_bottom").getDouble("y"));
		mp.setRight_eye_top_x(result.getJSONArray("result").getJSONObject(0).getJSONObject("landmark").getJSONObject("right_eye_top").getDouble("x"));
		mp.setRight_eye_top_y(result.getJSONArray("result").getJSONObject(0).getJSONObject("landmark").getJSONObject("right_eye_top").getDouble("y"));
//		System.out.print(mp.getLeft_eye_bottom_y()+" "+mp.getLeft_eye_top_y());
//		System.out.print("¼ÆËã½á¹û"+(mp.getLeft_eye_top_y()-mp.getLeft_eye_bottom_y()));
		if(mp.getLeft_eye_bottom_y()-mp.getLeft_eye_top_y()<1.7){
			mp.setEye_open("Close");
		}else{
			mp.setEye_open("Open");
		}
		return mp;
		
	}
}
