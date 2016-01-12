package org.zyh.iclass.service;

import org.zyh.iclass.model.Classroom;
import org.zyh.iclass.model.Pager;

public interface IClassroomService {

	public void addClassroom(Classroom c);
	public Pager<Classroom> findClassroom(int curPage,int pageSize);
	public Pager<Classroom> findClassroom(int curPage,int pageSize,String sort,String order);
	/**
	 * 通过年级查询
	 */
	public Pager<Classroom> findByGrade(int grade);
	/**
	 * 通过班级名称或者班主任或者班长查询
	 */
	public Pager<Classroom> findByString(String string,int curPage,int pageSize);
	/**
	 * 学校、系别、专业---过滤筛选
	 */
	public Pager<Classroom> findByCollege(String college,int curPage,int pageSize);
	public Pager<Classroom> findByCD(String college,String department,int curPage,int pageSize);
	public Pager<Classroom> findByCDM(String college,String department,String major,int curPage,int pageSize);
}
