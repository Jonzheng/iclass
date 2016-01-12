package org.zyh.iclass.dao;

import org.springframework.stereotype.Repository;
import org.zyh.iclass.model.Classroom;
import org.zyh.iclass.model.Pager;

@Repository
public class ClassroomDao extends BaseDao<Classroom>implements IClassroomDao {

	@Override
	public Pager<Classroom> findClassroom() {
		String hql = "from Classroom";
		return this.find(hql);
	}

	@Override
	public Pager<Classroom> findByGrade(String grade) {
		String hql = "from Classroom where grade=?";
		return this.find(hql, grade);
	}
	
	@Override
	public Pager<Classroom> findByString(String string) {
		String str = "%"+string+"%";
		String hql = "from Classroom where teacher like ? or monitor like ? or className like? or grade like?";
		return this.find(hql, new Object[]{str,str,str,str});
	}

	@Override
	public Pager<Classroom> findByCollege(String college) {
		String hql = "from Classroom where college=?";
		return this.find(hql, college);
	}

	@Override
	public Pager<Classroom> findByCD(String college, String department) {
		String hql = "from Classroom where college=? and department=?";
		return this.find(hql, new Object[]{college,department});
	}

	@Override
	public Pager<Classroom> findByCDM(String college, String department, String major) {
		String hql = "from Classroom where college=? and department=? and major=?";
		System.out.println(college+department+major);
		return this.find(hql, new Object[]{college,department,major});
	}


}
