<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<div id="user-box" class="user-box">
	<div class="modal fade" id="user-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">>
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
	        <h4 class="modal-title">编辑信息</h4>
	      </div>
	      <div id="nickname-err"class="edit-err">用户名长度不能超过14个字符</div>
	      <div id="name-err"class="edit-err">验证君表示不允许你叫这个名字0.0</div>
	      <div id="birthday-err"class="edit-err">生日格式不正确</div>
	      <div id="sign-err"class="edit-err">简介长度不能超过180个字符</div>
	      
	      <div class="edit-username">
			<span>用户名 ：</span>
			<span style="color: #666666;" id="info-username"></span>
			</div>
	      <div id="edit-body" class="modal-body">   <!-- body -->
			<div class="edit-input-container">
				<span>昵称：</span>
				<input id="edit-nickname" type="text" placeholder="随时可以更改" class="info-input input-sm">
			</div>
			<div class="edit-input-container">
				<span id="">姓名：</span>
				<input id="edit-name" type="text" placeholder="仅在班级显示" class="info-input input-sm">
			</div>
			<div class="edit-input-container">
				<span id="">生日：</span>
				<input id="edit-birthday" type="text" placeholder="格式：2015-10-1" class="info-input input-sm" value="1992-11-11">
			</div>
			<div id="edit-sex" class="edit-input-container">
				<span id="">性别：</span>
				<input type="radio" id="sex-male"name="edit-sex" value="男"/>&nbsp;<span>男</span>&nbsp;&nbsp;
				<input type="radio" id="sex-female"name="edit-sex" value="女"/>&nbsp;<span>女</span>
			</div>
			<div class="sign-box">
				<div class="sign-float">简介：</div>
				<div class="sign-float sign-width">
					<textarea id="edit-sign"class="form-control" rows="3"></textarea>
				</div>
			</div>
	      </div>
 	      <div class="modal-footer">
	        <button id="info-cancel"type="button" class="btn btn-default" data-dismiss="modal">取消</button>
	        <button id="info-save" type="button" class="btn btn-primary">保存</button>
	      </div>
	    </div><!-- /.modal-content -->
	  </div><!-- /.modal-dialog -->
	</div><!-- /.modal -->
	
	<div class="modal fade" id="update-pwd-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">>
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
	        <h4 class="modal-title">修改密码</h4>
	      </div>
		  <div class="edit-username">
			<span>账号 : </span>
			<span style="color: #666666;" id="info-email">952981465@qq.com</span>
		  </div>
		  <div class="update-pwd-container">
			  <span>旧密码 : </span>
			  <input id='old-pwd' type="password" class="register-input input-he" placeholder="输入旧密码">
			  <div class="pwd-err" id="old-pwd-err" >旧密码不正确</div>
		  </div>
		  <div class="update-pwd-container">
			  <span>新密码 : </span>
			  <input id='new-pwd' type="password" class="register-input input-he" placeholder="输入6-16个字符作为新密码,区分大小写">
			  <div class="pwd-err" id="new-pwd-err" >新密码不符合规则</div>
		  </div>
		  <div class="update-pwd-container">
			  <span>新密码 : </span>
			  <input id='update-re' type="password" class="register-input input-he" placeholder="再次输入新密码">
			  <div class="pwd-err boeder-b" id="update-re-err" >两次密码不一致</div>
		  </div>
	      <div class="modal-footer">
	        <button id="update-pwd-cancel"type="button" class="btn btn-default" data-dismiss="modal">取消</button>
	        <button id="update-pwd-save" type="button" class="btn btn-primary">确认</button>
	      </div>
	    </div><!-- /.modal-content -->
	  </div><!-- /.modal-dialog -->
	</div><!-- /.modal -->
	
	<div class="modal fade" id="avatar-edit-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">>
	  <div class="modal-dialog dialog-width">
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
	        <h4 class="modal-title">更换头像</h4>
	      </div>
	      <div class="avatar-container">
		    <div id="m_1" class="info-avatar opt-avatar"></div>
		    <div id="m_2" class="info-avatar opt-avatar"></div>
		    <div id="m_3" class="info-avatar opt-avatar"></div>
		    <div id="m_4" class="info-avatar opt-avatar"></div>
		    <div id="m_5" class="info-avatar opt-avatar"></div>
		    <div id="m_6" class="info-avatar opt-avatar"></div>
		    <div id="m_0" class="info-avatar opt-avatar">
		    <input id="context-path" type="hidden" value="<%=request.getContextPath()%>"/>
			<input id="upload-avatar" type="file" value="">
		    </div>
		  </div>
	      <div class="modal-footer">
	        <button id="avatar-edit-cancel" type="button" class="btn btn-default" data-dismiss="modal">取消</button>
	        <button id="avatar-edit-save" type="button" class="btn btn-primary">保存</button>
	      </div>
	    </div><!-- /.modal-content -->
	  </div><!-- /.modal-dialog -->
	</div><!-- /.modal -->
	
	<div class="modal fade" id="class-info-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">>
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
	        <h4 class="modal-title">班级信息</h4>
	      </div>
	      
	      <div id="s-id-err"class="edit-err">别逗了,学号怎么可能这么长0.0</div>
	      <div id="s-name-err"class="edit-err">叫你爸爸帮你改个名字吧...</div>
	      <div id="s-mobile-err"class="edit-err">有这么长的手机号码?orz</div>
	      <div id="s-short-err"class="edit-err">短号?</div>
	      <div id="s-qq-err"class="edit-err">腾讯是你家开的吗?</div>
	      <div id="s-doorplate-err"class="edit-err">字数不允许</div>
	      
		<div id="info-class-edit" class="info-class-edit">
			<div id="class-pic" class="class-pic" style="background-image: url('../collegeIco/1hzu-1.png')"></div>
			<div class="class-desc">
			<h4 class="text-primary">
			<small class="text-primary">
			<span id="l-grade">2012级</span>
			<span>—</span>
			</small>
			<span id="l-cna">软件工程2班</span>
			</h4>
			<p class="text-muted">
			班主任:
			<span id="l-teacher">吕布</span>
			  班长:
			<span id="l-monitor">貂蝉他爹</span>
			</p>
			</div>
			<div class="btn-div">
			   <a id="s-class-confirm" class="class-btn none" href="#">确认退出</a>
			   <a id="s-class-cancel" class="class-btn none" href="#">取消</a>
			   <a id="s-class-exit" class="class-btn none" href="#">退出班级</a>
			</div>
		</div>
	      <div id="class-info-edit" class="modal-body">   <!-- body -->
			<div class="contact-input-container">
				<span>学号：</span>
				<input id="student-id" type="text" placeholder="学号" class="contact-input input-sm">
			</div>
			<div class="contact-input-container">
				<span id="">姓名：</span>
				<input id="student-name" type="text" placeholder="姓名" class="contact-input input-sm">
			</div>
			<div class="contact-input-container">
				<span id="">手机：</span>
				<input id="student-mobile" type="text" placeholder="手机号码" class="contact-input input-sm">
			</div>
			<div class="contact-input-container">
				<span id="">短号：</span>
				<input id="student-short" type="text" placeholder="短号" class="contact-input input-sm">
			</div>
			<div class="contact-input-container">
				<span id="">QQ：</span>
				<input id="student-qq" type="text" placeholder="QQ号码" class="contact-input input-sm">
			</div>
			<div class="contact-input-container">
				<span id="">宿舍：</span>
				<input id="student-doorplate" type="text" placeholder="宿舍" class="contact-input input-sm">
			</div>
	      </div>
 	      <div class="modal-footer">
	        <button id="student-cancel"type="button" class="btn btn-default" data-dismiss="modal">取消</button>
	        <button id="student-save" type="button" class="btn btn-primary">保存</button>
	      </div>
	    </div><!-- /.modal-content -->
	  </div><!-- /.modal-dialog -->
	</div><!-- /.modal -->
	
	<div class="modal fade" id="contact-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">>
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
	        <h4 class="modal-title">联系方式</h4>
	      </div>
	      <div id="email-err"class="edit-err">请输入正确的邮箱格式</div>
	      <div id="mobile-err"class="edit-err">请正确输入手机号码</div>
	      <div id="qq-err"class="edit-err">请正确输入QQ号码</div>
	      <div id="wechat-err"class="edit-err">请正确输入微信账号</div>
	      
	      <div class="edit-username">
			<span>用户名 ：</span>
			<span style="color: #666666;" id="info-username"></span>
			</div>
	      <div id="edit-body" class="modal-body">   <!-- body -->
			<div class="contact-input-container">
				<span>邮箱：</span>
				<input id="contact-email" type="text" placeholder="常用邮箱" class="contact-input input-sm">
			</div>
			<div class="contact-input-container">
				<span id="">手机：</span>
				<input id="contact-mobile" type="text" placeholder="手机号码" class="contact-input input-sm">
			</div>
			<div class="contact-input-container">
				<span id="">QQ：</span>
				<input id="contact-qq" type="text" placeholder="QQ号码" class="contact-input input-sm">
			</div>
			<div class="contact-input-container">
				<span id="">微信：</span>
				<input id="contact-wechat" type="text" placeholder="微信账号" class="contact-input input-sm">
			</div>
	      </div>
 	      <div class="modal-footer">
	        <button id="contact-cancel"type="button" class="btn btn-default" data-dismiss="modal">取消</button>
	        <button id="contact-save" type="button" class="btn btn-primary">保存</button>
	      </div>
	    </div><!-- /.modal-content -->
	  </div><!-- /.modal-dialog -->
	</div><!-- /.modal -->
	
	<div id="basic-info" class="basic-info">
	<div class="edit-box">
		<i id="person-info-edit" class="glyphicon glyphicon-edit person-info-edit"></i>
		<i id="update-pwd" class="glyphicon glyphicon-cog person-info-edit"></i>
		<i id="logout" class="glyphicon glyphicon-log-out person-info-edit"></i>
	</div>
		<dl id="info-avatar" class="info-avatar">
			<dt><span id="info-avatar-edit"class="glyphicon glyphicon-edit info-avatar-edit"></span></dt>
		</dl>
		<dl id='info-cmd' class="person-info">
			<dt class="username-box"><span id="info-nickname"class="info-nickname">Ezio</span>
			</dt>
			<dd class="person-detail">
<!-- 				惠州学院<span>|</span>
				计算机科学系<span>|</span>
				软件工程<span>|</span> -->
				<span id="info-name"></span><span class="split">|</span>
				<span id="info-sex"></span><span class="split">|</span>
				<span id="info-birthday"></span><span class="split">|</span>
			</dd>
			<dd id="info-sign"class="person-sign"></dd>
		</dl>
	</div>
	<div id="persion-section" class="persion-section">
		<div id="info-class-box" class="info-class-box">
			<div class="edit-box">
				<i id="person-class-edit" class="glyphicon glyphicon-edit person-contact-edit"></i>
			</div>
			<h3>我的班级</h3>
			<div id="info-class" class="info-class">
				<div id="class-pic" class="class-pic" style="background-image: url('../collegeIco/1hzu-1.png')"></div>
				<div class="class-desc">
				<h4 class="text-primary">
				<small class="text-primary">
				<span id="l-grade">2012级</span>
				<span>—</span>
				</small>
				<span id="l-cna">软件工程2班</span>
				</h4>
				<p class="text-muted">
				班主任:
				<span id="l-teacher">吕布</span>
				  班长:
				<span id="l-monitor">貂蝉</span>
				</p>
				</div>
			</div>
			<div id="" class="mod-student">
				<h3 class="h33">个人信息</h3>
				<ul id="c-info-content">
					<li>学号：<span id="s-info-id" title="1214080611236">1214080611236</span></li>
					<li>姓名：<span id="s-info-name" title="郑宇航">郑宇航</span></li>
					<li>宿舍：<span id="s-info-doorplate" title="16#C705">16#C705</span></li>
					<li>手机：<span id="s-info-mobile" title="112233445566">112233445566</span></li>
					<li>短号：<span id="s-info-short" title="665544">665544</span></li>
					<li>QQ：<span id="s-info-qq" title="99887766">99887766</span></li>
				</ul>
			</div>
		</div>
		<div id="info-course-box"class="tags info-class-box">
			<h3>我的课程</h3>
			<div class="tags clear-fix">
				<div class="tag"><span>jQuery实战</span></div>
				<div class="tag"><span>java编程思想</span></div>
				<div class="tag"><span>lucene实战</span></div>
				<div class="tag"><span>程序员的数学</span></div>
				<div class="tag"><span>网页安全</span></div>
				<div class="tag"><span>spring实战</span></div>
				<div class="tag add-tag"><span>+</span></div>
			</div>
		</div>
		<div id="info-contact" class="mod-contact">
			<div class="edit-box">
				<i id="person-contact-edit" class="glyphicon glyphicon-edit person-contact-edit"></i>
			</div>
			<h3 class="h33">
			联系方式
			<!-- <a class="privacy" href="#" onclick="javascript:window.open('https://my.csdn.net/my/account/privacy','_blank')">仅自己可见</a> -->
			<a class="privacy" href="#">仅自己可见</a>
			</h3>
			<ul id="c-info-content">
				<li>电子邮箱：<span id="c-info-email" title="zhengzran@163.com"></span></li>
				<li>手机号码：<span id="c-info-mobile" title="15018879908"></span></li>
				<li>QQ号码：<span id="c-info-qq" title="952981465"></span></li>
				<li>微信号：<span id="c-info-wechat" title="zran2013"></span></li>
			</ul>
		</div>
	</div>
</div>
