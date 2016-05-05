package org.zyh.iclass.service;

import org.zyh.iclass.model.CallTotal;

public interface ICallTotalService {
	
	public void addCallTotal(CallTotal callTotal);
	public CallTotal loadCallTotal(int id);
	public CallTotal loadByCouraseId(int courseId);
	public void deleteCallTotal(int id);
	public void updateCallTotal(CallTotal callTotal);

}
