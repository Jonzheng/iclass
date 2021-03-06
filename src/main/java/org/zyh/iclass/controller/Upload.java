package org.zyh.iclass.controller;

import java.io.File;
import java.io.IOException;
import java.security.NoSuchAlgorithmException;
import java.util.Date;

import javax.inject.Inject;
import javax.mail.MessagingException;
import javax.mail.internet.AddressException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FilenameUtils;
import org.directwebremoting.json.JsonUtil;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.zyh.iclass.model.AjaxObj;
import org.zyh.iclass.model.College;
import org.zyh.iclass.model.SystemContext;
import org.zyh.iclass.model.User;
import org.zyh.iclass.model.UserDTO;
import org.zyh.iclass.service.ICollegeService;
import org.zyh.iclass.service.IUserService;
import org.zyh.iclass.util.MailUtil;

import net.coobird.thumbnailator.Thumbnails;

@Controller
public class Upload {

	private ICollegeService collegeService;
	
	@Inject
	private IUserService userService;


	@Inject
	public void setCollegeService(ICollegeService collegeService) {
		this.collegeService = collegeService;
	}
	
	@RequestMapping("/")
	public  String index() {
		return "redirect:/resources/user/home.jsp";
	}
	
	@RequestMapping("/activatemail")
	public  String hello(HttpServletRequest request,Model model) throws IOException, AddressException, MessagingException, NoSuchAlgorithmException {
		String email = request.getParameter("email");
		String token = request.getParameter("token");
		Long time = System.currentTimeMillis();
		User u = userService.loadByEmail(email);
		UserDTO ud = new UserDTO();
		ud.setMail(email);
		if(u!=null) {
			ud.setEmail(1);
			if(u.getStatus()==0&&u.getActivateTime()!=1) {
				if(u.getActivateTime()<time) {
					//过期激活失败
					u.setActivateTime(Long.parseLong("-1"));
					//重新发送激活邮件
					u = MailUtil.activateMail(u);
					//重新设置了过期时间和token
					userService.updateUser(u);
					
					ud.setTime(-1);
					model.addAttribute("user", JsonUtil.toJson(ud));
					//resp.getWriter().write(JsonUtil.toJson(u));
				} else if (u.getActivateTime()>time){
					//在时间内
					u.setActivateTime(Long.parseLong("1"));
					ud.setTime(1);
					if(u.getToken().equals(token)) {
						//在时间内且激活码通过，激活成功
						u.setStatus(1);
						u.setCreateDate(new Date());
						//重新设置token防止被禁用的用户利用激活
						u.setToken(token.replace("1", "c"));
						u.setType("student");
						userService.updateUser(u);
						
						ud.setToken(1);
						ud.setStatus(1);
						model.addAttribute("user", JsonUtil.toJson(ud));
						//resp.getWriter().write(JsonUtil.toJson(u));
					} else {
						//在时间内并且激活码错误
						ud.setToken(-1);
						model.addAttribute("user", JsonUtil.toJson(ud));
					}
				}
				//u.getStatus()!=1判断结束
			} else if(u.getStatus()==1) {
				//已经被激活的重复点链接
				ud.setStatus(-1);
				model.addAttribute("user", JsonUtil.toJson(ud));
			}
		//u为空
		} else if(u==null) {
			ud.setEmail(-1);
			model.addAttribute("user", JsonUtil.toJson(ud));
		}
		return "activatemail";
	}
	
	@RequestMapping("/upload")
	public void upload(MultipartFile Filedata,HttpServletResponse resp) throws IOException {
		resp.setContentType("text/plain;charset=utf-8");
		AjaxObj ao = new AjaxObj();
		resp.getWriter().write(JsonUtil.toJson(ao));
		String realPath = SystemContext.getRealPath();
		File f = new File(realPath+"/upload/"+Filedata.getOriginalFilename());
		if(f.exists()){
			//如果存在就替换
			f.delete();
		}
		Filedata.transferTo(f);
	}
	
	@RequestMapping("/uploadCollege")
	public void uploadCollege(MultipartFile Filedata,HttpServletRequest request) throws IOException {
		int cid = Integer.parseInt(request.getParameter("cid"));
		College c = collegeService.loadCollege(cid);
/*		String suffix = FilenameUtils.getExtension(Filedata.getOriginalFilename());
		String fn = newName+"."+suffix;*/
		if(c!=null) {
			String oldImg = c.getImgName();
			String fn = cid+Filedata.getOriginalFilename();
			String realPath = SystemContext.getRealPath();
			//删除旧图片
			File oi = new File(realPath+"/resources/collegeIco/"+oldImg);
			if(oi.exists()){
				//如果存在就替换
				oi.delete();
			}
			File f = new File(realPath+"/resources/collegeIco/"+fn);
			if(f.exists()){
				//如果存在就替换,只能处理重复的上传
				f.delete();
			}
			Thumbnails.of(Filedata.getInputStream())
			.size(70, 70)
			.toFile(f);
			//Filedata.transferTo(f);
			c.setImgName(fn);
			collegeService.addImg(c);
		}
	}
	//上传头像
	@RequestMapping("/uploadAvatar")
	public void uploadAvatar(MultipartFile Filedata,HttpServletRequest request) throws IOException, NoSuchAlgorithmException {
		int uid = Integer.parseInt(request.getParameter("uid"));
		User u = userService.load(uid);
		String oa = u.getTempAvatar();
		String soa = "s"+u.getTempAvatar();
		String realPath = SystemContext.getRealPath();
		if(oa!=null) {
			File of = new File(realPath+"/resources/avatar/"+oa);
			File sof = new File(realPath+"/resources/smAvatar/"+soa);
			if(of.exists()){
				//如果存在删除
				of.delete();
			}
			if(sof.exists()){
				//如果存在删除
				sof.delete();
			}
		}
		//将要存储的文件名1xxx.png
		String fn = uid+Filedata.getOriginalFilename();
		String fsn = "s"+uid+Filedata.getOriginalFilename();
		//String suffix = FilenameUtils.getExtension(Filedata.getOriginalFilename());
		//String fn = uid+"."+suffix;//1.png
		File f = new File(realPath+"/resources/avatar/"+fn);
		File fs = new File(realPath+"/resources/smAvatar/"+fsn);
		if(f.exists()){
			//如果存在就替换,只能处理重复的上传
			f.delete();
		}
		Thumbnails.of(Filedata.getInputStream())
		.size(150, 150)
		.toFile(f);
		if(fs.exists()){
			//如果存在就替换,只能处理重复的上传
			fs.delete();
		}
		Thumbnails.of(Filedata.getInputStream())
		.size(40, 40)
		.toFile(fs);
		//
		u.setTempAvatar(fn);
		userService.updateUser(u);
	}
}
