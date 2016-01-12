package org.zyh.iclass.dao;

import java.util.List;

import org.zyh.iclass.model.Major;

public interface IMajorDao extends IBaseDao<Major> {

	public Major loadByNameAndDid(String name,int did);
	public List<Major> listMajorByDid(int did);
}
