package com.yxc.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yxc.model.HFace;

/**
 * Servlet implementation class HbaseServlet
 */
@WebServlet("/HbaseServlet")
public class HbaseServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HbaseServlet() {
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
		String time=request.getParameter("time");
		String alltime=request.getParameter("alltime");
		String age=request.getParameter("age");
		//String age_range=request.getParameter("age_range");
		String gender=request.getParameter("gender");
		String smile=request.getParameter("smile");
		String glass=request.getParameter("glass");
		String race=request.getParameter("race");
		String video_name=request.getParameter("video_name");
		String video_type=request.getParameter("video_type");
		
		double watch_rate=Double.parseDouble(time)/Double.parseDouble(alltime);
		watch_rate = (double)Math.round(watch_rate*100)/100  ;//保留两位小数
		HFace face=new HFace();
		face.setAge(age);
		face.setGender(gender);
		face.setGlass(glass);
		face.setRace(race);
		face.setVideo_name(video_name);
		face.setVideo_type(video_type);
		face.setWatch_rate(watch_rate);
		face.setSmile(Double.parseDouble(smile));
		List<HFace> list=new ArrayList<HFace>();
		list.add(face);
		
		//调孔二接口
		
	}

}
