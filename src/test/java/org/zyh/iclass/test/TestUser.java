package org.zyh.iclass.test;
import java.util.List;

import javax.inject.Inject;
import javax.mail.MessagingException;
import javax.mail.internet.AddressException;

import org.hibernate.FlushMode;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.orm.hibernate4.SessionHolder;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.support.TransactionSynchronizationManager;
import org.zyh.iclass.dao.IUserDao;
import org.zyh.iclass.model.ApplyCdm;
import org.zyh.iclass.model.Classroom;
import org.zyh.iclass.model.College;
import org.zyh.iclass.model.Department;
import org.zyh.iclass.model.Major;
import org.zyh.iclass.model.Pager;
import org.zyh.iclass.model.User;
import org.zyh.iclass.service.IClassroomService;
import org.zyh.iclass.service.ICollegeService;
import org.zyh.iclass.service.IUserService;
import org.zyh.iclass.util.MailUtil;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("/beans.xml")
public class TestUser {
	@Inject
	private SessionFactory sessionFactory;
	@Inject
	private IUserService userService;
	@Inject
	private IUserDao userDao;
	@Inject
	private ICollegeService collegeService;
	@Inject
	private IClassroomService classroomService;
	
	@Before
	public void setUp() {
        Session session = sessionFactory.openSession();
        session.setFlushMode(FlushMode.MANUAL);
        TransactionSynchronizationManager.bindResource(sessionFactory,new SessionHolder(session));
	}
	private void print(User u) {
		System.out.println(u);
	}
	
	@Test
	public void sendMail() throws AddressException, MessagingException {
		MailUtil.sendMail("952981465@qq.com", "JavaMailForTest", "test:"+this.getClass().getClassLoader().getResource("").getPath());
	}
	
/*	@Test
	public void activateMail() throws AddressException, MessagingException, NoSuchAlgorithmException {
		User u = new User();
		MailUtil.activateMail("952981465@qq.com",u);
	}*/
	
	@Test
	public void testLoad() {
		for(int i=22;i<2;i++) {
			//userService.add(u);
		}
		User tu = userService.load(2);
		print(tu);
	}
	@Test
	public void testAdd() {
/*		User u = new User("admina22@126.com","123","管理02","1511887022","admin",1);
		userService.add(u);
		User tu = userService.load(3);
		print(tu);*/
		for(int i = 20;i<1;i++) {
			ApplyCdm ap = new ApplyCdm();
			ap.setCollegeName(i+"大学");
			ap.setDepartmentName(i+"系");
			ap.setMajorName(i+"专业");
			collegeService.addApplyCdm(ap);
		}
	}
	@Test
	public void testAddCdm() {
		
/*		collegeService.addCdm("惠州学院","计算机科学系","软件工程");
		collegeService.addCdm("惠州学院","计算机科学系","网络工程");
		collegeService.addCdm("惠州学院","计算机科学系","计算机教育");
		collegeService.addCdm("惠州学院","服装系","艺术设计");
		collegeService.addCdm("惠州学院","服装系","内衣设计");
		collegeService.addCdm("惠州学院","中文系","汉语言");
		collegeService.addCdm("惠州学院","美术系","二维动画");
		collegeService.addCdm("惠州学院","美术系","人体工程");
		collegeService.addCdm("惠州学院","体育系","NBA工程");
		collegeService.addCdm("惠州学院","体育系","国足");
		collegeService.addCdm("中山大学","计算机科学系","软件工程");
		collegeService.addCdm("中山大学","计算机科学系","算法艺术");
		collegeService.addCdm("中山大学","计算机科学系","三D动画");
		collegeService.addCdm("中山大学","数学系","数学应用");
		collegeService.addCdm("中山大学","数学系","统计学");
		collegeService.addCdm("广东工业大学","数学系","数学应用");
		collegeService.addCdm("广东工业大学","数学系","统计数学");
		collegeService.addCdm("广东工业大学","中文系","汉语言");
		collegeService.addCdm("广东工业大学","外语系","日语");
		collegeService.addCdm("广东工业大学","外语系","德语");
		*/
/*		collegeService.addCdm("广州大学","计算机科学系","软件工程");
		collegeService.addCdm("广州大学","计算机科学系","网络工程");
		collegeService.addCdm("广州大学","计算机科学系","计算机教育");
		collegeService.addCdm("广州大学","服装系","艺术设计");
		collegeService.addCdm("广州大学","服装系","内衣设计");
		collegeService.addCdm("广州大学","中文系","汉语言");
		collegeService.addCdm("广州大学","美术系","二维动画");
		collegeService.addCdm("广州大学","美术系","人体工程");
		collegeService.addCdm("广州大学","体育系","NBA工程");
		collegeService.addCdm("广州大学","体育系","国足");
		collegeService.addCdm("广州大学","音乐系","音乐表演");
		collegeService.addCdm("广州大学","音乐系","音乐教育");
		collegeService.addCdm("广州大学","美术系","人体艺术");
		collegeService.addCdm("广州大学","体育系","热血足球");
		collegeService.addCdm("广州大学","体育系","神庙逃亡");*/
		
/*		collegeService.addCdm("中山大学","计算机科学系","黑客技术");
		collegeService.addCdm("中山大学","计算机科学系","云服务器");
		collegeService.addCdm("中山大学","计算机科学系","电脑智能");*/
		
/*		collegeService.addCdm("aa大学","计算机科学系","黑客技术");
		collegeService.addCdm("aa大学","计算机科学系","云服务器");
		collegeService.addCdm("aa大学","sh系","电脑智能");*/
		
		collegeService.addCdm("日狗大学","数学系","99计算");
		collegeService.addCdm("日狗大学","数学系","87原理");
		collegeService.addCdm("日狗大学","数学系","9算");
		collegeService.addCdm("日狗大学","数学系","8理");
		collegeService.addCdm("日狗大学","中文系","9文学");
		collegeService.addCdm("日狗大学","中文系","9文");
	}
	
	@Test
	public void testCdm() {
		College c = new College();
		c.setId(9);
		c.setName("日狗大学");
		Department d = new Department();
		d.setId(19);
		d.setName("输煤系");
		Major m = new Major();
		m.setId(42);
		m.setName("语文学");
		collegeService.updateCdm(c, d, m);
	}
	
	@Test
	public void testClassroom() {
		Classroom c = new Classroom();
		c.setCollege("co");
		c.setDepartment("de");
		c.setMajor("ma");
		c.setGrade("gr");
		c.setTeacher("te");
		c.setMonitor("mo");
		c.setClassName("cn");
		c.setCreator("cre");
		c.setNumber(1);
		classroomService.addClassroom(c);
	}
	
	
	@Test
	public void testListCdm() {
		List<Major> ms;
		ms = collegeService.listMajorByDid(1);
		for(Major m:ms) {
			System.out.println(m.getName());
		}
	}
	@Test
	public void testUpdate() {
		User u = new User();
		u.setId(1);
		u.setNickname("qqq");
		userDao.update(u);
	}
	
	@Test
	public void testLoadByEmail() {
		User tu = userDao.loadByEmail("33engshib@126.com");
		print(tu);
	}
	@Test
	public void testFindUser() {
		Pager<User> us = userService.findUser(1,15);
		for(User u:us.getDatas()) {
			print(u);
		}
	}
	@After
	public void tearDown(){
        TransactionSynchronizationManager.unbindResource(sessionFactory);
	}
}
