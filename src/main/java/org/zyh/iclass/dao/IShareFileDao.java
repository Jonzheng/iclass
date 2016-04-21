package org.zyh.iclass.dao;

import java.util.List;
import org.zyh.iclass.model.ShareFile;

public interface IShareFileDao {
	public void addFile(ShareFile shareFile);
	public void delete(int id);
	public List<ShareFile> list();
	public ShareFile loadById(int id);
}
