(function($){
	     //----通过全部验证条件----
	isValidate = function (seletor) {
	    	 var str="";
	    	 $(seletor).find(".validate").each(function(){
	    		 str+=$(this).html();
	    	 })
	    	 if(str.trim()=="") {
	    		 return true;
	    	 } else {
	    		 return false;
	    	 	}
	     }
	
		tipsShow = function($input){
			$input.data("v",0);
			$input.next().show(300);
		}
		tipsHide = function($input){
			$input.data("v",1);
			$input.next().hide(100);
		}
		errHide = function($input){
			$input.data("v",1);
			$input.next().next().hide(100);
		}
		errShow = function($input){
			$input.data("v",0);
			$input.next().next().show(300);
		}
		//是否存在邮箱
		existShow = function() {
			$("#reg-exist").data("v",0);
			$("#reg-exist").show(300);
		}
		existHide = function() {
			$("#reg-exist").data("v",1);
			$("#reg-exist").hide(0);
		}
		//是否已经发送激活邮件
		acShow = function() {
			$("#reg-ac").data("v",0);
			$("#reg-ac").show(300);
		}
		acHide = function() {
			$("#reg-ac").data("v",1);
			$("#reg-ac").hide(0);
		}
		//是否存在用户名
		userShow = function() {
			$("#user-exist").data("v",0);
			$("#user-exist").show(300);
		}
		userHide = function() {
			$("#user-exist").data("v",1);
			$("#user-exist").hide(0);
		}
	
	
	     cleanModal = function() {
	    	$(".modal-body").find("input[type!='radio']").val("");
	    	$(".modal-body").find(".validate").html("");
	    }
	     //验证格式函数
	     isNull = function (str,input) {
	    	 if(str.trim()==""){
	    		 $(input).html("此项不能为空");
	    	 } else {
	    		$(input).html("");
	    	 }
	     }
  		 getStrLength = function (str) {  
		     var cArr = str.match(/[^\x00-\xff]/ig);  
		     return str.length + (cArr == null ? 0 : cArr.length*2);
		 }
	     isShort = function (str,strShort,input) {
	    	 isNull(str,input);
	    	 var len = getStrLength(str.trim());
	    	 if(str.trim()!="") {
	    		if(len>strShort) {
	    			 $(input).html("字符不能有这么长哦");
	    		} else {
	    			$(input).html("");
	    		}
	    	 }
	     }
	     isBetween = function ($input,min,max) {
	    	var len = $input.val().trim().length;
	    	if(len!=0) {
	 	    	 if(len<min||len>max){
	 	    		errShow($input);
	 	    	 } else {
	 	    		errHide($input);
	 	    	 }
	    	}
		 }
	     isLong = function (str,strLong,$input) {
	    	if(str.trim()!="") {
		    	 if(str.trim().length<=strLong){
		    		$input.show(300);
		    	 } else {
		    		$input.hide(100);
		    	 }
	    	}
	     }
	     isExist = function($input) {
			//判断是否存在邮箱
    		userService.loadByEmail($input.val().trim(),function(u){
    			existHide();
    			acHide();
    			if(u!=null) {
    				if(u.status==1) {
    					existShow();
    				}
    				if(u.status==0&&u.activateTime!=1) {
    					acShow();
    				}
    				if(u.status==0&&u.activateTime==1) {
    					$("#reg-exist").data("v",0);
    					$("#reg-red").show(300);
    				}
    			}
    		});
	     }
	     isUsername = function($input) {
	    	//是否符合规则
	    	var str = $input.val().trim();
	    	if(str!="") {
	 	        var reg = /(\w{1,})|([\u4e00-\u9fa5]{1,})/;
	 	        if(!reg.test(str)||str.length>14){
	 	        	errShow($input);
	 	        }else{
	 	        	errHide($input);
					//判断用户名是否存在
		    		userService.loadByUsername(str,function(u){
		    			userHide();
		    			if(u!=null) {
		    				userShow();
		    			}
		    		});
	 	        }   
		    }
		}
	    isEmail = function ($input) {
	    	var str = $input.val().trim();
	    	if(str!="") {
	  	     	var reg = /^\w{3,}@\w+(\.\w+)+$/;
	  	     	if(!reg.test(str)){  
	  	     		errShow($input);
	  	    	 } else {
	  	    		errHide($input);
	  	    		return true;
	  	    	 }
	    	}
	    }
	    isMail = function ($input) {
	    	var str = $input.val().trim();
	    	if(str!="") {
	  	     	var reg = /^\w{3,}@\w+(\.\w+)+$/;
	  	     	if(!reg.test(str)){  
	  	    	 } else {
	  	    		return true;
	  	    	 }
	    	}
	    }
	    isPhone = function ($input){
	    	var str = $input.val().trim();
	    	if(str!="") {
	    		var reg = /^(\+\d{2,3}\-)?\d{11}$/;   
	 	        if(!reg.test(str)){   
	 	        	errShow($input);
	 	        }else{   
	 	        	errHide($input);
	 	        }
	    	}
	    }
		isBirthday = function(str){
			$("#birthday-err").hide();
			if(str.length>0){
				var reg = /^\d{4}(-|\.)\d{1,2}(-|\.)\d{1,2}$/;
				if(reg.test(str)){
					$("#birthday-err").hide();
					return true;
				} else {
					$("#birthday-err").show();
					return false;
				}
			}
			if(str.length==0) return true;
		}
	    isLegal = function ($input){
	    	var str = $input.val().trim();
	    	if(str!="") {
	 	        var reg = /(\w{1,})|([\u4e00-\u9fa5]{1,})/;
	 	        if(!reg.test(str)||str.length>14){
	 	        	errShow($input);
	 	        }else{
	 	        	errHide($input);
	 	        }   
		    }
	    }
	    equalTo = function ($input,$tar) {
	    	var str = $input.val().trim();
	    	var tar = $tar.val().trim();
	    	if(str!="") {
	  	     	if(str!=tar){
	  	     		errShow($input);
	  	    	 } else {
	  	    		errHide($input);
	  	    	 }
	    	}
	    }
		//个人信息更新验证
		nicknameErr = function(str){
			if(str.length>14){
				$("#nickname-err").show();
				return false;
			}
			else{
				$("#nickname-err").hide();
				return true;
			}
		}
		nameErr = function(str){
			if(str.length>14) {
				$("#name-err").show();
				return false;
			}
			else {
				$("#name-err").hide();
				return true;
			}
		}
		signErr = function(str){
			if(str.length>180) {
				$("#sign-err").show();
				return false;
			}
			else {
				$("#sign-err").hide();
				return true
			}
		}
		isInfo = function(nickname,name,sign,birthday){
			if(nicknameErr(nickname)&&nameErr(name)&&signErr(sign)&&isBirthday(birthday)) return true;
		}
	    //contact--err
		emailErr = function(str){
			if(str=="") return true;
  	     	var reg = /^\w{3,}@\w+(\.\w+)+$/;
  	     	if(!reg.test(str)){
  	     		$("#email-err").show();
  	     		return false;
  	    	 } else {
  	    		$("#email-err").hide();
  	    		return true;
  	    	 }
		}
		mobileErr = function(str){
			if(str=="") return true;
    		var reg = /^(\+\d{2,3}\-)?\d{11}$/;   
 	        if(!reg.test(str)){
 	        	$("#mobile-err").show();
 	        	return false;
 	        }else{
 	        	$("#mobile-err").hide();
 	        	return true;
 	        }
		}
		qqErr = function(str){
			if(str=="") return true;
			if(str.length<2||str.length>12) {
				$("#qq-err").show();
				return false;
			}else {
				$("#qq-err").hide();
				return true;
			}
		}
		weChatErr = function(str){
			if(str=="") return true;
			if(str.length<2||str.length>17) {
				$("#wechat-err").show();
				return false;
			}else {
				$("#wechat-err").hide();
				return true;
			}
		}
		isContact = function(email,mobile,qq,wechat){
			if(emailErr(email)&&mobileErr(mobile)&&qqErr(qq)&&weChatErr(wechat)) return true;
		}
})(jQuery);