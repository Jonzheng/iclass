package org.zyh.iclass.service;

import org.zyh.iclass.model.Course;
import org.zyh.iclass.model.Pager;

public interface ICourseService {

	public void addCourse(Course course);
	public void newCourse(int userId,String courseName);
	public void deleteCourse(int id);
	public void updateCourse(Course course);
	public Pager<Course> findCourse();
	public Course loadByTeacherId(int teacherId);
}
