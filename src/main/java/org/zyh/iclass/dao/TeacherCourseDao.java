package org.zyh.iclass.dao;

import java.util.List;

import org.springframework.stereotype.Repository;
import org.zyh.iclass.model.TeacherCourse;

@Repository
public class TeacherCourseDao extends BaseDao<TeacherCourse> implements ITeacherCourseDao {

	@Override
	public void addTeacherCourse(TeacherCourse teacherCourse) {
		this.add(teacherCourse);
	}

	@Override
	public void deleteTeacherCourse(int id) {
		this.delete(id);
	}

	@Override
	public void updateTeacherCourse(TeacherCourse teacherCourse) {
		this.update(teacherCourse);
	}

	@Override
	public List<TeacherCourse> listByTeacherId(int teacherId) {
		String hql = "from TeacherCourse where teacherId = ?";
		return this.list(hql, teacherId);
	}

	@Override
	public List<TeacherCourse> listByDay(int day) {
		String hql = "from TeacherCourse where day = ?";
		return this.list(hql, day);
	}

}
