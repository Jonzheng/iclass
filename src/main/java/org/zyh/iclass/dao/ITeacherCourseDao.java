package org.zyh.iclass.dao;

import java.util.List;

import org.zyh.iclass.model.TeacherCourse;

public interface ITeacherCourseDao {
	public void addTeacherCourse(TeacherCourse teacherCourse);
	public void deleteTeacherCourse(int id);
	public void updateTeacherCourse(TeacherCourse teacherCourse);
	public List<TeacherCourse> listByTeacherId(int teacherId);
	public List<TeacherCourse> listByDay(int day);
}
