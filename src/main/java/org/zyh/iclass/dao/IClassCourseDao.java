package org.zyh.iclass.dao;

import java.util.List;

import org.zyh.iclass.model.ClassCourse;

public interface IClassCourseDao {
	public void addClassCourse(ClassCourse classCourse);
	public void deleteClassCourse(int id);
	public void updateClassCourse(ClassCourse classCourse);
	public List<ClassCourse> listByClassId(int classId);

}
