package org.zyh.iclass.service;

import java.util.List;

import org.zyh.iclass.model.TeacherCourse;

public interface ITeacherCourseService {
	public void addTeacherCourse(TeacherCourse teacherCourse);
	public void deleteTeacherCourse(int id);
	public void updateTeacherCourse(TeacherCourse teacherCourse);
	public List<TeacherCourse> listByTeacherId(int teacherId);
	public List<TeacherCourse> listByDay(int day);
}
