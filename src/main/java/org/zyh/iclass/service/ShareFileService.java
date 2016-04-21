package org.zyh.iclass.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.zyh.iclass.dao.IShareFileDao;
import org.zyh.iclass.model.ShareFile;

@Service("shareFileService")
public class ShareFileService implements IShareFileService {
	
	@Inject
	private IShareFileDao shareFileDao;

	@Override
	public void addFile(ShareFile shareFile) {
		shareFileDao.addFile(shareFile);
	}

	@Override
	public void deleteFile(int id) {
		shareFileDao.delete(id);
	}

	@Override
	public List<ShareFile> listFile() {
		return shareFileDao.list();
	}

	@Override
	public ShareFile loadById(int id) {
		return shareFileDao.loadById(id);
	}

}
