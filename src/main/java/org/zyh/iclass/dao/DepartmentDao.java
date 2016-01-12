package org.zyh.iclass.dao;

import java.util.List;

import org.springframework.stereotype.Repository;
import org.zyh.iclass.model.Department;

@Repository("departmentDao")
public class DepartmentDao extends BaseDao<Department> implements IDepartmentDao{

	@Override
	public Department loadByNameAndCid(String name,int cid) {
		String hql = "from Department where name=? and c_id=?";
		return (Department)this.queryObject(hql, new Object[]{name,cid});
	}

	@Override
	public List<Department> listDepartmentByCid(int cid) {
		String hql = "from Department where c_id=?";
		return this.list(hql, cid);
	}

	@Override
	public Department loadByDepartmentName(String name) {
		String hql = "from Department where name=?";
		return (Department)this.queryObject(hql,name);
	}

}
