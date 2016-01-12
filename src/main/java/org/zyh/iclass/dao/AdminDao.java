package org.zyh.iclass.dao;

import org.springframework.stereotype.Repository;
import org.zyh.iclass.model.Admin;
import org.zyh.iclass.model.Pager;

@Repository("adminDao")
public class AdminDao extends BaseDao<Admin> implements IAdminDao {

	@Override
	public Admin loadByEmail(String email) {
		String hql = "from Admin where email=?";
		return (Admin)this.queryObject(hql,email);
	}

	@Override
	public Admin loadByNickname(String nickname) {
		String hql = "from Admin where nickname=?";
		return (Admin)this.queryObject(hql,nickname);
	}

	@Override
	public Pager<Admin> findAdmin() {
		return this.find("from Admin");
	}
}
