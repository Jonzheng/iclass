package org.zyh.iclass.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.zyh.iclass.dao.IClassCourseDao;
import org.zyh.iclass.model.ClassCourse;

@Service("classCourseService")
public class ClassCourseService implements IClassCourseService {
	
	@Inject
	private IClassCourseDao classCourseDao;

	@Override
	public void addClassCourse(ClassCourse classCourse) {
		classCourseDao.addClassCourse(classCourse);
	}

	@Override
	public void deleteClassCourse(int id) {
		classCourseDao.deleteClassCourse(id);
	}

	@Override
	public void updateClassCourse(ClassCourse classCourse) {
		classCourseDao.updateClassCourse(classCourse);
	}

	@Override
	public List<ClassCourse> listByClassId(int classId) {
		return classCourseDao.listByClassId(classId);
	}

	@Override
	public List<ClassCourse> listByDay(int day) {
		return classCourseDao.listByDay(day);
	}

}
