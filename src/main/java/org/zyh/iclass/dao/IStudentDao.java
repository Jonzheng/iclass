package org.zyh.iclass.dao;

import java.util.List;

import org.zyh.iclass.model.Pager;
import org.zyh.iclass.model.Student;

public interface IStudentDao {

	public void addStudent(Student student);
	public void deleteStudent(int id);
	public void updateStudent(Student student);
	public Student loadStudent(int id);
	public Student loadByUserId(int id);
	public List<Student> listStudent();
	public Pager<Student> findStudentByClassId(int classId);
	public Pager<Student> findStudentByCourseId(int courseId);
	public Pager<Student> findByString(String string);
	public Pager<Student> findByStringAndClassId(int classId,String string);
	public Pager<Student> findByStringAndCourseId(int courseId,String string);
}
