package org.zyh.iclass.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.zyh.iclass.service.IRoleService;
import org.zyh.iclass.service.IUserService;

@Controller
@RequestMapping("admin/user")
public class UserController {
	private IUserService userService;
	private IRoleService roleService;
	
	public IUserService getUserService() {
		return userService;
	}
	public void setUserService(IUserService userService) {
		this.userService = userService;
	}

	public IRoleService getRoleService() {
		return roleService;
	}

	public void setRoleService(IRoleService roleService) {
		this.roleService = roleService;
	}

	
	public String list() {
		return "user/list";
	}
}
