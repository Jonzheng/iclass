package org.zyh.iclass.dao;

import java.util.List;

import org.springframework.stereotype.Repository;
import org.zyh.iclass.model.Major;

@Repository("majorDao")
public class MajorDao extends BaseDao<Major> implements IMajorDao{

	@Override
	public Major loadByNameAndDid(String name, int did) {
		String hql = "from Major where name=? and d_id=?";
		return (Major)this.queryObject(hql, new Object[]{name,did});
	}

	@Override
	public List<Major> listMajorByDid(int did) {
		String hql = "from Major where d_id=?";
		return this.list(hql, did);
	}

}
