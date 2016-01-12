package org.zyh.iclass.dao;

import org.zyh.iclass.model.ApplyCdm;
import org.zyh.iclass.model.Pager;

public interface IApplyCdmDao extends IBaseDao<ApplyCdm> {

	public Pager<ApplyCdm> findCdm();
}
