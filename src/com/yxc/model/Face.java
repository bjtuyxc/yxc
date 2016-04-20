package com.yxc.model;

public class Face {
private String gender;
private int age;
private int age_range;//年龄误差
private String race;
private double smiling;//微笑值
private String glass;//是否戴眼镜
private double glass_rate;//眼镜的置信度
private double pitch_angle;//抬头角度
private double roll_angle;//平面旋转角度
private double yaw_angle;//摇头角度

//人脸坐标

private double center_x;
private double eye_left_x;
private double eye_right_x;
private double mouth_left_x;
private double mouth_right_x;
private double nose_x;

private double center_y;
private double eye_left_y;
private double eye_right_y;
private double mouth_left_y;
private double mouth_right_y;
private double nose_y;




public double getCenter_x() {
	return center_x;
}
public void setCenter_x(double center_x) {
	this.center_x = center_x;
}
public double getEye_left_x() {
	return eye_left_x;
}
public void setEye_left_x(double eye_left_x) {
	this.eye_left_x = eye_left_x;
}
public double getEye_right_x() {
	return eye_right_x;
}
public void setEye_right_x(double eye_right_x) {
	this.eye_right_x = eye_right_x;
}
public double getMouth_left_x() {
	return mouth_left_x;
}
public void setMouth_left_x(double mouth_left_x) {
	this.mouth_left_x = mouth_left_x;
}
public double getMouth_right_x() {
	return mouth_right_x;
}
public void setMouth_right_x(double mouth_right_x) {
	this.mouth_right_x = mouth_right_x;
}
public double getNose_x() {
	return nose_x;
}
public void setNose_x(double nose_x) {
	this.nose_x = nose_x;
}
public double getCenter_y() {
	return center_y;
}
public void setCenter_y(double center_y) {
	this.center_y = center_y;
}
public double getEye_left_y() {
	return eye_left_y;
}
public void setEye_left_y(double eye_left_y) {
	this.eye_left_y = eye_left_y;
}
public double getEye_right_y() {
	return eye_right_y;
}
public void setEye_right_y(double eye_right_y) {
	this.eye_right_y = eye_right_y;
}
public double getMouth_left_y() {
	return mouth_left_y;
}
public void setMouth_left_y(double mouth_left_y) {
	this.mouth_left_y = mouth_left_y;
}
public double getMouth_right_y() {
	return mouth_right_y;
}
public void setMouth_right_y(double mouth_right_y) {
	this.mouth_right_y = mouth_right_y;
}
public double getNose_y() {
	return nose_y;
}
public void setNose_y(double nose_y) {
	this.nose_y = nose_y;
}
public String getGender() {
	return gender;
}
public void setGender(String gender) {
	this.gender = gender;
}
public int getAge() {
	return age;
}
public void setAge(int age) {
	this.age = age;
}
public int getAge_range() {
	return age_range;
}
public void setAge_range(int age_range) {
	this.age_range = age_range;
}
public String getRace() {
	return race;
}
public void setRace(String race) {
	this.race = race;
}
public double getSmiling() {
	return smiling;
}
public void setSmiling(double smiling) {
	this.smiling = smiling;
}
public String getGlass() {
	return glass;
}
public void setGlass(String glass) {
	this.glass = glass;
}
public double getGlass_rate() {
	return glass_rate;
}
public void setGlass_rate(double d) {
	this.glass_rate = d;
}
public double getPitch_angle() {
	return pitch_angle;
}
public void setPitch_angle(double pitch_angle) {
	this.pitch_angle = pitch_angle;
}
public double getRoll_angle() {
	return roll_angle;
}
public void setRoll_angle(double roll_angle) {
	this.roll_angle = roll_angle;
}
public double getYaw_angle() {
	return yaw_angle;
}
public void setYaw_angle(double yaw_angle) {
	this.yaw_angle = yaw_angle;
}


}
