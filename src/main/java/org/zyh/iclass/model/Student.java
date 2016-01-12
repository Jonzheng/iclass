package org.zyh.iclass.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="t_student")
public class Student {
	private int id;
	/**
	 * 外键用户
	 */
	private int userId;
	/**
	 * 班级id
	 */
	private int classId;
	private String name;
	private String sex;
	/**
	 * 学校、系、专业
	 */
	private String college;
	private String department;
	private String major;
	/**
	 * 简介
	 */
	private String sign;
	/**
	 * 出生日期
	 */
	private String birthday;
	/**
	 * 积分
	 */
	private int point;
	/**
	 * 学号
	 */
	private String studentId;
	/**
	 * 手机
	 */
	private String mobile;
	/**
	 * 短号
	 */
	private String shortMobile;
	/**
	 * QQ号
	 */
	private String qqNum;
	/**
	 * 宿舍门牌
	 */
	private String doorplate;
	
	@Id
	@GeneratedValue
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	@Column(name="user_id")
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	@Column(name="class_id")
	public int getClassId() {
		return classId;
	}
	public void setClassId(int classId) {
		this.classId = classId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getCollege() {
		return college;
	}
	public void setCollege(String college) {
		this.college = college;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public String getMajor() {
		return major;
	}
	public void setMajor(String major) {
		this.major = major;
	}
	public String getSign() {
		return sign;
	}
	public void setSign(String sign) {
		this.sign = sign;
	}
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	@Column(name="student_id")
	public String getStudentId() {
		return studentId;
	}
	public void setStudentId(String studentId) {
		this.studentId = studentId;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	@Column(name="short_mobile")
	public String getShortMobile() {
		return shortMobile;
	}
	public void setShortMobile(String shortMobile) {
		this.shortMobile = shortMobile;
	}
	@Column(name="qq_num")
	public String getQqNum() {
		return qqNum;
	}
	public void setQqNum(String qqNum) {
		this.qqNum = qqNum;
	}
	public String getDoorplate() {
		return doorplate;
	}
	public void setDoorplate(String doorplate) {
		this.doorplate = doorplate;
	}
	
}
