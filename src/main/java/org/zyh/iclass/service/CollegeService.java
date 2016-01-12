package org.zyh.iclass.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.zyh.iclass.dao.IApplyCdmDao;
import org.zyh.iclass.dao.ICollegeDao;
import org.zyh.iclass.dao.IDepartmentDao;
import org.zyh.iclass.dao.IMajorDao;
import org.zyh.iclass.model.ApplyCdm;
import org.zyh.iclass.model.CmsException;
import org.zyh.iclass.model.College;
import org.zyh.iclass.model.Department;
import org.zyh.iclass.model.Major;
import org.zyh.iclass.model.Pager;
import org.zyh.iclass.model.SystemContext;

@Service("collegeService")
public class CollegeService implements ICollegeService{
	private ICollegeDao collegeDao;
	private IDepartmentDao departmentDao;
	private IMajorDao majorDao;
	private IApplyCdmDao applyCdmDao;
	
	public ICollegeDao getCollegeDao() {
		return collegeDao;
	}
	@Inject
	public void setCollegeDao(ICollegeDao collegeDao) {
		this.collegeDao = collegeDao;
	}
	public IDepartmentDao getDepartmentDao() {
		return departmentDao;
	}
	@Inject
	public void setDepartmentDao(IDepartmentDao departmentDao) {
		this.departmentDao = departmentDao;
	}
	public IMajorDao getMajorDao() {
		return majorDao;
	}
	@Inject
	public void setMajorDao(IMajorDao majorDao) {
		this.majorDao = majorDao;
	}
	public IApplyCdmDao getApplyCdmDao() {
		return applyCdmDao;
	}
	@Inject
	public void setApplyCdmDao(IApplyCdmDao applyCdmDao) {
		this.applyCdmDao = applyCdmDao;
	}
	//学校、学院
	public void addCollege(College college) {
		//College c = this.loadCollege(college.getId());
		//if(c!=null) throw new CmsException("要添加的学校已经存在");
		collegeDao.add(college);
	}
	public void deleteCollege(int id) {
		collegeDao.delete(id);
	}
	public void updateCollege(College college) {
		collegeDao.update(college);
	}
	public College loadCollege(int id) {
		return collegeDao.load(id);
	}
	
	//系别
	public void addDepartment(Department department) {
		//Department d = this.loadDepartment(department.getId());
		//if(d!=null) throw new CmsException("要添加的系别已经存在");
		departmentDao.add(department);
	}
	public void deleteDepartment(int id) {
		departmentDao.delete(id);
	}
	public void updateDepartment(Department department) {
		departmentDao.update(department);
	}
	public Department loadDepartment(int id) {
		return departmentDao.load(id);
	}
	
	//专业
	public void addMajor(Major major) {
		//Major m = this.loadMajor(major.getId());
		//if(m!=null) throw new CmsException("要添加的专业已经存在");
		majorDao.add(major);
	}
	public void deleteMajor(int id) {
		majorDao.delete(id);
	}
	public void updateMajor(Major major) {
		majorDao.update(major);
	}
	public Major loadMajor(int id) {
		return majorDao.load(id);
	}
	
	@Override
	public College loadByCollegeName(String name) {
		return collegeDao.loadByName(name);
	}
	@Override
	public Department loadByDNameAndCid(String name,int cid) {
		return departmentDao.loadByNameAndCid(name, cid);
	}
	@Override
	public Major loadByNameAndDid(String name, int did) {
		return majorDao.loadByNameAndDid(name, did);
	}
	@Override
	public void addCdm(String cname, String dname, String mname) {

		College c = new College();
		c = this.loadByCollegeName(cname);
		if(c==null) {
			c = new College();
			c.setName(cname);
			c.setImgName("default.png");
			//否则就进行更新(其实内容没有变的更新)
		}
		this.addCollege(c);
		//无论如何c都会是一个实体对象
		
		Department d = new Department();
		d = this.loadByDNameAndCid(dname,c.getId());
		System.out.println(c.getId());
		if(d==null) {   //条件等价===不存在系名称
			d = new Department();
			d.setName(dname);
			d.setCollege(c);
			//否则就进行更新(其实内容没有变的更新)
		}
		this.addDepartment(d);
		//无论如何d都会是一个实体对象
		
		Major m = new Major();
		m = this.loadByNameAndDid(mname, d.getId());
		
		if(m!=null) {
			if(m.getDepartment().getCollege()==c) {
				throw new CmsException("这些都已经存在了...");
			}
		}
		m = new Major();
		m.setName(mname);
		m.setDepartment(d);
		this.addMajor(m);
	}
	@Override
	public List<College> listCollege() {
		return collegeDao.listCollege();
	}
	@Override
	public List<Department> listDepartmentByCid(int cid) {
		return departmentDao.listDepartmentByCid(cid);
	}
	@Override
	public List<Major> listMajorByDid(int did) {
		return majorDao.listMajorByDid(did);
	}
	
	private void setPP(int curPage, int pageSize) {
		SystemContext.setPageOffset(curPage*pageSize-pageSize);
		SystemContext.setPageSize(pageSize);
	}
	private void setFure(int curPage, int pageSize, String sort, String order) {
		this.setPP(curPage, pageSize);
		SystemContext.setSort(sort);
		SystemContext.setOrder(order);
	}
	
	/**
	 * 处理申请
	 */
	@Override
	public void addApplyCdm(ApplyCdm applyCdm) {
		applyCdmDao.add(applyCdm);
	}
	@Override
	public void deleteApplyCdm(int id) {
		applyCdmDao.delete(id);
	}
	@Override
	public void updateApplyCdm(ApplyCdm applyCdm) {
		applyCdmDao.update(applyCdm);
	}
	@Override
	public void loadApplyCdm(int id) {
		applyCdmDao.load(id);
	}
	@Override
	public Pager<ApplyCdm> findApplyCdm(int curPage, int pageSize) {
		this.setPP(curPage, pageSize);
		return applyCdmDao.findCdm();
	}

	@Override
	public Pager<ApplyCdm> findApplyCdm(int curPage, int pageSize, String sort, String order) {
		this.setFure(curPage, pageSize, sort, order);
		return applyCdmDao.findCdm();
	}
	@Override
	public Pager<College> findCollege(int curPage, int pageSize) {
		this.setPP(curPage, pageSize);
		return collegeDao.findCollege();
	}
	@Override
	public Pager<College> findCollege(int curPage, int pageSize, String sort, String order) {
		this.setFure(curPage, pageSize, sort, order);
		return collegeDao.findCollege();
	}
	@Override
	public void deleteCdm(int cid,int did,int mid) {
		this.deleteMajor(mid);
		List<Major> ms = this.listMajorByDid(did);
		if(ms.size()==0){
			this.deleteDepartment(did);
			List<Department> ds = this.listDepartmentByCid(cid);
			if(ds.size()==0) {
				this.deleteCollege(cid);
			}
		}
	}
	@Override
	public void updateCdm(College c, Department d, Major m) {
		College hc = this.loadByCollegeName(c.getName());
		if(hc==null) {
			this.updateCollege(c);
		} 
		Department hd = this.loadByDNameAndCid(d.getName(), c.getId());
		if(hd==null) {
			d.setCollege(c);
			this.updateDepartment(d);
		}
		Major hm = this.loadByNameAndDid(m.getName(), d.getId());
		if(hm==null) {
			m.setDepartment(d);
			this.updateMajor(m);
		}
	}
	@Override
	public Department loadByDepartmentName(String name) {
		return departmentDao.loadByDepartmentName(name);
	}
	@Override
	public void addImg(College college) {
		collegeDao.addImg(college);
	}
}
