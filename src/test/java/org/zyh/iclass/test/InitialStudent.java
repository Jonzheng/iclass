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
		for(int i=50;i<60;i++) {
			Student stu = new Student();
			stu.setBirthday("1992-06-"+i);
			stu.setCollege("惠州学院");
			stu.setDepartment("计算机科学系");
			stu.setDoorplate("16#C707");
			stu.setMajor("某个专业");
			stu.setMobile("150222255"+i);
			stu.setName("露琪亚"+i);
			stu.setPoint(0);
			stu.setQqNum("11116666"+i);
			stu.setSex("女");
			stu.setShortMobile("6646"+i);
			stu.setSign("we are "+i);
			stu.setStudentId("12140608999"+i);
			stu.setUserId(50+i);
			stu.setClassId(1);
			stu.setCourseId(1);
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
		Pager<Student> stus = stuService.findStudentByClassId(0,0, 15, "id", "desc");
		for(Student stu:stus.getDatas()) {
			System.out.println(stu.getName());
		}
	}
	@After
	public void tearDown(){
        TransactionSynchronizationManager.unbindResource(sessionFactory);
	}
}
