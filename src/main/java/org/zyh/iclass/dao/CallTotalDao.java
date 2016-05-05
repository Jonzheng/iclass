package org.zyh.iclass.dao;

import org.springframework.stereotype.Repository;
import org.zyh.iclass.model.CallTotal;

@Repository
public class CallTotalDao extends BaseDao<CallTotal> implements ICallTotalDao {

	@Override
	public void addCallTotal(CallTotal callTotal) {
		this.add(callTotal);
	}

	@Override
	public CallTotal loadCallTotal(int id) {
		return this.load(id);
	}

	@Override
	public CallTotal loadByCouraseId(int courseId) {
		String hql = "from CallTotal where courseId=?";
		return (CallTotal)this.queryObject(hql, courseId);
	}

	@Override
	public void deleteCallTotal(int id) {
		this.delete(id);
	}

	@Override
	public void updateCallTotal(CallTotal callTotal) {
		this.update(callTotal);
	}

}
