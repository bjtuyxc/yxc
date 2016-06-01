package com.yxc.model;

public class Pose {
	private double pitch_angle;//抬头角度
	private double roll_angle;//平面旋转角度
	private double yaw_angle;//摇头角度
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
