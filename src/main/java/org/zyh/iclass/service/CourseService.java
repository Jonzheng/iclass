package org.zyh.iclass.service;

import java.util.Date;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.zyh.iclass.dao.ICourseDao;
import org.zyh.iclass.model.Course;
import org.zyh.iclass.model.Pager;
import org.zyh.iclass.model.User;

@Service
public class CourseService implements ICourseService {
	
	@Inject
	private ICourseDao courseDao;
	@Inject
	private IUserService userService;

	@Override
	public void addCourse(Course course) {
		// TODO Auto-generated method stub
		courseDao.addCourse(course);
	}

	@Override
	public void deleteCourse(int id) {
		// TODO Auto-generated method stub
		courseDao.deleteCourse(id);
	}

	@Override
	public void updateCourse(Course course) {
		// TODO Auto-generated method stub
		courseDao.updateCourse(course);
	}

	@Override
	public Pager<Course> findCourse() {
		// TODO Auto-generated method stub
		return courseDao.findCourse();
	}

	@Override
	public Course loadByTeacherId(int teacherId) {
		// TODO Auto-generated method stub
		return courseDao.loadByTeacherId(teacherId);
	}

	@Override
	public void newCourse(int userId, String courseName) {
		try {
			User u = userService.loadUser(userId);
			Course course = new Course();
			course.setDate(new Date());
			course.setMember(0);
			course.setTeacherId(u.getId());
			course.setTeacher(u.getUsername());
			course.setName(courseName);
			courseDao.addCourse(course);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
