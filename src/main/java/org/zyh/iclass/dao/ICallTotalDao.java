package org.zyh.iclass.dao;

import org.zyh.iclass.model.CallTotal;

public interface ICallTotalDao {
	
	public void addCallTotal(CallTotal callTotal);
	public CallTotal loadCallTotal(int id);
	public CallTotal loadByCouraseId(int courseId);
	public void deleteCallTotal(int id);
	public void updateCallTotal(CallTotal callTotal);
}
