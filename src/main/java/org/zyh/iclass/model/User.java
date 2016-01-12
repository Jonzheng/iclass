package org.zyh.iclass.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="t_user")
public class User {
	private int id;
	/**
	 * 用户的邮件
	 */
	private String email;
	/**
	 * 用户名可以用于登录
	 */
	private String username;
	/**
	 * 用户登录密码
	 */
	private String password;
	/**
	 * 用户的显示名称
	 */
	private String nickname;
	/**
	 * 用户的类型：admin,student,teacher
	 */
	private String type;
	/**
	 * 用户的状态：0表示停用，1表示启用
	 */
	private int status;
	/**
	 * 头像名称
	 */
	private String avatar;
	private String tempAvatar;
	/**
	 * 用做权限控制
	 */
	private int power;
	
	/**
	 * 创建时间
	 */
	private Date createDate;
	/**
	 * 激活码过期时间
	 */
	private Long activateTime;
	/**
	 * 激活码
	 */
	private String token;
	
	/**
	 * 用户的联系方式
	 */
	private String mobile;
	private String qqNum;
	private String weChat;
	private String usedEmail;
	
	private int level;
	private int studentId;

	@Id
	@GeneratedValue
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	@Column(name="create_date")
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	@Column(name="activate_time")
	public Long getActivateTime() {
		return activateTime;
	}
	public void setActivateTime(Long activateTime) {
		this.activateTime = activateTime;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getAvatar() {
		return avatar;
	}
	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}
	public String getToken() {
		return token;
	}
	public void setToken(String token) {
		this.token = token;
	}
	public int getLevel() {
		return level;
	}
	public void setLevel(int level) {
		this.level = level;
	}
	public int getPower() {
		return power;
	}
	public void setPower(int power) {
		this.power = power;
	}
	@Column(name="student_id")
	public int getStudentId() {
		return studentId;
	}
	public void setStudentId(int studentId) {
		this.studentId = studentId;
	}
	@Column(name="qq_num")
	public String getQqNum() {
		return qqNum;
	}
	public void setQqNum(String qqNum) {
		this.qqNum = qqNum;
	}
	@Column(name="we_chat")
	public String getWeChat() {
		return weChat;
	}
	public void setWeChat(String weChat) {
		this.weChat = weChat;
	}
	@Column(name="temp_avatar")
	public String getTempAvatar() {
		return tempAvatar;
	}
	public void setTempAvatar(String tempAvatar) {
		this.tempAvatar = tempAvatar;
	}
	@Column(name="used_email")
	public String getUsedEmail() {
		return usedEmail;
	}
	public void setUsedEmail(String usedEmail) {
		this.usedEmail = usedEmail;
	}
	public User() {
		super();
	}
}
