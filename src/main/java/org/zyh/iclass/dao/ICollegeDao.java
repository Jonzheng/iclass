package org.zyh.iclass.dao;

import java.util.List;

import org.zyh.iclass.model.College;
import org.zyh.iclass.model.Pager;

public interface ICollegeDao extends IBaseDao<College> {

	public void addImg(College college);
	public College loadByName(String name);
	public List<College> listCollege();
	public Pager<College> findCollege();
}
