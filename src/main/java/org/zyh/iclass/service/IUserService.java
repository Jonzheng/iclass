package org.zyh.iclass.service;

import java.security.NoSuchAlgorithmException;
import java.util.List;

import javax.mail.MessagingException;
import javax.mail.internet.AddressException;
import javax.servlet.http.HttpSession;

import org.zyh.iclass.model.Pager;
import org.zyh.iclass.model.Role;
import org.zyh.iclass.model.User;

public interface IUserService {
	
	
	
	public void updateUser(User user) throws NoSuchAlgorithmException;
	/**
	 * 注册用户，需要激活
	 * @param user 用户对象
	 * @return 
	 * @throws NoSuchAlgorithmException 
	 * @throws MessagingException 
	 * @throws AddressException 
	 */
	public User register(User user) throws NoSuchAlgorithmException, AddressException, MessagingException;
	
	/**
	 * 添加用户，需要判断用户名是否存在，如果存在抛出异常
	 * @param user 用户对象
	 */
	public void add(User user);
	/**
	 * 添加用户，需要判断用户名是否存在，如果存在抛出异常
	 * @param user 用户对象
	 * @param rids 用户的所有角色信息
	 */
	public void add(User user,String type);
	/**
	 * 删除用户，注意需要把用户和角色和组的对应关系删除
	 * 如果用户存在相应的文章不能删除
	 * @param id
	 */
	public void delete(int id);
	/**
	 * 用户的更新，如果rids中的角色在用户中已经存在，就不做操作
	 * 如果rids中的角色在用户中不存在就要添加，如果用户中的角色不存在于rids中需要进行删除
	 * @param user
	 * @param rids
	 */
	public void update(User user,Integer[] rids);
	/**
	 * 更新用户的状态
	 * @param id
	 */
	public void updateStatus(int id);

	/**
	 * 列表用户
	 */
	public Pager<User> findUser(int curPage,int pageSize);
	
	
	public User loadByEmail(String email);
	public User loadByUsername(String username);
	/**
	 * 获取用户信息
	 * @param id
	 * @return
	 */
	public User load(int id);
	/**
	 * 获取用户的所有角色信息
	 * @param id
	 * @return
	 */
	public List<Role> listUserRoles(int id);
	/**
	 * 获取用户的所有组信息
	 * @param id
	 * @return
	 */
	
	public List<Integer> listUserRoleIds(int id);
	
	public List<User> listRoleUsers(int rid);
	
	public User login(User user,HttpSession session) throws NoSuchAlgorithmException;
	/**
	 * 更新密码
	 * @param user
	 * @throws NoSuchAlgorithmException
	 */
	void updatePassword(User user) throws NoSuchAlgorithmException;
}