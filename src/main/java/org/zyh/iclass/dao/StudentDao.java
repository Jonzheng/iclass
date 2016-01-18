package org.zyh.iclass.dao;

import java.util.List;

import org.springframework.stereotype.Repository;
import org.zyh.iclass.model.Pager;
import org.zyh.iclass.model.Student;

@Repository("studentDao")
public class StudentDao extends BaseDao<Student>implements IStudentDao {

	@Override
	public void addStudent(Student student) {
		this.add(student);
	}

	@Override
	public void deleteStudent(int id) {
		this.delete(id);
	}

	@Override
	public void updateStudent(Student student) {
		this.update(student);
	}

	@Override
	public Student loadStudent(int id) {
		return this.load(id);
	}

	@Override
	public Student loadByUserId(int id) {
		String hql = "from Student where user_id =?";
		return (Student)this.queryObject(hql, id);
	}

	@Override
	public Pager<Student> findStudent() {
		String hql = "from Student";
		return this.find(hql);
	}

	@Override
	public Pager<Student> findByString(String string) {
		String str = "%"+string+"%";
		String hql = "from Student where studentId like ? or name like ? or mobile like ? or doorplate like ? or qqNum like ? or shortMobile like ?";
		return this.find(hql, new Object[]{str,str,str,str,str,str});
	}

	@Override
	public List<Student> listStudent() {
		String hql = "from Student";
		return this.list(hql);
	}
}
