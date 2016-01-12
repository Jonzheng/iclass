package org.zyh.iclass.service;

import java.security.NoSuchAlgorithmException;
import java.util.Date;
import java.util.List;

import javax.inject.Inject;
import javax.mail.MessagingException;
import javax.mail.internet.AddressException;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang.ArrayUtils;
import org.springframework.stereotype.Service;
import org.zyh.iclass.dao.IAdminDao;
import org.zyh.iclass.dao.IRoleDao;
import org.zyh.iclass.dao.IStudentDao;
import org.zyh.iclass.dao.IUserDao;
import org.zyh.iclass.model.Admin;
import org.zyh.iclass.model.CmsException;
import org.zyh.iclass.model.Pager;
import org.zyh.iclass.model.Role;
import org.zyh.iclass.model.Student;
import org.zyh.iclass.model.SystemContext;
import org.zyh.iclass.model.User;
import org.zyh.iclass.util.MailUtil;
import org.zyh.iclass.util.SecurityUtil;

@Service("userService")
public class UserService implements IUserService {
	@Inject
	private IUserDao userDao;
	@Inject
	private IRoleDao roleDao;
	@Inject
	private IAdminDao adminDao;
	@Inject
	private IStudentDao studentDao;
	
	private void addUserRole(User user,int rid) {
		//1、检查角色对象是否存在，如果不存在，就抛出异常
		Role role = roleDao.load(rid);
		if(role==null) throw new CmsException("要添加的用户角色不存在");
		//2、检查用户角色对象是否已经存在，如果存在，就不添加
		userDao.addUserRole(user, role);
	}
	@Override
	public void add(User user) {
		userDao.add(user);
	}
	@Override
	public void add(User user, String type) {
		User tu = userDao.loadByEmail(user.getEmail());
		if(tu!=null) throw new CmsException("该用户已被注册，请更换邮箱");
		user.setCreateDate(new Date());
		user.setStatus(1);
		userDao.add(user);
		//添加角色对象
		if(type!=null) {
			if(type.equals("admin")) {
				Admin ad = new Admin();
				ad.setEmail(user.getEmail());
				ad.setNickname(user.getNickname());
				ad.setPassword(user.getPassword());
				ad.setPhone(user.getMobile());
				adminDao.add(ad);
			}
		}
	}

	@Override
	public void delete(int id) {
		userDao.deleteUserRoles(id);
		userDao.delete(id);
	}

	@Override
	public void update(User user, Integer[] rids) {
		//1、获取用户已经存在的组id和角色id
		List<Integer> erids = userDao.listUserRoleIds(user.getId());
		//2、判断，如果erids中不存在rids就要进行添加
		for(Integer rid:rids) {
			if(!erids.contains(rid)) {
				addUserRole(user, rid);
			}
		}
		//3、进行删除
		for(Integer erid:erids) {
			if(!ArrayUtils.contains(rids, erid)) {
				userDao.deleteUserRole(user.getId(), erid);
			}
		}
	}

	@Override
	public void updateStatus(int id) {
		User u = userDao.load(id);
		if(u==null) throw new CmsException("修改状态的用户不存在");
		if(u.getStatus()==0) u.setStatus(1);
		else u.setStatus(0);
		userDao.update(u);
	}

	@Override
	public Pager<User> findUser(int curPage, int pageSize) {
		SystemContext.setPageOffset(curPage*pageSize-pageSize);
		SystemContext.setPageSize(pageSize);
		return userDao.findUser();
	}

	@Override
	public User load(int id) {
		return userDao.load(id);
	}

	@Override
	public List<Role> listUserRoles(int id) {
		return userDao.listUserRoles(id);
	}

	@Override
	public List<Integer> listUserRoleIds(int id) {
		return userDao.listUserRoleIds(id);
	}

	@Override
	public List<User> listRoleUsers(int rid) {
		return userDao.listRoleUsers(rid);
	}
	@Override
	public User register(User user) throws AddressException, NoSuchAlgorithmException, MessagingException{
		User u = this.loadByEmail(user.getEmail());
		if(u==null) {
			user.setPassword(SecurityUtil.md5(user.getPassword()));
			//初始化属性
			user.setStatus(0);
			user.setType("student");
			user.setPower(0);
			user.setLevel(0);
			user = MailUtil.activateMail(user);
			this.add(user);
			Student stu = new Student();
			stu.setUserId(user.getId());
			studentDao.addStudent(stu);
		}
		return u;
	}
	@Override
	public User loadByEmail(String email) {
		return userDao.loadByEmail(email);
	}
	@Override
	public User loadByUsername(String username) {
		return userDao.loadByUsername(username);
	}
	@Override
	public void updateUser(User user){
		userDao.update(user);
	}
	@Override
	public void updatePassword(User user) throws NoSuchAlgorithmException {
		user.setPassword(SecurityUtil.md5(user.getPassword()));
		userDao.update(user);
	}
	@Override
	public User login(User user, HttpSession session) throws NoSuchAlgorithmException {
		//根据username或email查询
		User u = userDao.login(user);
		//尝试用户名登录
		if(u!=null) {
			String pwd = SecurityUtil.md5(user.getPassword());
			if(u.getPassword().equals(pwd)) {
				//登录成功
				u.setPassword("1");
				session.setAttribute("loginUser",u);
			}
		}
		//登录失败
		return u;
	}
}
