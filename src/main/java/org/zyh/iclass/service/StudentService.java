package org.zyh.iclass.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.zyh.iclass.dao.IStudentDao;
import org.zyh.iclass.model.Pager;
import org.zyh.iclass.model.Student;
import org.zyh.iclass.model.SystemContext;

@Service("studentService")
public class StudentService implements IStudentService {
	@Inject
	private IStudentDao studentDao;

	private void setPP(int curPage, int pageSize) {
		SystemContext.setPageOffset(curPage*pageSize-pageSize);
		SystemContext.setPageSize(pageSize);
	}
	private void setFour(int curPage, int pageSize, String sort, String order) {
		this.setPP(curPage, pageSize);
		SystemContext.setSort(sort);
		SystemContext.setOrder(order);
	}
	
	@Override
	public void addStudent(Student student) {
		if((studentDao.loadByUserId(student.getId()))==null){
			studentDao.addStudent(student);
		}
	}

	@Override
	public void deleteStudent(int id) {
		studentDao.deleteStudent(id);
	}

	@Override
	public void updateStudent(Student student) {
		studentDao.updateStudent(student);
	}

	@Override
	public Student loadStudent(int id) {
		return studentDao.loadStudent(id);
	}

	@Override
	public Student loadByUserId(int id) {
		return studentDao.loadByUserId(id);
	}

	@Override
	public Pager<Student> findStudentByClassId(int classId, int curPage, int pageSize) {
		this.setPP(curPage, pageSize);
		return studentDao.findStudentByClassId(classId);
	}

	@Override
	public Pager<Student> findStudentByClassId(int classId, int curPage, int pageSize, String sort, String order) {
		this.setFour(curPage, pageSize, sort, order);
		return studentDao.findStudentByClassId(classId);
	}
	@Override
	public Pager<Student> findByString(String string, int curPage, int pageSize) {
		this.setPP(curPage, pageSize);
		return studentDao.findByString(string);
	}
	@Override
	public List<Student> listStudent() {
		return studentDao.listStudent();
	}
	@Override
	public Pager<Student> findStudentByCourseId(int courseId, int curPage, int pageSize) {
		this.setPP(curPage, pageSize);
		return studentDao.findStudentByClassId(courseId);
	}
	@Override
	public Pager<Student> findStudentByCourseId(int courseId, int curPage, int pageSize, String sort, String order) {
		this.setFour(curPage, pageSize, sort, order);
		return studentDao.findStudentByClassId(courseId);
	}
	@Override
	public Pager<Student> findByStringAndClassId(int classId, String string, int curPage, int pageSize) {
		this.setPP(curPage, pageSize);
		return studentDao.findByStringAndClassId(classId, string);
	}
	@Override
	public Pager<Student> findByStringAndCourseId(int courseId, String string, int curPage, int pageSize) {
		this.setPP(curPage, pageSize);
		return studentDao.findByStringAndCourseId(courseId, string);
	}
	@Override
	public List<Student> listByClassId(int classId) {
		return studentDao.listByClassId(classId);
	}
	@Override
	public List<Student> listByCourseId(int courseId) {
		return studentDao.listByCourseId(courseId);
	}
	@Override
	public void joinClass(int id, int classId) {
		try {
			Student stu = studentDao.loadStudent(id);
			stu.setClassId(classId);
			studentDao.updateStudent(stu);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
