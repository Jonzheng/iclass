package org.zyh.iclass.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="t_call_roll")
public class CallRoll {

	private int id;
	private int courseId;
	private int section;
	private int sectionT;
	private String studentId;
	private String name;
	private int point;
	private int present;
	private int presentR;
	private int absent;
	private int absentR;
	private int late;
	private int lateR;
	private int dayoff;
	private int dayoffR;
	
	@Id
	@GeneratedValue
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	@Column(name="course_id")
	public int getCourseId() {
		return courseId;
	}
	public void setCourseId(int courseId) {
		this.courseId = courseId;
	}
	public int getSection() {
		return section;
	}
	public void setSection(int section) {
		this.section = section;
	}
	@Column(name="section_t")
	public int getSectionT() {
		return sectionT;
	}
	public void setSectionT(int sectionT) {
		this.sectionT = sectionT;
	}
	@Column(name="student_id")
	public String getStudentId() {
		return studentId;
	}
	public void setStudentId(String studentId) {
		this.studentId = studentId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	public int getPresent() {
		return present;
	}
	public void setPresent(int present) {
		this.present = present;
	}
	@Column(name="present_r")
	public int getPresentR() {
		return presentR;
	}
	public void setPresentR(int presentR) {
		this.presentR = presentR;
	}
	public int getAbsent() {
		return absent;
	}
	public void setAbsent(int absent) {
		this.absent = absent;
	}
	@Column(name="absent_r")
	public int getAbsentR() {
		return absentR;
	}
	public void setAbsentR(int absentR) {
		this.absentR = absentR;
	}
	public int getLate() {
		return late;
	}
	public void setLate(int late) {
		this.late = late;
	}
	@Column(name="late_r")
	public int getLateR() {
		return lateR;
	}
	public void setLateR(int lateR) {
		this.lateR = lateR;
	}
	public int getDayoff() {
		return dayoff;
	}
	public void setDayoff(int dayoff) {
		this.dayoff = dayoff;
	}
	@Column(name="dayoff_r")
	public int getDayoffR() {
		return dayoffR;
	}
	public void setDayoffR(int dayoffR) {
		this.dayoffR = dayoffR;
	}
	
}
