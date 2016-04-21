package org.zyh.iclass.service;

import java.util.List;

import org.zyh.iclass.model.ClassCourse;

public interface IClassCourseService {
	public void addClassCourse(ClassCourse classCourse);
	public void deleteClassCourse(int id);
	public void updateClassCourse(ClassCourse classCourse);
	public List<ClassCourse> listByClassId(int classId);
	public List<ClassCourse> listByDay(int day);
}
