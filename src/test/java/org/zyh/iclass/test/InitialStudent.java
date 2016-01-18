package org.zyh.iclass.test;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

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
import org.zyh.iclass.model.Classroom;
import org.zyh.iclass.model.Pager;
import org.zyh.iclass.model.Student;
import org.zyh.iclass.service.IStudentService;
import org.zyh.iclass.util.ExportExcelUtil;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("/beans.xml")
public class InitialStudent {
	@Inject
	private SessionFactory sessionFactory;
	
	@Inject
	private IStudentService stuService;
	
	@Before
	public void setUp() {
        Session session = sessionFactory.openSession();
        session.setFlushMode(FlushMode.MANUAL);
        TransactionSynchronizationManager.bindResource(sessionFactory,new SessionHolder(session));
	}
	
	@Test
	public void initStudents(){
		for(int i=0;i<0;i++) {
			Student stu = new Student();
			stu.setBirthday("1992-11-"+i);
			stu.setCollege("惠州学院");
			stu.setDepartment("计算机科学系");
			stu.setDoorplate("16#C703");
			stu.setMajor("软件工程");
			stu.setMobile("150188799"+i);
			stu.setName("虞姬姬"+i);
			stu.setPoint(0);
			stu.setQqNum("11223344"+i);
			stu.setSex("男");
			stu.setShortMobile("6100"+i);
			stu.setSign("this is "+i);
			stu.setStudentId("12140806112"+i);
			stu.setUserId(i);
			stu.setClassId(i);
			
			stuService.addStudent(stu);
		}
	}
	@Test
	public void exportExcel() throws FileNotFoundException {
		String title = "2012软件工程";
		OutputStream out = new FileOutputStream("D://student.xls");
		List<Student> stus = new ArrayList<>();
		stus = stuService.listStudent();
		ExportExcelUtil.exportExcel(title, stus, out);
	}
	@Test
	public void findStudent() {
		Pager<Student> stus = stuService.findStudent(0, 15, "id", "desc");
		for(Student stu:stus.getDatas()) {
			System.out.println(stu.getName());
		}
	}
	@After
	public void tearDown(){
        TransactionSynchronizationManager.unbindResource(sessionFactory);
	}
}
