

import org.json.JSONArray;
import org.json.JSONObject;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.ProtocolException;
import java.net.URL;
import java.util.ArrayList;
public class Main {

	public static void main(String[] args) throws IOException {
		// TODO Auto-generated method stub
		String api_key="1785dcca59a4fabe8fc2a49fde364b76";
		String api_secret="-IuvAoxhJdFVmOtQCks0nKpEhKrJJjaa";
		URL url = new URL("http://apicn.faceplusplus.com/v2/detection/detect?api_key="+api_key
				+"&api_secret="+api_secret+"&url=http%3A%2F%2Ffaceplusplus.com%2Fstatic%2Fimg%2Fdemo%2F1.jpg&attribute=glass,pose,gender,age,race,smiling");
//        URL url = new URL("http://172.31.34.13:8080/WatchServe/ActivityServlet?userid="+userid
//        +"&date="+date);
        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
        conn.setRequestMethod("GET");
        if (conn.getResponseCode() == 200) {
            InputStream in = conn.getInputStream();
            String str = read(in);
            System.out.println(str);
        }
        
	}
	
	public static String read(InputStream in) throws IOException {
        byte[] data;
        ByteArrayOutputStream bout = new ByteArrayOutputStream();
        byte[]buf = new byte[1024];
        int len = 0;
        while((len = in.read(buf))!=-1){
            bout.write(buf, 0, len);
        }
        data = bout.toByteArray();
        return new String(data,"UTF-8");

    }
//	String str = read(in);
//    JSONArray array = new JSONArray(str);
//    int length = array.length();
//    for(int i=0;i<length;i++){
//        JSONObject object = array.getJSONObject(i);
//        ActivityMeasure activityMeasure= new ActivityMeasure(object.getString("timezone"),
//                object.getString("distance"),
//                object.getString("elevation"),
//                object.getString("moderate"),
//                object.getString("intense"),
//                object.getString("calories"),
//                object.getString("steps"),
//                object.getString("date"),
//                object.getString("soft")
//        );
//        list.add(activityMeasure);
}
