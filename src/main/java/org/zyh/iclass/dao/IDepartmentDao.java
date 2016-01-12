package org.zyh.iclass.dao;

import java.util.List;

import org.zyh.iclass.model.Department;

public interface IDepartmentDao extends IBaseDao<Department> {

	public Department loadByNameAndCid(String name,int cid);
	public Department loadByDepartmentName(String name);
	public List<Department> listDepartmentByCid(int cid);
}
