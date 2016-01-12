<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-cn">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jquery-1.11.3.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jquery.cookie.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/resources/uploadify/jquery.uploadify.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/icheck.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jquery-pager.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jquery-user.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jquery-login.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jquery-list-class.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jquery-create-class.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jquery-validate.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/dwr/engine.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/dwr/interface/userService.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/dwr/interface/collegeService.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/dwr/interface/classroomService.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/dwr/interface/studentService.js"></script>
	<link href="<%=request.getContextPath()%>/resources/css/bootstrap.min.css" rel="stylesheet">
	<link href="<%=request.getContextPath()%>/resources/css/main-style.css" rel="stylesheet">
	<link href="<%=request.getContextPath()%>/resources/css/pager.css" rel="stylesheet">
	<link href="<%=request.getContextPath()%>/resources/css/blue.css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/resources/css/index-style.css" rel="stylesheet">
	<script type="text/javascript">
    $(function(){
		$('input').iCheck({
		    checkboxClass: 'icheckbox_flat-blue',
		    radioClass: 'iradio_flat-blue',
		    increaseArea: '50%'
		});
		//处理是否登录时导航栏
		var loginUser = $.cookie('loginUser');
		if(loginUser==undefined||loginUser==""){
			console.log("loginUser-->"+"undefinded");
			$("#menu-u-login").clone().appendTo("#top-nav").show();
		} 
		if(loginUser!=undefined&&loginUser!=""){
			console.log("loginUser-->"+loginUser)
			initLogined();
		}
		
		//---------jquery-class-myClass----------------------
		$("#class-member").on("click",function(){
			studentService.findStudent(1,14,function(pager){
				var stus = pager.datas;
				$.studentTable(pager);
				$.createPager(pager,"#list-class-member-pager",{callback:function(){
					var curPage = $("#list-class-member-pager").data("curPage");
					studentService.findStudent(curPage,14,function(pager){
						$.studentTable(pager);
					})
					}
				})
			})
		})
    })
	</script>
<title>Home</title>
</head>
<body>
  <div class="container-top">
  	<div class="top-top"></div>
  	<div class="top-picture">
  	</div>
  	<div class="container-navbar">
  	<div class="nav-container">
	  	<ul id="top-nav" class="nav top-nav">
		  	<li><a id="menu-index"href=""><span class="glyphicon glyphicon-home"></span>&nbsp;首页</a></li>
		    <li><a id="menu-class"href="">班级</a></li>
		    <li><a id="menu-course"href="#">课程</a></li>
		    <li><a href="#">About</a></li>
		    <li><a href="../admin/admin.jsp">后台</a></li>
		    <!-- 登录 -->
		    
	    </ul>
  	</div>
  	<ul id="logined-item" class="none">
  			<li id="menu-u-login"><button data-toggle="popover" 
  										data-content="密码修改成功,请重新登录!"
  										data-placement="left"
  										id="menu-login" class="pull-right btn btn-info menu-login-btn" href="">登录/注册</button></li>
  			<li id="menu-u-syllabus"><div class="menu-in">课程表</div></li>
		    <li id="menu-u-info"><div id="u-info"class="menu-in">消息&nbsp;<span class="badge">1</span></div></li>
	    	<li id="menu-u-avatar"><div id="u-avatar" class="menu-avatar"></div></li>
  	</ul>
  	</div>
  </div> <!-- container-top-end -->
  
<!-- index -->
  	<div id="index-box" class="index-box">
  	<div id="index-content" class="index-content">
<!-- 轮播  -->
		<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
		  <!-- Indicators -->
		  <ol class="carousel-indicators">
		    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
		    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
		    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
		  </ol>
		  <!-- Wrapper for slides -->
			  <div class="carousel-inner">
			    <div class="item active">
			      <img src="../img/slide-01.png" alt="...">
			      <div class="carousel-caption">
			        <h3>First slide label</h3>
			    	<p>800*500.Nulla vitae elit libero, a pharetra augue mollis interdum.</p>
			      </div>
			    </div>
			    <div class="item">
			      <img src="../img/slide-02.png" alt="...">
			      <div class="carousel-caption">
			        <h3>Second slide label</h3>
			    	<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.img-size:800*500</p>
			      </div>
			    </div>
			     <div class="item">
			      <img src="../img/slide-03.png" alt="...">
			      <div class="carousel-caption">
			        <h3>Third slide label</h3>
			    	<p>img-size:800*500.Praesent commodo cursus magna, vel scelerisque nisl consectetur.</p>
			      </div>
			    </div>
			  </div>
		  <!-- Controls -->
		  <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
		    <span class="glyphicon glyphicon-chevron-left"></span>
		  </a>
		  <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
		    <span class="glyphicon glyphicon-chevron-right"></span>
		  </a>
		</div>
<!-- 右边空区  -->
			<div class="right-box" id="right-box">

			</div>
  	</div><!-- index-content end -->
  	</div>
<!-- 登录/注册 -->
	<div class="modal fade" id="modal-login" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">>
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
						<input id='login-email' type="text" class="register-input input-he"  placeholder="用户名/邮箱--test ">
						<input id='login-password' type="password" class="register-input input-he"  placeholder="密码--112233">
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
<!-- 个人信息 -->
<div id="user-box" class="user-box">
	<div class="modal fade" id="user-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">>
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
	        <h4 class="modal-title">编辑信息</h4>
	      </div>
	      <div id="nickname-err"class="edit-err">用户名长度不能超过14个字符</div>
	      <div id="name-err"class="edit-err">实名长度不能超过14个字符</div>
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
				<span id="">实名：</span>
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
		<div class="info-class-box">
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
					<div class="btn-div">
					<a class="class-btn" href="#">退出班级</a>
					</div>
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
  
<div id="class-box" class="class-box">
<!-- 左侧菜单栏 -->
		<div class="sidebar-left">
			<div class="list-group">
			<a href="#" class="list-group-item active">这里是班级</a>
		    <a id='left-my-class' href="" class="list-group-item">我的班级</a>
		  	<a id='left-join-class' href="" class="list-group-item">加入班级</a>
		    <a id='left-create-class' href="" class="list-group-item">创建班级</a>
		    </div>
		</div>
<!-- ================我的班级================ -->
		<div id="my-class" class="container-right">
			<div class="body-head">
				<h4 class="text-info">2012软件工程</h4>
			</div>
			<div class="body-content">
				<!-- Nav tabs -->
				<ul class="nav nav-tabs">
				  <li><a href="#inform" data-toggle="tab">通知公告</a></li>
				  <li><a id="class-member" href="#member" data-toggle="tab">成员</a></li>
				  <li><a href="#syllabus" data-toggle="tab">班级课程表</a></li>
				  <li><a href="#mission" data-toggle="tab">作业任务</a></li>
				  <li><a href="#file" data-toggle="tab">共享文件</a></li>
				</ul>
				<!-- Tab panes -->
				  <div class="tab-content">
					  <div class="tab-pane active" id="inform">inform-table</div>
					  <div class="tab-pane" id="member">
					  	<div id="member-box" class="member-box">
					  	<!-- 班级成员 -->
					  	  <div class="table-title">
							<div class="title-label">显示</div>
								<div class="body-select">
								<select id="page-size" class='form-control input-sm'>
									<option>15</option>
									<option>25</option>
									<option>30</option>
									<option>50</option>
									<option>100</option>
								</select>
								</div>
							<div class="title-label">项结果 </div>
							<div class="search-contain">
								<div class="title-label">搜索：</div>
					  			<div class="body-search"><input id='search' type='text' class='form-control input-sm'></div>
							</div>
						  </div><!-- table-title -->
						   <table id="t-class-members" class="table table-bordered table-condensed">
				              <thead>
				              <tr><td>学号</td><td>姓名</td><td>长号</td><td>短号</td><td>QQ</td><td>宿舍</td></tr>
				              </thead>
				              <tbody>
							  <tr><td><button id="delete-btn" class="btn btn-danger btn-opera">删除</button></td></tr>
				              </tbody>
				              <tfoot>
				              <tr><td>学号</td><td>姓名</td><td>长号</td><td>短号</td><td>QQ</td><td>宿舍</td></tr>
				              <tr><td colspan="7">
				               <div class='class-member-pager-container'>
				                 <ul id="list-class-member-pager" class="page"></ul>
                               </div>
                              </td></tr>
				              </tfoot>
						 </table>
					  	</div>
					  </div>
					  <div class="tab-pane" id="syllabus">syllabus-table</div>
					  <div class="tab-pane" id="mission">mission-table</div>
					  <div class="tab-pane" id="file">file-table</div>
				  </div>
			</div>
		</div>
<!-- ================班级列表================= -->
		<div id="list-class" class="container-right">
				<div class="body-head">
				<h4 class="text-info">班级列表</h4>
			    </div>
			<div class="class-search">
				<div id ="select-Pane" class="f-width">
					<label>筛选</label>
					<select id="f-college" class="input-sm"><option value='-1'>--全部学校--</option></select>
					<select id="f-department" class="input-sm"><option value='-1'>--全部系--</option></select>
					<select id="f-major" class="input-sm"><option value='-1'>--全部专业--</option></select>
				</div>
			    <div class="search-group">
			      <input id='search-input' type="text" class="search-input" placeholder="专业/班级/班主任/班长">
			           <span class="input-group-btn">
				        <button id='classroom-find' class="btn btn-info" type="button">查找</button>
				      </span>
			    </div>
			</div>
			<!-- 班级元素 -->
			<div id='class-item-container' class='class-item-container'>
	
			</div>
			<div class='classroom-pager-container'>
				<ul id="list-classroom-pager" class="page"></ul>
			</div>
		</div>
		
<!-- ================创建班级================= -->
		<div id="create-class" class="container-right">
				<div class="body-head">
				<h4 class="text-info">创建班级</h4>
			    </div>
			    
			<div class="class-create">
				<div id='create-selete' class='create-selete'>
					<div id ="select-Pane" class="create-width">
						<label id="two">从属：</label>
						<select id="c-college" class="input-sm"><option value='s'>--选择学校--</option></select>
						<select id="c-department" class="input-sm"><option value='s'>--选择系--</option></select>
						<select id="c-major" class="input-sm"><option value='s'>--选择专业--</option></select>
					</div>
					<div id="college-ico" class="college-ico"></div>
					<div id ="select-Pane" class="create-width">
						<label id="two">年级：</label>
						<select id="c-grade" class="input-sm">
						<option value='s'>--选择年级--</option>
						</select>
					</div>
					<div id ="select-Pane" class="create-width">
						<label id="two">班别：</label>
						<select id="c-class" class="input-sm">
						<option value='s'>--选择班--</option>
						</select>
					</div>
					<div class="input-container">
						<label id="three">班主任：</label>
						<input id='in-teacher' type="text" class="create-input input-sm">
						<div class="validate" id="v-teacher" ></div>
					</div>
					<div class="input-container">
						<label id="two">班长：</label>
						<input id='in-monitor' type="text" class="create-input input-sm">
						<div class="validate" id="v-monitor" ></div>
					</div>
				</div>
				<div class="v-classroom" id="v-classroom" ></div>
				<div class="create-foot">
					<div class="foot-p">
						<p class="text-muted">如果你找不到你的专业，<a id='c-link' class="text-muted">点这里添加</a></p>
					</div>
					<div class="create-btn">
						<button id='classroom-cancel' type="button" class="btn btn-default">清空</button>
						<button id='classroom-pre' type="button" class="btn btn-primary">创建</button>
					</div>
			    </div>
				
	     				<!-- 创建预览 -->
						<div class="modal fade" id="modal-pre" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">>
						  <div class="modal-dialog">
						    <div class="modal-content">
						      <div class="modal-header">
						        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
						        <h4 class="modal-title">创建预览</h4>
						      </div>
						      <div class="modal-body">
									<div id="pre-container" class="pre-container">
										<div class="class-number">
									    	<p class="text-muted"><span>#</span></p>
									    </div>
										<div id='pre-pic' class="pre-pic"></div>
									  <div id='preview-class' class="pre-desc">
									    <h4 class="text-primary"><small class="text-success"><span id='pre-grade'></span><span>—</span></small><span id='mc'></span></h4>
									   	<p class="text-muted">班主任:<span id='pre-teacher'></span>&nbsp;&nbsp;班长:<span id='pre-monitor'></span></p>
									  </div>
									</div><!-- 预览 end -->
						      </div>
						      <div class="modal-footer">
						        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
						        <button id ='pre-create' type="button" class="btn btn-primary">创建</button>
						      </div>
						    </div><!-- /.modal-content -->
						  </div><!-- /.modal-dialog -->
						</div><!-- /.modal -->
						
					
						<!-- 创建学校、系、专业 -->
						<div class="modal fade" id="apply-cdm-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">>
						  <div class="modal-dialog">
						    <div class="modal-content">
						      <div class="modal-header">
						        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
						        <h4 class="modal-title">添加专业</h4>
						      </div>
						      <div id="apply-cdm-input-container" class="modal-body">   <!-- body -->
								<div class="input-container">
									<label id="n-college">学校名称：</label>
									<input id="cdm-in-college" type="text" class="n-input input-sm">
								</div>
								<div class="input-container">
									<label id="n-department">系别名称：</label>
									<input id="cdm-in-department" type="text" class="n-input input-sm">
								</div>
								<div class="input-container">
									<label id="n-major">专业名称：</label>
									<input id="cdm-in-major" type="text" class="n-input input-sm">
								</div>
						      </div>
						      <div class="modal-footer">
						        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
						        <button id="apply-cdm-add" type="button" class="btn btn-primary">添加</button>
						      </div>
						    </div><!-- /.modal-content -->
						  </div><!-- /.modal-dialog -->
						</div><!-- /.modal -->
				
			</div> <!-- class-create end -->
		</div><!-- container-right end -->
		</div><!-- home-box end -->
		
		<div class="footer border-y">
			<span class="text-muted">zhengzran@gmail.com</span><br>
			<span class="text-muted">Copyright © 2015-2016 Jonzheng. All rights reserved.</span>
		</div>

  </body>
  <script type="text/javascript">
  	$(function(){
  		initLogin();
  		initCreateClass();
  		initListClass();
  	})
  </script>
</html>