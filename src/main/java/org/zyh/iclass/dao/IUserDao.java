package org.zyh.iclass.dao;

import java.util.List;

import org.zyh.iclass.model.Pager;
import org.zyh.iclass.model.Role;
import org.zyh.iclass.model.RoleType;
import org.zyh.iclass.model.User;
import org.zyh.iclass.model.UserRole;

public interface IUserDao extends IBaseDao<User> {
	
	public User loginBack(String username, String password);
	/**
	 * 获取用户的所有角色信息
	 * @param userId
	 * @return
	 */
	public List<Role> listUserRoles(int userId);
	/**
	 * 获取用户的所有角色的id
	 * @param userId
	 * @return
	 */
	public List<Integer> listUserRoleIds(int userId);

	/**
	 * 根据用户和角色获取用户角色的关联对象
	 * @param userId
	 * @param roleId
	 * @return
	 */
	public UserRole loadUserRole(int userId,int roleId);

	public User login(User user);
	public User loadByEmail(String email);
	/**
	 * 根据用户名获取用户对象
	 * @param username
	 * @return
	 */
	public User loadByUsername(String username);
	/**
	 * 根据角色id获取用户列表
	 * @param roleId
	 * @return
	 */
	public List<User> listRoleUsers(int roleId);
	/**
	 * 根据角色类型获取用户对象
	 * @param roleType
	 * @return
	 */
	public List<User> listRoleUsers(RoleType roleType);

	/**
	 * 添加用户角色对象
	 * @param user
	 * @param role
	 */
	public void addUserRole(User user,Role role);

	/**
	 * 删除用户的角色信息
	 * @param uid
	 */
	public void deleteUserRoles(int uid);

	
	public Pager<User> findUser();
	/**
	 * 删除用户角色对象
	 * @param uid
	 * @param rid
	 */
	public void deleteUserRole(int uid,int rid);
	/**
	 * 删除用户组对象
	 * @param uid
	 * @param gid
	 */
}
