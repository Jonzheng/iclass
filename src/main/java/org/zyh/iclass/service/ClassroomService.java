package org.zyh.iclass.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.zyh.iclass.dao.IClassroomDao;
import org.zyh.iclass.model.Classroom;
import org.zyh.iclass.model.Pager;
import org.zyh.iclass.model.SystemContext;

@Service("classroomService")
public class ClassroomService implements IClassroomService {

	private IClassroomDao classroomDao;
	
	public IClassroomDao getClassroomDao() {
		return classroomDao;
	}
	@Inject
	public void setClassroomDao(IClassroomDao classroomDao) {
		this.classroomDao = classroomDao;
	}
	
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
	public void addClassroom(Classroom c) {
		c.setNumber(1);
		c.setCreator("creator");
		classroomDao.add(c);
	}
	@Override
	public Pager<Classroom> findClassroom(int curPage,int pageSize) {
		this.setPP(curPage, pageSize);
		return classroomDao.findClassroom();
	}
	@Override
	public Pager<Classroom> findClassroom(int curPage, int pageSize, String sort, String order) {
		this.setFour(curPage, pageSize, sort, order);
		return classroomDao.findClassroom();
	}
	@Override
	public Pager<Classroom> findByGrade(int grade) {
		return null;
	}
	@Override
	public Pager<Classroom> findByString(String string,int curPage,int pageSize) {
		this.setPP(curPage, pageSize);
		return classroomDao.findByString(string);
	}
	//筛选过滤
	@Override
	public Pager<Classroom> findByCollege(String college,int curPage,int pageSize) {
		this.setPP(curPage, pageSize);
		return classroomDao.findByCollege(college);
	}
	@Override
	public Pager<Classroom> findByCD(String college, String department,int curPage,int pageSize) {
		this.setPP(curPage, pageSize);
		return classroomDao.findByCD(college, department);
	}
	@Override
	public Pager<Classroom> findByCDM(String college, String department, String major,int curPage,int pageSize) {
		this.setPP(curPage, pageSize);
		return classroomDao.findByCDM(college, department, major);
	}

}
