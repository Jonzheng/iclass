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
	public Pager<Student> findStudent(int curPage, int pageSize) {
		this.setPP(curPage, pageSize);
		return studentDao.findStudent();
	}

	@Override
	public Pager<Student> findStudent(int curPage, int pageSize, String sort, String order) {
		this.setFour(curPage, pageSize, sort, order);
		return studentDao.findStudent();
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
}
