<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<div class="modal fade" id="modal-login" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
	        <h4 class="modal-title">登录/注册</h4>
	      </div>
	      <div class="modal-body">
			<div class="login-box" id="login-box">
				<div id="login" class="login">
				<h1 class="login-title">登录iClass</h1>
					<div class="login-body">
						<input id='login-email' type="text" class="register-input input-he"  placeholder="用户名/邮箱">
						<input id='login-password' type="password" class="register-input input-he"  placeholder="密码">
						<div id="err-container" class="err-container">
							<div id="login-err" class="login-err">请输入正确的帐号或密码</div>
						</div>
						<input id="login-remember" type="checkbox"/><span class="remember-me">记住我</span>
						<button id='login-btn' type="button" class="btn btn-primary login-btn">登录</button>
					</div>
				</div>
				<div class="mod-footer">
					<button type="button" class="btn btn-link underline">忘记密码?</button>
					<span class="text-muted">还没有账号?</span>
					<button id="to-reg" type="button" class="btn btn-link underline">立即注册</button>
				</div>
			</div>
			   <div class="register-box" id="register-box">
					<h1 class="reg-title">注册新用户</h1>
					<div class="register-body">
						<input id='reg-email' type="text" class="register-input input-he" placeholder="邮箱" value="952981465@qq.com">
						<div class="reg-tips">请输入你常用的电子邮箱,作为你的账号</div>
						<div class="reg-err">邮箱格式不正确</div>
						<div id="reg-exist" class="reg-err">该邮箱已经被注册了</div>
						<div id="reg-ac" class="reg-tips">已发激活邮件至该邮箱,快去激活吧</div>
						<div id="reg-red" class="reg-tips" style="color:red">被禁用的邮箱账号!!请联系管理员!!!</div>
						<input id='reg-username' type="text" class="register-input input-he" placeholder="用户名" value="test">
						<div class="reg-tips">请输入一个1-14字符的用户名,可用于登录</div>
						<div class="reg-err">用户名不符合规则</div>
						<div id="user-exist" class="reg-err">该用户名已经被注册了</div>
						<input id='reg-phone' type="text" class="register-input input-he"  placeholder="电话" value="12345678901">
						<div class="reg-tips">请输入你的电话号码,或者短号</div>
						<div class="reg-err">电话格式不正确</div>
						<input id='reg-pwd' type="password" class="register-input input-he"  placeholder="密码" value="112233">
						<div class="reg-tips">请输入6-16个字符,区分大小写</div>
						<div class="reg-err">密码不符合规则</div>
						<input id='reg-re-pwd' type="password" class="register-input input-he"  placeholder="确认密码" value="112233">
						<div class="reg-tips">请再次输入密码，记住你的密码哦</div>
						<div class="reg-err">两次密码不一致</div>
						<button id='reg-btn' type="button" class="btn btn-primary reg-btn">注册</button>
						<button id="to-login" type="button" class="btn btn-link underline">已有账号></button>
					</div>
						<div class="reg-footer"></div>
				</div>
				
				<div class="sended-box none" id="sended-box">
					<h1 class="reg-title">激活邮件已发送</h1>
					<div class="register-body">
						<p>激活邮件已发送到&nbsp;<strong id="to-email" class="text-primary"></strong>&nbsp;请前往邮箱激活账号<br>
					</div>
						<div class="reg-footer">
						<span class="text-muted">已经激活?</span>
						<button id="go-login" type="button" class="btn btn-link underline">登录iClass></button>
						</div>
				</div>
	      </div>
	     </div>
	   </div>
	</div>
	
	<div class="modal fade" id="modal-login-back" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
	        <h4 class="modal-title">后台登录</h4>
	      </div>
	      <div class="modal-body">
			<div class="login-box" id="login-box">
				<div id="login" class="login">
				<h1 class="login-title">后台登录</h1>
					<div class="login-body">
						<input id='back-username' type="text" class="register-input input-he"  placeholder="用户名">
						<input id='back-password' type="password" class="register-input input-he"  placeholder="密码">
						<div id="err-container" class="err-container">
							<div id="login-err" class="login-err">请输入正确的帐号或密码</div>
						</div>
						<button id='login-back-btn' type="button" class="btn btn-primary login-btn">登录</button>
					</div>
				</div>
			</div>
	      </div>
	     </div>
	   </div>
	</div>

