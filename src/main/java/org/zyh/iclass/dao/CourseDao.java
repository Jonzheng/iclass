package org.zyh.iclass.dao;

import org.springframework.stereotype.Repository;
import org.zyh.iclass.model.Course;
import org.zyh.iclass.model.Pager;

@Repository
public class CourseDao extends BaseDao<Course> implements ICourseDao {

	@Override
	public void addCourse(Course course) {
		this.add(course);
	}

	@Override
	public void deleteCourse(int id) {
		this.delete(id);

	}

	@Override
	public void updateCourse(Course course) {
		this.update(course);

	}

	@Override
	public Pager<Course> findCourse() {
		String hql = "from Course";
		return this.find(hql);
	}

	@Override
	public Course loadByTeacherId(int teacherId) {
		String hql = "from Course where teacherId = ?";
		return (Course)this.queryObject(hql, teacherId);
	}

}
