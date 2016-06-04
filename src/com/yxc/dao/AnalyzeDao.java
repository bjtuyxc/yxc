package com.yxc.dao;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.wltea.analyzer.core.IKSegmenter;
import org.wltea.analyzer.core.Lexeme;


public class AnalyzeDao {

	public static void  main(String[] args) throws Exception {
//	System.out.println(AnalyzeDao.fenci("陪伴是最长情的告白 这句话就应该由E神唱出来。"));
	System.out.println(AnalyzeDao.readDoc(AnalyzeDao.fenci("不得不说，真的非常精彩的一部剧，好好看的故事！平淡但却精彩，好久没看到这样的剧了，精彩精彩，里面每个人都好喜欢，看的非常顺眼，期待我家艺兴出场。")));
	//CommentDao.setPoint();
//	 CheckInfoDao.getSong("陈奕迅");
		//CommentDao.aver();
	 
	}
	static String stopWordTable = "./DATA/stop/stopWord.txt";
	static Set<String> posWordSet;
	static Set<String> negWordSet;
	static Set<String> negVodSet;
	static Set<String> vod1Set;
	static Set<String> vod2Set;
	static Set<String> vod3Set;
	static Set<String> vod4Set;
	static Set<String> vod5Set;
	static Set<String> vod6Set;
	static StringBuffer sensTxt;
	
public static String fenci(String str) throws IOException{
	BufferedReader StopWordFileBr = new BufferedReader(new InputStreamReader(new FileInputStream(new File(stopWordTable))));
	
	
	Set<String> stopWordSet = new HashSet<String>();
	
	String stopWord = null;
	for(; (stopWord = StopWordFileBr.readLine()) != null;){
		stopWordSet.add(stopWord);
	}
	

	

	StringBuffer FT = new StringBuffer();
	
		
		StringReader sr=new StringReader(str);  
        IKSegmenter ik=new IKSegmenter(sr, true);  
        Lexeme lex=null;  
    
        while((lex=ik.next())!=null){
	        	if(stopWordSet.contains(lex.getLexemeText())) {
	        		continue;
	        	}
//	            System.out.print(lex.getLexemeText()+"\t"); 
	        	FT.append(lex.getLexemeText()+" ");
        	} 
        FT.append("\r\n");
		
		StopWordFileBr.close();
	
	return FT.toString();
	
}
	public static double readDoc(String sigleDoc) throws IOException{
		
		
		String[] stringList;
		dic();
		StringBuffer readParse, ParseSen;

		
		
	
	
			readParse = new StringBuffer();
			ParseSen = new StringBuffer();
		    readParse.append("<");
		    ParseSen.append("<");
		    
			stringList = sigleDoc.split(" ");
			for (int i = 0; i < stringList.length; i++) {
				
				System.out.print(stringList[i]+" ");
				
				if(posWordSet.contains(stringList[i])||negWordSet.contains(stringList[i])||negVodSet.contains(stringList[i])
						||vod1Set.contains(stringList[i])||vod2Set.contains(stringList[i])||vod3Set.contains(stringList[i])
						||vod4Set.contains(stringList[i])||vod5Set.contains(stringList[i])||vod6Set.contains(stringList[i])) {
					
					if (readParse.lastIndexOf(">")>readParse.lastIndexOf("<")) {
						readParse.append("<");
					}
					if (ParseSen.lastIndexOf(">")>ParseSen.lastIndexOf("<")) {
						ParseSen.append("<");
					}
					
					if (negVodSet.contains(stringList[i])){ System.out.print("NA");readParse.append("NA"); ParseSen.append("-0.8,"); }	
					if (vod1Set.contains(stringList[i])) {	System.out.print("DA");readParse.append("DA"); ParseSen.append("0.9,"); }
					if (vod2Set.contains(stringList[i])) {  System.out.print("DA");readParse.append("DA"); ParseSen.append("0.9,");	}	
					if (vod3Set.contains(stringList[i])) {	System.out.print("DA");readParse.append("DA"); ParseSen.append("0.7,");}
					if (vod4Set.contains(stringList[i])) {	System.out.print("DA");readParse.append("DA"); ParseSen.append("0.5,");}
					if (vod5Set.contains(stringList[i])) {	System.out.print("DA");readParse.append("DA"); ParseSen.append("0.3,");}
					if (vod6Set.contains(stringList[i])) {	System.out.print("DA");readParse.append("DA"); ParseSen.append("-0.5,");}
					if (posWordSet.contains(stringList[i])) { 
						System.out.print("PW");
						readParse.append("PW>"); ParseSen.append("0.8>");
						}
					if (negWordSet.contains(stringList[i])) {
						System.out.print("PW");
						readParse.append("PW>"); ParseSen.append("-0.8>");
						}
		
				}
			}
			System.out.print("\r\n");
			//System.out.println(readParse.toString()+" "+ParseSen.toString());
			
			//判断标签

			return computeSen(readParse.toString(),ParseSen.toString(),"'");
			
		}

		
		
	

	
	//构建词典
	public static void dic() throws IOException{
	
		
		BufferedReader posWord = new BufferedReader(new FileReader(new File("./DATA/构建词典/正面词/正面词（0.8）.txt")));
		BufferedReader negWord = new BufferedReader(new FileReader(new File("./DATA/构建词典/负面词/负面词（-0.8）.txt")));
		BufferedReader negVod = new BufferedReader(new FileReader(new File("./DATA/构建词典/否定副词/否定（-0.8）.txt")));
		BufferedReader vod1 = new BufferedReader(new FileReader(new File("./DATA/构建词典/程度词语/最（0.9）.txt")));
		BufferedReader vod2 = new BufferedReader(new FileReader(new File("./DATA/构建词典/程度词语/超（0.9）.txt")));
		BufferedReader vod3 = new BufferedReader(new FileReader(new File("./DATA/构建词典/程度词语/很（0.7）.txt")));
		BufferedReader vod4 = new BufferedReader(new FileReader(new File("./DATA/构建词典/程度词语/较（0.5）.txt")));
		BufferedReader vod5 = new BufferedReader(new FileReader(new File("./DATA/构建词典/程度词语/稍（0.3）.txt")));	
		BufferedReader vod6 = new BufferedReader(new FileReader(new File("./DATA/构建词典/程度词语/欠（-0.5）.txt")));

		
		

		posWordSet = new HashSet<String>();
		negWordSet = new HashSet<String>();
		negVodSet = new HashSet<String>();
		vod1Set = new HashSet<String>();
		vod2Set = new HashSet<String>();
		vod3Set = new HashSet<String>();
		vod4Set = new HashSet<String>();
		vod5Set = new HashSet<String>();
		vod6Set = new HashSet<String>();
		
		
		
		String Sb = null;
		while((Sb = posWord.readLine()) != null){
			
			posWordSet.add(Sb);
		}
		while((Sb = negWord.readLine()) != null){
			negWordSet.add(Sb);
		}
		while((Sb = negVod.readLine()) != null){
			negVodSet.add(Sb);
		}
		while((Sb = vod1.readLine()) != null){
			vod1Set.add(Sb);
		}
		while((Sb = vod2.readLine()) != null){
			vod2Set.add(Sb);
		}
		while((Sb = vod3.readLine()) != null){
			vod3Set.add(Sb);
		}
		while((Sb = vod4.readLine()) != null){
			vod4Set.add(Sb);
		}
		while((Sb = vod5.readLine()) != null){
			vod5Set.add(Sb);
		}
		while((Sb = vod6.readLine()) != null){
			vod6Set.add(Sb);
		}
		posWord.close();negWord.close();negVod.close();vod1.close();
		vod2.close();vod3.close();vod4.close();vod5.close();vod6.close();
	}
	
	

	
	
	
	
	//计算极性短语的强度
	public static double computeSen(String doc,String value,String senPath){
		float tolSens = 0;//各个极性短语的强度
		float docSens = 0;//句子平均的强度,
		String regx1 = "<(.+?)>";//NA是否定副词，PW是积极或消极，DA是程度副词
		Pattern p = Pattern.compile(regx1);
        Matcher m1 = p.matcher(doc);//匹配
        Matcher m2 = p.matcher(value);
        
        ArrayList<String> doclist   = new ArrayList<>();
        ArrayList<String> valuelist = new ArrayList<>();
        while (m2.find()) {
        	valuelist.add(m2.group(1));
			
		}
		while (m1.find()) {
			doclist.add(m1.group(1));
		}
		
		Iterator<String> dociter = doclist.iterator();
		Iterator<String> valueiter = valuelist.iterator();
		while(dociter.hasNext()){
			String juzi = null;
			System.out.print( juzi = dociter.next());
			String[] cpvalue =  valueiter.next().split(",");
			for (int i = 0; i < cpvalue.length; i++) {
				System.out.print(" "+cpvalue[i]+" ");
			}
			
			
			if (juzi.equals("PW")) { tolSens = Float.parseFloat(cpvalue[0]); }
			if (juzi.equals("NAPW")) {
				tolSens = Float.parseFloat(cpvalue[0])*Float.parseFloat(cpvalue[1]);
			}
			if (juzi.equals("NANAPW")) {
				tolSens = Float.parseFloat(cpvalue[2]);
			}
			if (juzi.equals("DAPW")) {
				if (Float.parseFloat(cpvalue[1])>0) {
					tolSens = Float.parseFloat(cpvalue[1])+(1-Float.parseFloat(cpvalue[1]))*Float.parseFloat(cpvalue[0]);
				}else {
					tolSens = Float.parseFloat(cpvalue[1])+(-1-Float.parseFloat(cpvalue[1]))*Float.parseFloat(cpvalue[0]);
				}
			}
			if (juzi.equals("DADAPW")) {
				
					tolSens = Float.parseFloat(cpvalue[2])+
							(1-Float.parseFloat(cpvalue[2]))*Float.parseFloat(cpvalue[0])+
							(1-Float.parseFloat(cpvalue[2])-(1-Float.parseFloat(cpvalue[2]))*Float.parseFloat(cpvalue[0]))*Float.parseFloat(cpvalue[1]);
			}
			if (juzi.equals("NADAPW")) {
				tolSens = Float.parseFloat(cpvalue[2])+(1-Float.parseFloat(cpvalue[0]))*(Float.parseFloat(cpvalue[1])-2);
			}
			
			if (juzi.equals("DANAPW")) {
				tolSens = Float.parseFloat(cpvalue[2])*Float.parseFloat(cpvalue[1])+
						(-1-Float.parseFloat(cpvalue[2]))*Float.parseFloat(cpvalue[1])*Float.parseFloat(cpvalue[1]);
			}
			
			System.out.print("("+tolSens+")");
			//把总的短语极性相加，得到一个句子总的强度
			docSens = tolSens+docSens;
		}
		
		
		sensTxt = new StringBuffer();
		if (docSens>0) {
			sensTxt.append("pos"+"\r\n");
			System.out.println("总情感极值是："+docSens+" 判断为：pos ");
			
		}else if (docSens<0) {
			sensTxt.append("neg"+"\r\n");
			System.out.println("总情感极值是："+docSens+" 判断为：neg ");
		}else{
			sensTxt.append("neutral"+"\r\n");
			System.out.println("总情感极值是："+docSens+" 判断为：neutral ");
		}
		
		
		
		return tolSens;
	}

}
