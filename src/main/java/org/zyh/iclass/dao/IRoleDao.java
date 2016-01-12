package org.zyh.iclass.dao;

import java.util.List;

import org.zyh.iclass.model.Role;

public interface IRoleDao extends IBaseDao<Role> {
	public List<Role> listRole();
	public void deleteRoleUsers(int rid);
}
