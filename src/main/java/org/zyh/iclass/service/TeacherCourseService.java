package org.zyh.iclass.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.zyh.iclass.dao.ITeacherCourseDao;
import org.zyh.iclass.model.TeacherCourse;

@Service("teacherService")
public class TeacherCourseService implements ITeacherCourseService {
	@Inject
	private ITeacherCourseDao teacherCourseDao;

	@Override
	public void addTeacherCourse(TeacherCourse teacherCourse) {
		teacherCourseDao.addTeacherCourse(teacherCourse);
	}

	@Override
	public void deleteTeacherCourse(int id) {
		teacherCourseDao.deleteTeacherCourse(id);
	}

	@Override
	public void updateTeacherCourse(TeacherCourse teacherCourse) {
		teacherCourseDao.updateTeacherCourse(teacherCourse);
	}

	@Override
	public List<TeacherCourse> listByTeacherId(int teacherId) {
		return teacherCourseDao.listByTeacherId(teacherId);
	}

	@Override
	public List<TeacherCourse> listByDay(int day) {
		return teacherCourseDao.listByDay(day);
	}

}
