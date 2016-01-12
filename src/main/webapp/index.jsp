<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jquery-1.11.3.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/icheck.min.js"></script>
    <link href="<%=request.getContextPath()%>/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/resources/css/blue.css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/resources/css/index-style.css" rel="stylesheet">
    <script type="text/javascript">
    $(function(){
		$('input').iCheck({
		    checkboxClass: 'icheckbox_square-blue',
		    radioClass: 'iradio_square-blue',
		    increaseArea: '50%'
		});
		$("#login-btn").on("click",function(){
			shake("err-container");
		})
		$("#to-reg").on("click",function(){
			$("#login-box").hide();
			$("#register-box").fadeIn(200);
		})
		$("#to-login").on("click",function(){
			$("#register-box").hide();
			$("#login-box").fadeIn(200);
		})
		//抖动效果
		function shake(o){
		    var $panel = $("#"+o);
		    box_left = 0;
		    //box_left = $panel.css('left');
		    //box_left = ($(window).width() -  $panel.width()) / 2;
		    $panel.css({'left': box_left,'position':'relative'});
		    for(var i=1; 4>=i; i++){
		        $panel.animate({left:box_left-(20-5*i)},30);
		        $panel.animate({left:box_left+(20-5*i)},30);
		    }
		}
    })
    </script>
<title>登录/注册页面</title>
</head>
<body>
	<div class="container">
	
	<div id="index-box" class="index-box">
	<div id="reg-login" class="reg-login">
		<div class="register-box" id="register-box">
				<h1 class="hidden-xs">注册新用户</h1>
				<div class="register-body">
					<input id='in-monitor' type="text" class="create-input input-he"  placeholder="邮箱">
					<div class="validate reg-tips">请输入你常用的电子邮箱,作为你的账号</div>
					<input id='in-monitor' type="text" class="create-input input-he" placeholder="昵称">
					<div class="validate reg-tips">请输入一个2-14字符的昵称,可以随时修改</div>
					<input id='in-monitor' type="text" class="create-input input-he"  placeholder="电话">
					<div class="validate reg-tips">请输入你的电话号码,或者短号</div>
					<input id='in-monitor' type="password" class="create-input input-he"  placeholder="密码">
					<div class="validate reg-tips">请输入6-16个字符,区分大小写</div>
					<input id='in-monitor' type="password" class="create-input input-he"  placeholder="确认密码">
					<div class="validate reg-tips">请再次输入密码，记住你的密码哦<br></div>
					<button id='reg-btn' type="button" class="btn btn-primary reg-btn">注册</button>
					<button id="to-login" type="button" class="btn btn-link underline">已有账号></button>
				</div>
					<div class="mod-footer"></div>
			</div>
			<div class="login-box" id="login-box">
				<div id="login" class="login">
				<h1 class="hidden-xs">登录iClass</h1>
					<div class="login-body">
						<input id='in-monitor' type="text" class="create-input input-he"  placeholder="邮箱">
						<input id='in-monitor' type="password" class="create-input input-he"  placeholder="密码">
						<div id="err-container" class="err-container">
							<div id="login-err" class="login-err">请输入正确的帐号或密码</div>
						</div>
						<input type="checkbox"/><span class="remember-me">记住我</span>
						<button id='login-btn' type="button" class="btn btn-primary login-btn">登录</button>
					</div>
				</div>
				<div class="mod-footer">
					<button type="button" class="btn btn-link underline">忘记密码?</button>
					<span class="text-muted">还没有账号?</span>
					<button id="to-reg" type="button" class="btn btn-link underline">立即注册</button>
				</div>
			</div>
		</div>
		</div>
		</div>
</body>
</html>