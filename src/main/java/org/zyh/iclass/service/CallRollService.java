package org.zyh.iclass.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.zyh.iclass.dao.ICallRollDao;
import org.zyh.iclass.model.CallRoll;
import org.zyh.iclass.model.Pager;
import org.zyh.iclass.model.SystemContext;

@Service
public class CallRollService implements ICallRollService {
	
	@Inject
	private ICallRollDao callRollDao;

	@Override
	public void addCallRoll(CallRoll callRoll) {
		callRollDao.addCallRoll(callRoll);
	}

	@Override
	public void deleteCallRoll(int id) {
		callRollDao.deleteCallRoll(id);
	}

	@Override
	public void updateCallRoll(CallRoll callRoll) {
		callRollDao.updateCallRoll(callRoll);
	}

	@Override
	public CallRoll loadCallRoll(int id) {
		return callRollDao.loadCallRoll(id);
	}

	@Override
	public CallRoll loadByStudentId(int studentId) {
		return callRollDao.loadByStudentId(studentId);
	}

	@Override
	public List<CallRoll> listCallRoll() {
		return callRollDao.listCallRoll();
	}

	@Override
	public List<CallRoll> listByCourseIdAndSectionId(int courseId, int section) {
		return callRollDao.listByCourseIdAndSectionId(courseId, section);
	}

	@Override
	public Pager<CallRoll> findByCourseIdAndSectionId(int courseId, int sectionId, int curPage, int pageSize) {
		SystemContext.setPageOffset(curPage*pageSize-pageSize);
		SystemContext.setPageSize(pageSize);
		return callRollDao.findByCourseIdAndSectionId(courseId, sectionId);
	}

}
