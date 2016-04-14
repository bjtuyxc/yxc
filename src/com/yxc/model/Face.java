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
