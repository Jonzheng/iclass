package org.zyh.iclass.dao;

import org.zyh.iclass.model.Admin;
import org.zyh.iclass.model.Pager;

public interface IAdminDao extends IBaseDao<Admin> {
	public Admin loadByEmail(String email);
	public Admin loadByNickname(String nickname);
	public Pager<Admin> findAdmin();
}
