package org.zyh.iclass.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.zyh.iclass.model.User;
import org.zyh.iclass.service.IUserService;

@Controller
@RequestMapping("resources/user")
public class AdminController {
	
	@Inject
	private IUserService userService;
	
	@RequestMapping(value="/admin/loginBack", method=RequestMethod.POST)
	public String loginBack(String username, String password){
		User u = userService.loginBack(username, password);
		if(u==null){
			return "redirect:/resources/user/home.jsp";
		} else {
			return "admin/admin";
		}
	}
}
