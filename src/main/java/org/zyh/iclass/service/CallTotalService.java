package org.zyh.iclass.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.zyh.iclass.dao.ICallTotalDao;
import org.zyh.iclass.model.CallTotal;

@Service
public class CallTotalService implements ICallTotalService {
	
	@Inject
	private ICallTotalDao callTotalDao;

	@Override
	public void addCallTotal(CallTotal callTotal) {
		callTotalDao.addCallTotal(callTotal);
	}

	@Override
	public CallTotal loadCallTotal(int id) {
		return callTotalDao.loadCallTotal(id);
	}

	@Override
	public CallTotal loadByCouraseId(int courseId) {
		return callTotalDao.loadByCouraseId(courseId);
	}

	@Override
	public void deleteCallTotal(int id) {
		callTotalDao.deleteCallTotal(id);
	}

	@Override
	public void updateCallTotal(CallTotal callTotal) {
		callTotalDao.updateCallTotal(callTotal);
	}

}
