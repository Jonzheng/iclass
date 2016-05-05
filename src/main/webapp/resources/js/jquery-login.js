(function($){
	initLogin = function(){
		//登录按钮
		$("#login-btn").on("click",function(){
			var en = $("#login-email").val();
			var p = $("#login-password").val();
			if(en!=""&&p.length>5) {
				if(isMail($("#login-email"))) {
					var u = {"email":en,"password":p};
					testLogin(u);
				}
				else if(en.length<15) {
					var u = {"username":en,"password":p};
					testLogin(u);
				}
			} else shake("login-err");
		})
		$("#to-reg").on("click",function(){
			initReg();
		})
		$("#to-login").on("click",function(){
			initLog();
		})
		$("#sended-box").on("click","#go-login",function(){
			$("#sended-box").hide(0);
			$("#login-box").fadeIn(300);
		});
		
		$("#menu-login").on("click",function(e){
			e.preventDefault();
			initLog();
			$("#modal-login").modal("show");
		})
		
		//注册验证提示
		$(".register-body").find("input").on("focusin",function(){
			errHide($(this));
			tipsShow($(this));
		});
		$("#reg-email").on("focusin",function(){
			existHide($(this));
			acHide($(this));
			$("#reg-red").hide(0);
		});
		$("#reg-username").on("focusin",function(){
			userHide($(this));
		});
		$(".register-body").find("input").on("focusout",function(){
			var str = $(this).val().trim();
			if(str!="") {
				tipsHide($(this));
			}
		});
		//注册验证输入错误
		$("#reg-email").on("focusout",function(){
			if(isEmail($(this))) {
				isExist($(this));
			}
		});
		$("#reg-username").on("focusout",function(){
			isUsername($(this));
		});
		$("#reg-phone").on("focusout",function(){
			isPhone($(this));
		});
		$("#reg-pwd").on("focusout",function(){
			isBetween($(this),6,16);
		});
		$("#reg-re-pwd").on("focusout",function(){
			equalTo($(this),$("#reg-pwd"));
		});
		//JS获取n至m随机整数
		function randomNum(n,m){
		    var c = m-n+1;  
		    return Math.floor(Math.random() * c + n);
		}
		//注册按钮
		$("#reg-btn").on("click",function(e){
			//若为空则提示
			$(".register-body").find("input").each(function(e){
				if($(this).val().trim()=="") {
					$(this).next().show(300);
				}
			});
			var pass = 0;
			$(".register-body").find("input").each(function(e){
				$(this).focusout();
				pass +=$(this).data("v");
			});
			
			if(pass==5) {
				var e = $("#reg-email").val().trim();
				var nn = $("#reg-username").val().trim();
				var ph = $("#reg-phone").val().trim();
				var pw = $("#reg-pwd").val().trim();
				var ar = "m_"+randomNum(1,6)+".png";
				var u = {"email":e,"nickname":nn,"username":nn,"phone":ph,"password":pw,avatar:ar};
				sendMail = function(u) {
					var ac = $("#reg-ac").data("v");
					var exist = $("#reg-exist").data("v");
					var username = $("#user-exist").data("v");
					if(ac==1&&exist==1&&username==1) {
						$("#reg-btn").attr("disabled","disabled");
						$("#reg-btn").text("正在发送激活邮件...");
						userService.register(u,function(use){
							if(use==null) {
								//成功注册，发送完激活邮件
								$("#register-box").hide(0);
								$("#sended-box").show(300);
								$("#to-email").html(e);
							}
						});
					}
				}
			    function _sendMail(u) {  
			        return function()  
			        {  
			        	sendMail(u);  
			        }  
			    }
				setTimeout(_sendMail(u),100)

			} //否则pass!=5
			
		});
	}
	testLogin = function(u){
		userService.login(u,function(lu){
			if(lu!=null) {
				if(lu.password=="1"&&lu.status==1) {
					//登录成功
					//console.log(lu);
					//存储菜单小头像
					$.cookie('sm_img',"../smAvatar/s"+lu.avatar);
					$.cookie('old_img',lu.tempAvatar);
					initLogined();
					//制作饼干
					$.cookie('loginUser',lu.username);
					$.cookie('userId',lu.id);
					if($("#login-remember").is(":checked")){
						$.cookie('sm_img',"../smAvatar/s"+lu.avatar,{ expires: 7 });
						$.cookie('old_img',lu.tempAvatar,{ expires: 7 });
						$.cookie('loginUser',lu.username,{ expires: 7 });
					}
					// TODO
					
				} else shake("login-err");
			} else shake("login-err");
		});
	}
	initLogined = function(){
		$("#modal-login").modal("hide");
		$("#menu-u-login").remove();
		$("#menu-u-syllabus").clone().appendTo("#top-nav").show();
		$("#menu-u-info").clone().appendTo("#top-nav").show();
		$("#menu-u-avatar").clone().appendTo("#top-nav").show();
		$("#u-avatar").css("background-image","url("+$.cookie('sm_img')+")");
		//---菜单头像点击
		$("#menu-u-avatar").on("click",function(){
			$("#index-box").hide();
			$("#class-box").hide();
			$("#course-box").hide();
			$("#user-box").show();
			var username = $.cookie('loginUser');
			userService.loadByUsername(username,function(lu){
				//console.log(lu)
				//初始化页面个人信息
				var m_img = "../avatar/"+lu.avatar;
				$("#info-avatar").css("background-image","url("+m_img+")");
				$("#info-avatar").data("img",lu.avatar);
				
				$("#info-username").html(lu.username);
				if(lu.nickname!=""||lu.nickname!=null){
					$("#info-nickname").html(lu.nickname);
				} else {
					$("#info-nickname").html(lu.username);
				}
				//初始化联系信息
				initContact(lu);
				studentService.loadByUserId(lu.id,function(stu){
					//console.log(stu)
					//$("#menu-u-avatar").data("stuId",stu.id);
					$.cookie('classId',stu.classId);
					$.cookie('stuId',stu.id);
					initInfo(stu);
					initStudent(stu);
				})
			})
		});
//-------------------------个人信息----------------------------------
		//登录后显示的菜单	
 		$("#basic-info").on("mouseenter",function(){
			$("#person-info-edit").show(100);
			$("#update-pwd").show(200);
			$("#logout").show(300);
		})
		$("#basic-info").on("mouseleave",function(){
			$("#person-info-edit").hide();
			$("#update-pwd").hide();
			$("#logout").hide();
		});
		//班级信息
 		$("#info-class-box").on("mouseenter",function(){
			$("#person-class-edit").show(100);
		})
		$("#info-class-box").on("mouseleave",function(){
			$("#person-class-edit").hide();
		});
 		$("#person-class-edit").on("click",function(){
 			//TODO
 			//初始化
			var id = $("#s-info-id").html();
 			var name = $("#s-info-name").html();
			var mobile = $("#s-info-mobile").html();
			var short = $("#s-info-short").html();
			var qq = $("#s-info-qq").html();
			var doorplate = $("#s-info-doorplate").html();
			
			if(id!="未填写学号") $("#student-id").val(id);
			else $("#student-id").val("");
			if(name!="未填写姓名") $("#student-name").val(name);
			else $("#student-name").val("");
			if(mobile!="未填写手机") $("#student-mobile").val(mobile);
			else $("#student-mobile").val("");
			if(short!="未填写短号") $("#student-short").val(short);
			else $("#student-short").val("");
			if(qq!="未填写QQ") $("#student-qq").val(qq);
			else $("#student-qq").val("");
			if(doorplate!="未填写宿舍") $("#student-doorplate").val(doorplate);
			else $("#student-doorplate").val("");
			
 			$("#s-class-confirm").hide();
 			$("#s-class-cancel").hide();
			$("#s-class-exit").show();
 			$("#class-info-modal").modal("show");
 		})
 		$("#s-class-exit").on("click",function(event){
 			event.preventDefault();
 			$(this).hide();
 			$("#s-class-confirm").show();
 			$("#s-class-cancel").show();
 		})
 		$("#s-class-cancel").on("click",function(event){
 			event.preventDefault();
 			$(this).hide();
 			$("#s-class-confirm").hide();
 			$("#s-class-exit").show();
 		})
 		$("#s-class-confirm").on("click",function(event){
 			event.preventDefault();
 			//TODO 确认退出后
 			$(this).hide();
 			$("#s-class-cancel").hide();
 		})
		//-----
 		$("#info-contact").on("mouseenter",function(){
			$("#person-contact-edit").show(100);
		})
		$("#info-contact").on("mouseleave",function(){
			$("#person-contact-edit").hide();
		});
		//编辑个人信息
		$("#person-info-edit").on("click",function(){
			//隐藏提示
			$("#nickname-err").hide();
			$("#name-err").hide();
			$("#birthday-err").hide();
			$("#sign-err").hide();
			//初始化
			var nickname = $("#info-nickname").html();
			var name = $("#info-name").html();
			var birthday = $("#info-birthday").html();
			
			if(nickname!="未填写昵称") $("#edit-nickname").val(nickname);
			else $("#edit-nickname").val("");
			if(name!="未填写实名") $("#edit-name").val(name);
			else $("#edit-name").val("");
			if(birthday!="未填写生日") $("#edit-birthday").val(birthday);
			else $("#edit-birthday").val("");
			$("#edit-sign").val($("#info-sign").html());
			var sex = $("#info-sex").html();
			if(sex=="男") {
				$("#edit-sex").find("input[id='sex-female']")[0].checked=false;
				$("#edit-sex").find("input[id='sex-female']").closest("div").removeClass("checked");
				//选中
				$("#edit-sex").find("input[id='sex-male']")[0].checked=true;
				//显示选中
				$("#edit-sex").find("input[id='sex-male']").closest("div").addClass("checked");
			}
			else {
				$("#edit-sex").find("input[id='sex-male']")[0].checked=false;
				$("#edit-sex").find("input[id='sex-male']").closest("div").removeClass("checked");
				$("#edit-sex").find("input[id='sex-female']")[0].checked=true;
				$("#edit-sex").find("input[id='sex-female']").closest("div").addClass("checked");
			}
			
			$("#user-modal").modal("show");
		})
		//编辑联系方式
		$("#person-contact-edit").on("click",function(){
			//隐藏提示
			$("#email-err").hide();
			$("#mobile-err").hide();
			$("#qq-err").hide();
			$("#wechat-err").hide();
			//初始化
			var email = $("#c-info-email").html();
			var mobile = $("#c-info-mobile").html();
			var qq = $("#c-info-qq").html();
			var wechat = $("#c-info-wechat").html();
			
			if(email!="未填写邮箱") $("#contact-email").val(email);
			else $("#contact-email").val("");
			if(mobile!="未填写手机") $("#contact-mobile").val(mobile);
			else $("#contact-mobile").val("");
			if(qq!="未填写QQ") $("#contact-qq").val(qq);
			else $("#contact-qq").val("");
			if(wechat!="未填写微信") $("#contact-wechat").val(wechat);
			else $("#contact-wechat").val("");

			$("#contact-modal").modal("show");
		})
		//登出
		$("#logout").on("click",function(e){
			$.cookie('loginUser',"");
			$.cookie('sm_img',"");
			window.location.reload();
			$("#menu-index").trigger("click");
		})
		//可选头像
		$(".opt-avatar").on("click",function(e){
			$(".opt-avatar").removeClass("selected-avatar");
			$(this).addClass("selected-avatar");
			var img = $(this).attr("id");
		})
		//修改头像
		$("#info-avatar-edit").on("click",function(e){
			//初始化
			$("#m_1").data("img","m_1.png");
			$("#m_2").data("img","m_2.png");
			$("#m_3").data("img","m_3.png");
			$("#m_4").data("img","m_4.png");
			$("#m_5").data("img","m_5.png");
			$("#m_6").data("img","m_6.png");
			$("#m_0").data("img",$.cookie('old_img'));
			//当前头像
			var img = $("#info-avatar").data("img");
			$("#m_0").css("background-image","url(../avatar/"+$.cookie('old_img')+")");
			var id = img.substr(0,img.indexOf("."));
			$(".opt-avatar").removeClass("selected-avatar");
			var $cur_ava = $(".avatar-container").find("div[id="+id+"]");
			$cur_ava.addClass("selected-avatar");
			//当前若不是默认头像
			if($cur_ava[0]==undefined){
				$("#m_0").data("img",img);
				$("#m_0").css("background-image","url(../avatar/"+img+")");
				$("#m_0").addClass("selected-avatar");
			}
			$("#avatar-edit-modal").modal("show");
		})
		//头像保存
		$("#avatar-edit-save").on("click",function(){
			var cur_img = $(".avatar-container").find("div[class*='selected-avatar']").data("img");
			var username = $.cookie('loginUser');
			userService.loadByUsername(username,function(lu){
				lu.avatar = cur_img;
				userService.updateUser(lu,function(){
					$.cookie('sm_img',"../smAvatar/s"+lu.avatar);
					$("#info-avatar").data("img",lu.avatar);
					$("#u-avatar").css("background-image","url("+$.cookie('sm_img')+")");
					$("#info-avatar").css("background-image","url(../avatar/"+lu.avatar+")");
					$("#avatar-edit-modal").modal("hide");
				})
			})
		})
		//修改密码
		$("#update-pwd").on("click",function(e){
			//初始化修改密码
			$("#old-pwd").val("");
			$("#new-pwd").val("");
			$("#update-re").val("");
			$("#old-pwd-err").hide();
			$("#new-pwd-err").hide();
			$("#update-re-err").hide();
			//
			$("#old-pwd").on("focusin",function(){
				$("#old-pwd-err").hide(300);
			});
			$("#new-pwd").on("focusin",function(){
				$("#new-pwd-err").hide(300);
			});
			$("#update-re").on("focusin",function(){
				$("#update-re-err").hide(300);
			});
			
			$("#update-pwd-modal").modal("show");
			$("#update-pwd-save").on("click",function(){
				var op = $("#old-pwd").val().trim();
				var np = $("#new-pwd").val().trim();
				var rp = $("#update-re").val().trim();
				//
				if(op==""&&np==""&&rp==""){
					$("#update-pwd-modal").modal("hide");
					return;
				}
				var email = $("#info-email").html();
				var u = {"email":email,"password":op};
				//
				isUNew = function(){
					var len = np.trim().length;
			    	if(len!=0) {
			 	    	 if(len<6||len>16){
			 	    		$("#new-pwd-err").show(200);
			 	    		return false;
			 	    	 } else {
			 	    		$("#new-pwd-err").hide();
			 	    		return true;
			 	    	 }
			    	}
			    	else if(len==0) {
		 	    		$("#new-pwd-err").show(200);
		 	    		return false;
			    	}
				}
		    	//
		    	isURe = function(){
			    	if(rp!="") {
			  	     	if(rp!=np){
			  	     		$("#update-re-err").show(200);
			  	     		return false;
			  	    	 } else {
			  	    		$("#update-re-err").hide();
			  	    		return true;
			  	    	 }
			    	}
			    	else if(rp=="") {
			    		$("#update-re-err").show(200);
		 	    		return false;
			    	}
		    	}
		    	//--
		    	isUNew();isURe();
		    	//
				userService.login(u,function(lu){
					//若旧密码正确
					if(lu.password==1){
						$("#old-pwd-err").hide();
						if(isUNew()&&isURe()){
							lu.password = np;
							userService.updatePassword(lu,function(){
								//console.log("update user success");
								//执行修改
								//$("#logout").trigger("click");
								$.cookie('loginUser',"");
								alert("密码修改成功，请重新登录！")
								window.location.reload();
							});
						}
					}
					else {
						$("#old-pwd-err").show(200);
						
					}
				});
			})
		})
		//---
		$("#m_0").on("mouseenter",function(){
			$(".avatar-edit-upload").show();
		})
		$("#m_0").on("mouseleave",function(){
			$(".avatar-edit-upload").hide();
		})
		//---
		$("#info-avatar").on("mouseenter",function(){
			$("#info-avatar-edit").show();
		})
		$("#info-avatar").on("mouseleave",function(){
			$("#info-avatar-edit").hide();
		})
		//保存个人信息
		$("#info-save").on("click",function(){
			var nickname = $("#edit-nickname").val().trim();
			var name = $("#edit-name").val().trim();
			var birthday = $("#edit-birthday").val().trim();
			var sex = $("#edit-sex").find("input[name='edit-sex']:checked").val();
			var sign = $("#edit-sign").val().trim();
			var username = $.cookie('loginUser');
			if(isInfo(nickname,name,sign,birthday)){
				userService.loadByUsername(username,function(lu){
					//判断是否要更新
					if(nickname!=""&&lu.nickname!=nickname){
						lu.nickname = nickname;
						userService.updateUser(lu,function(){
							//更新昵称
							$("#info-nickname").html(nickname);
						});
					}
					else if(nickname==""){
						$("#info-nickname").html(lu.username);
					}
					//更新学生
	 				studentService.loadByUserId(lu.id,function(stu){
						stu.name = name;
						stu.birthday = birthday;
						stu.sex = sex;
						stu.sign = sign;
						studentService.updateStudent(stu,function(){
							//更新学生信息
							initInfo(stu)
							$("#user-modal").modal("hide");
						});
					});
				});
			}
		})
		//保存学生信息
		$("#student-save").on("click",function(){
			var id = $("#student-id").val().trim();
			var name = $("#student-name").val().trim();
			var mobile = $("#student-mobile").val().trim();
			var short = $("#student-short").val().trim();
			var qq = $("#student-qq").val().trim();
			var doorplate = $("#student-doorplate").val().trim();
			//TODO isStudent验证函数
			var userId = $.cookie('userId');
			if(isStudent(id,name,mobile,short,qq,doorplate)){
				studentService.loadByUserId(userId,function(stu){
					stu.studentId = id;
					stu.name = name;
					stu.mobile = mobile;
					stu.shortMobile = short;
					stu.qqNum = qq;
					stu.doorplate = doorplate;
					
					studentService.updateStudent(stu,function(){
						initStudent(stu);
						$("#class-info-modal").modal("hide");
					})
				})
			}
		});
		//保存联系信息
		$("#contact-save").on("click",function(){
			var email = $("#contact-email").val().trim();
			var mobile = $("#contact-mobile").val().trim();
			var qq = $("#contact-qq").val().trim();
			var wechat = $("#contact-wechat").val().trim();
			
			var username = $.cookie('loginUser');
			if(isContact(email,mobile,qq,wechat)){
				userService.loadByUsername(username,function(lu){
					lu.usedEmail = email;
					lu.mobile = mobile;
					lu.qqNum = qq;
					lu.weChat = wechat;
					userService.updateUser(lu,function(){
						initContact(lu);
						$("#contact-modal").modal("hide");
					})
				})
			}
		});
		//头像上传
		$("#upload-avatar").uploadify({
			'width':25,
			'height':25,
			'fileSizeLimit':'5MB',
			'queueSizeLimit' : 1,
			'buttonText' : '',
			'buttonClass' : 'glyphicon glyphicon-upload avatar-edit-upload',
			'fileTypeExts' : ' *.jpg; *.png',
			'swf':$("#context-path").val()+"/resources/uploadify/uploadify.swf",
			'uploader':"../../uploadAvatar",
			'onUploadStart' : function(file) {
				$(".uploadify-queue-item").hide();
				var uid = $.cookie('userId');
				$("#upload-avatar").uploadify("settings", "formData", {'uid':uid});
			},
	       'onUploadSuccess' : function(file, data, response) {
	    	   var img = $.cookie("userId")+file.name;
	    	   $("#m_0").css("background-image","url(../avatar/"+img+")");
	    	   $("#m_0").data("img",img);
	    	   $.cookie('old_img',img);
	        }
		});
		//$(function () { $('#menu-login').popover('show');});
		function randomNum(n,m){
		    var c = m-n+1;
		    return Math.floor(Math.random() * c + n);
		}
		$("#u-info").on("mouseenter",function(){
			$(this).addClass("u-pointer");
		});
		$("#u-info").on("mouseleave",function(){
			$(this).removeClass("u-pointer");
		});
		$("#u-syllabus").on("mouseenter",function(){
			$(this).addClass("u-pointer");
		});
		$("#u-syllabus").on("mouseleave",function(){
			$(this).removeClass("u-pointer");
		});
		$("#u-avatar").on("mouseenter",function(){
			$(this).addClass("u-pointer");
		});
		$("#u-avatar").on("mouseleave",function(){
			$(this).removeClass("u-pointer");
		});
	}
	//已有账号
	initReg = function() {
		$("#login-box").hide(0);
		$(".register-body").find("input").val("");
		$(".register-body").find("input").removeData("v");
		$(".reg-tips").hide(0);
		$(".reg-err").hide(0);
		$("#reg-btn").text("注册");
		$("#reg-btn").removeAttr("disabled");
		$("#register-box").fadeIn(200);
	}
	initLog = function() {
		$("#register-box").hide(0);
		$(".login-body").find("input").val("");
		$("#login-err").hide(0);
		$("#login-box").fadeIn(200);
	}

	initInfo = function(stu){
		
		if(stu.name!=""&&stu.name!=null){
			$("#info-name").html(stu.name);
		} else {
			$("#info-name").html("未填写实名");
		}
		if(stu.sex!=""&&stu.sex!=null){
			$("#info-sex").html(stu.sex);
		} else {
			$("#info-sex").html("未填写性别");
		}
		if(stu.birthday!=""&&stu.birthday!=null){
			$("#info-birthday").html(stu.birthday);
		} else {
			$("#info-birthday").html("未填写生日");
		}
		if(stu.sign!=null) $("#info-sign").html(stu.sign);
	}
	initStudent = function(stu){
		if(stu.studentId!="") {
			//显示bug不能直接对s-info-email操作样式
			$("#s-info-id").html(stu.studentId).closest("li").css("color",'');
		} else {
			$("#s-info-id").html("未填写学号").closest("li").css("color",'#a94442');
		}
		if(stu.name!="") {
			$("#s-info-name").html(stu.name).closest("li").css("color",'');
		} else {
			$("#s-info-name").html("未填写姓名").closest("li").css("color",'#a94442');
		}
		if(stu.mobile!="") {
			$("#s-info-mobile").html(stu.mobile).closest("li").css("color",'');
		} else {
			$("#s-info-mobile").html("未填写手机").closest("li").css("color",'#a94442');
		}
		if(stu.shortMobile!="") {
			$("#s-info-short").html(stu.shortMobile).closest("li").css("color",'');
		} else {
			$("#s-info-short").html("未填写短号").closest("li").css("color",'#a94442');
		}
		if(stu.qqNum!="") {
			$("#s-info-qq").html(stu.qqNum).closest("li").css("color",'');
		} else {
			$("#s-info-qq").html("未填写QQ").closest("li").css("color",'#a94442');
		}
		if(stu.doorplate!="") {
			$("#s-info-doorplate").html(stu.doorplate).closest("li").css("color",'');
		} else {
			$("#s-info-doorplate").html("未填写宿舍").closest("li").css("color",'#a94442');
		}
	}
	initContact = function(lu){
		if(lu.usedEmail!="") {
			//不能直接对c-info-email操作
			$("#c-info-email").html(lu.usedEmail).closest("li").css("color",'');
		} else {
			$("#c-info-email").html("未填写邮箱").closest("li").css("color",'#a94442');
		}
		if(lu.mobile!="") {
			$("#c-info-mobile").html(lu.mobile).closest("li").css("color",'');
		} else {
			$("#c-info-mobile").html("未填写手机").closest("li").css("color",'#a94442');
		}
		if(lu.qqNum!="") {
			$("#c-info-qq").html(lu.qqNum).closest("li").css("color",'');
		} else {
			$("#c-info-qq").html("未填写QQ").closest("li").css("color",'#a94442');
		}
		if(lu.weChat!="") {
			$("#c-info-wechat").html(lu.weChat).closest("li").css("color",'');
		} else {
			$("#c-info-wechat").html("未填写微信").closest("li").css("color",'#a94442');
		}
	}
	//抖动效果
	function shake(o){
	    var $panel = $("#"+o);
	    $panel.show(0);
	    box_left = 0;
	    //box_left = $panel.css('left');
	    //box_left = ($(window).width() -  $panel.width()) / 2;
	    $panel.css({'left': box_left,'position':'relative'});
	    for(var i=1; 4>=i; i++){
	        $panel.animate({left:box_left-(20-5*i)},30);
	        $panel.animate({left:box_left+(20-5*i)},30);
	    }
	}
})(jQuery);