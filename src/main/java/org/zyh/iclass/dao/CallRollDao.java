package org.zyh.iclass.dao;

import java.util.List;

import org.springframework.stereotype.Repository;
import org.zyh.iclass.model.CallRoll;
import org.zyh.iclass.model.Pager;

@Repository
public class CallRollDao extends BaseDao<CallRoll> implements ICallRollDao {

	@Override
	public void initCallRoll(int courseId) {
		String sql = "insert into t_call_roll(section,course_id,student_id,name,absent,absent_r,dayoff,dayoff_r,late,late_r,point,present,present_r,section_t)select 1,course_id,student_id,name,0,-3,0,0,0,-1,60,0,1,0 from t_student t where t.course_id=?";
		//TODO
	}

	@Override
	public void newCallRoll(int sectionId) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void addCallRoll(CallRoll callRoll) {
		this.add(callRoll);
	}

	@Override
	public void deleteCallRoll(int id) {
		this.delete(id);
	}

	@Override
	public void updateCallRoll(CallRoll callRoll) {
		this.update(callRoll);
	}

	@Override
	public CallRoll loadCallRoll(int id) {
		return this.load(id);
	}

	@Override
	public CallRoll loadByStudentId(int studentId) {
		String hql = "from CallRoll where student_id =?";
		return (CallRoll)this.queryObject(hql, studentId);
	}

	@Override
	public List<CallRoll> listCallRoll() {
		String hql = "from CallRoll";
		return this.list(hql);
	}

	@Override
	public List<CallRoll> listByCourseIdAndSectionId(int courseId, int section) {
		String hql = "from CallRoll where ccourseId=? and section=?";
		return this.list(hql, new Object[]{courseId,section});
	}

	@Override
	public Pager<CallRoll> findByCourseIdAndSectionId(int courseId, int section) {
		String hql = "from CallRoll where courseId=? and section=?";
		return this.find(hql, new Object[]{courseId,section});
	}

}
