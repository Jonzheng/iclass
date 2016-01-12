package org.zyh.iclass.dao;

import org.springframework.stereotype.Repository;
import org.zyh.iclass.model.ApplyCdm;
import org.zyh.iclass.model.Pager;

@Repository
public class ApplyCdmDao extends BaseDao<ApplyCdm>implements IApplyCdmDao {


	@Override
	public Pager<ApplyCdm> findCdm() {
		return this.find("from ApplyCdm");
	}

}
