package org.zyh.iclass.dao;

import org.zyh.iclass.model.Course;
import org.zyh.iclass.model.Pager;

public interface ICourseDao {

	public void addCourse(Course course);
	public void deleteCourse(int id);
	public void updateCourse(Course course);
	public Pager<Course> findCourse();
	public Course loadByTeacherId(int teacherId);
}
