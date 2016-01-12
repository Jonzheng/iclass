package org.zyh.iclass.service;

import java.util.List;

import org.zyh.iclass.model.ApplyCdm;
import org.zyh.iclass.model.College;
import org.zyh.iclass.model.Department;
import org.zyh.iclass.model.Major;
import org.zyh.iclass.model.Pager;

public interface ICollegeService {

	public College loadByCollegeName(String name);
	public Department loadByDNameAndCid(String name,int cid);
	public Major loadByNameAndDid(String name,int did);
	
	/**
	 * DWR函数--添加专业
	 * @param cname
	 * @param wname
	 * @param mname
	 */
	public void addCdm(String cname,String dname,String mname);
	public void deleteCdm(int cid,int did,int mid);
	public void updateCdm(College c,Department d,Major m);
	public Pager<College> findCollege(int curPage,int pageSize);
	public Pager<College> findCollege(int curPage,int pageSize,String sort,String order);
	
	/**
	 *  DWR函数--初始化选择框用
	 * @return
	 */
	public List<College> listCollege();
	public List<Department> listDepartmentByCid(int cid);
	public List<Major> listMajorByDid(int did);
	
	/**
	 * 新建申请
	 */
	public void addApplyCdm(ApplyCdm applyCdm);
	public void deleteApplyCdm(int id);
	public void updateApplyCdm(ApplyCdm applyCdm);
	public void loadApplyCdm(int id);
	public Pager<ApplyCdm> findApplyCdm(int curPage,int pageSize);
	public Pager<ApplyCdm> findApplyCdm(int curPage,int pageSize,String sort,String order);
	
	public void addImg(College college);
	public void addCollege(College college);
	public void deleteCollege(int id);
	public void updateCollege(College college);
	public College loadCollege(int id);
	
	public void addDepartment(Department department);
	public void deleteDepartment(int id);
	public void updateDepartment(Department department);
	public Department loadDepartment(int id);
	public Department loadByDepartmentName(String name);
	
	public void addMajor(Major major);
	public void deleteMajor(int id);
	public void updateMajor(Major major);
	public Major loadMajor(int id);
}
