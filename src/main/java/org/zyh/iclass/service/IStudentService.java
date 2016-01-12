package org.zyh.iclass.service;

import org.zyh.iclass.model.Pager;
import org.zyh.iclass.model.Student;

public interface IStudentService {

	public void addStudent(Student student);
	public void deleteStudent(int id);
	public void updateStudent(Student student);
	public Student loadStudent(int id);
	public Student loadByUserId(int id);
	public Pager<Student> findStudent(int curPage,int pageSize);
	public Pager<Student> findStudent(int curPage,int pageSize,String sort,String order);
	public Pager<Student> findByString(String string,int curPage,int pageSize);
}
