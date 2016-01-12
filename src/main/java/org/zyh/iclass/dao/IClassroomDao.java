package org.zyh.iclass.dao;

import org.zyh.iclass.model.Classroom;
import org.zyh.iclass.model.Pager;

public interface IClassroomDao extends IBaseDao<Classroom> {

	public Pager<Classroom> findClassroom();
	/**
	 * 通过年级查询
	 */
	public Pager<Classroom> findByGrade(String grade);
	/**
	 * 通过班级名称或者班主任或者班长查询
	 */
	public Pager<Classroom> findByString(String string);
	/**
	 * 学校、系别、专业---过滤筛选
	 */
	public Pager<Classroom> findByCollege(String college);
	public Pager<Classroom> findByCD(String college,String department);
	public Pager<Classroom> findByCDM(String college,String department,String major);
	
}
