package org.zyh.iclass.dao;

import java.util.List;

import org.springframework.stereotype.Repository;
import org.zyh.iclass.model.Pager;
import org.zyh.iclass.model.Role;
import org.zyh.iclass.model.RoleType;
import org.zyh.iclass.model.User;
import org.zyh.iclass.model.UserRole;
@SuppressWarnings("unchecked")
@Repository("userDao")
public class UserDao extends BaseDao<User> implements IUserDao {

	@Override
	public List<Role> listUserRoles(int userId) {
		String hql = "select ur.role from UserRole ur where ur.user.id=?";
		return this.getSession().createQuery(hql).setParameter(0,userId).list();
	}

	@Override
	public List<Integer> listUserRoleIds(int userId) {
		String hql = "select ur.role.id from UserRole ur where ur.user.ud=?";
		return this.getSession().createQuery(hql).setParameter(0,userId).list();
	}

	@Override
	public UserRole loadUserRole(int userId, int roleId) {
		String hql = "select ur from UserRole ur left join fetch ur.user u left join fetch ur.role r where u.id=? and r.id=?";
		return (UserRole)this.getSession().createQuery(hql)
					.setParameter(0, userId).setParameter(1, roleId).uniqueResult();
	}

	@Override
	public User loadByEmail(String email) {
		String hql = "from User where email=?";
		return (User)this.queryObject(hql, email);
	}
	@Override
	public User loadByUsername(String username) {
		String hql = "from User where username=?";
		return (User)this.queryObject(hql, username);
	}

	@Override
	public List<User> listRoleUsers(int roleId) {
		String hql = "from ur.user from UserRole ur where ur.role.id=?";
		return this.list(hql, roleId);
	}

	@Override
	public List<User> listRoleUsers(RoleType roleType) {
		String hql = "select ur.user from UserRole ur where ur.roleTyle=?";
		return this.list(hql, roleType);
	}

	@Override
	public void addUserRole(User user, Role role) {
		UserRole ur = this.loadUserRole(user.getId(), role.getId());
		if(ur!=null) return;
		ur = new UserRole();
		ur.setRole(role);
		ur.setUser(user);
		this.getSession().save(ur);
	}

	@Override
	public void deleteUserRoles(int uid) {
		String hql = "delete UserRole ur where ur.user.id=?";
		this.updateByHql(hql, uid);
		
	}

	@Override
	public Pager<User> findUser() {
		return this.find("from User");
	}

	@Override
	public void deleteUserRole(int uid, int rid) {
		String hql = "delete UserRole ur where ur.user.id=? and ur.role.id=?";
		this.updateByHql(hql,new Object[]{uid,rid});
	}

	@Override
	public User login(User user) {
		String hql = "from User where username=? or email=?";
		return (User)queryObject(hql, new Object[]{user.getUsername(),user.getEmail()});
	}

	@Override
	public User loginBack(String username, String password) {
		String hql ="from User where username=? and password=? and power=?";
		return (User)this.queryObject(hql, new Object[]{username,password,2});
	}

}
