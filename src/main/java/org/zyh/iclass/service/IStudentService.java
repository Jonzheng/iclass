package org.zyh.iclass.service;

import java.util.List;

import org.zyh.iclass.model.Pager;
import org.zyh.iclass.model.Student;

public interface IStudentService {

	public void addStudent(Student student);
	public void deleteStudent(int id);
	public void updateStudent(Student student);
	public void joinClass(int id, int classId);
	public void toClass(int id, int classId);
	public Student loadStudent(int id);
	public Student loadByUserId(int id);
	public List<Student> listStudent();
	public List<Student> listByClassId(int classId);
	public List<Student> listByCourseId(int courseId);
	public Pager<Student> findStudentByClassId(int classId,int curPage,int pageSize);
	public Pager<Student> findStudentByClassId(int classId,int curPage,int pageSize,String sort,String order);
	public Pager<Student> findStudentByCourseId(int courseId,int curPage,int pageSize);
	public Pager<Student> findStudentByCourseId(int courseId,int curPage,int pageSize,String sort,String order);
	public Pager<Student> findByString(String string,int curPage,int pageSize);
	public Pager<Student> findByStringAndClassId(int classId,String string,int curPage,int pageSize);
	public Pager<Student> findByStringAndCourseId(int courseId,String string,int curPage,int pageSize);
	public Pager<Student> findToClass();
}
