package org.zyh.iclass.dao;

import java.util.List;

import org.springframework.stereotype.Repository;
import org.zyh.iclass.model.ClassCourse;

@Repository
public class ClassCourseDao extends BaseDao<ClassCourse>implements IClassCourseDao {

	@Override
	public void addClassCourse(ClassCourse classCourse) {
		this.add(classCourse);
	}

	@Override
	public void deleteClassCourse(int id) {
		this.delete(id);
	}

	@Override
	public void updateClassCourse(ClassCourse classCourse) {
		this.update(classCourse);
	}

	@Override
	public List<ClassCourse> listByClassId(int classId) {
		String hql = "from ClassCourse where classId = ?";
		return this.list(hql, classId);
	}

}
