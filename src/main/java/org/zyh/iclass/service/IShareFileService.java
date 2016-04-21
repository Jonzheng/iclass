package org.zyh.iclass.service;

import java.util.List;

import org.zyh.iclass.model.ShareFile;

public interface IShareFileService {
	public void addFile(ShareFile shareFile);
	public void deleteFile(int id);
	public List<ShareFile> listFile();
	public ShareFile loadById(int id);
}
