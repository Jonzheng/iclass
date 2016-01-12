package org.zyh.iclass.dao;

import java.util.List;

import org.springframework.stereotype.Repository;
import org.zyh.iclass.model.College;
import org.zyh.iclass.model.Pager;

@Repository("collegeDao")
public class CollegeDao extends BaseDao<College> implements ICollegeDao {

	@Override
	public College loadByName(String name) {
		String hql = "from College where name=?";
		return (College)this.queryObject(hql, name);
	}

	@Override
	public List<College> listCollege() {
		String hql = "from College";
		return this.list(hql);
	}

	@Override
	public Pager<College> findCollege() {
		return this.find("from College");
	}

	@Override
	public void addImg(College college) {
		College c = this.loadByName(college.getName());
		if(c==null) return;
		c.setImgName(college.getImgName());
		this.update(c);
	}
	
}
