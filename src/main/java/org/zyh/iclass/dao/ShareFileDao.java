package org.zyh.iclass.dao;

import java.util.List;

import org.springframework.stereotype.Repository;
import org.zyh.iclass.model.ShareFile;

@Repository
public class ShareFileDao extends BaseDao<ShareFile> implements IShareFileDao {

	@Override
	public void addFile(ShareFile shareFile) {
		this.add(shareFile);
	}

	@Override
	public void delete(int id) {
		this.delete(id);
	}

	@Override
	public List<ShareFile> list() {
		String hql = "from ShareFile";
		return this.list(hql);
	}

	@Override
	public ShareFile loadById(int id) {
		return this.load(id);
	}

}
