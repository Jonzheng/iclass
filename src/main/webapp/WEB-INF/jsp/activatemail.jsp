<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jquery-1.11.3.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/bootstrap.min.js"></script>
    <link href="<%=request.getContextPath()%>/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/resources/css/activatemail-style.css" rel="stylesheet">
    <script type="text/javascript">
    $(function(){
    	var serverName = $("#server-name").text();
    	var serverPort = $("#server-port").text();
    	var contextPath = $("#context-path").text();
    	var URL = "http://"+serverName+":"+serverPort+contextPath
    	$("#to-home-btn").attr("href",URL);
    	
    	var u = $.parseJSON($("#user").text());
    	if(u!=null) {
        	if(u.email==-1||u.token==-1) {
        		$(".err-box").find("#email").html(u.mail);
        		$(".err-box").show();
        	}
        	if(u.status==1) {
        		$(".success-box").find("#email").html(u.mail);
        		$(".success-box").show();
        	}
           	if(u.status==-1) {
           		$(".successed-box").find("#email").html(u.mail);
        		$(".successed-box").show();
        	}
           	if(u.time==-1) {
           		$(".timesout-box").find("#email").html(u.mail);
        		$(".timesout-box").show();
        	}
    	}
    	if(u==null) {
    		$(".dead-box").show();
    	}
    })
    </script>
<title>iClass邮箱账户激活</title>
</head>
<body>
	<div class="container-top">
	  	<div class="top-picture"></div>
	</div>
	
  	<div id="index-box" class="index-box">
	  	<h4>邮箱验证</h4>
	  	<hr>
	  	<div class="none">
		  	<div id="server-name"><%=request.getServerName()%></div>
		  	<div id="server-port"><%=request.getServerPort()%></div>
		  	<div id="context-path"><%=request.getContextPath()%></div>
		  	<div id="servlet-path"><%=request.getServletPath()%></div>
	  	</div>
	  	<div id="user" class="none"><%=request.getAttribute("user")%></div>
	  	<div id="index-content" class="index-content">
	  	<div class="tips-box">
	  	
	  		<div class="success-box none">
	  			<span class="glyphicon glyphicon-ok-sign success-ico"></span><br><br>
	  			<span class="ac-tips">邮箱验证通过</span><br>
	  			<span class="text-muted">你的邮箱&nbsp;<span id='email'></span>&nbsp;激活成功</span><br><br>
	  			<span class="text-muted">赶紧返回首页登录吧 O(∩_∩)O~~</span><br>
	  		</div>
	  		
	  		<div class="successed-box none">
	  			<span class="glyphicon glyphicon-exclamation-sign success-ico"></span><br><br>
	  			<span class="text-muted">你的邮箱&nbsp;<span id='email'></span>&nbsp;已经激活!</span><br><br>
	  			<span class="text-muted">赶紧返回首页登录吧 O(∩_∩)O~~</span><br>
	  		</div>
	  		
	  		<div class="err-box none">
	  			<span class="glyphicon glyphicon-remove-sign tips-ico"></span><br><br>
	  			<span class="ac-tips">邮箱验证错误</span><br>
	  			<span class="text-muted">你的邮箱&nbsp;<span id='email'></span>&nbsp;验证发生错误</span><br><br>
	  			<span class="text-muted">可能的原因：</span><br>
	  			<span class="text-muted">1)：复制地址时可能漏掉了一些...</span><br>
	  		</div>
	  		
	  		<div class="timesout-box none">
	  			<span class="glyphicon glyphicon-remove-sign tips-ico"></span><br><br>
	  			<span class="ac-tips">邮箱验证链接过期</span><br>
	  			<span class="text-muted">你的邮箱&nbsp;<span id='email'></span>&nbsp;激活失败</span><br><br>
	  			<span class="text-muted">已经重新发送激活邮件到你的邮箱：<span id='email'></span></span><br>
	  			<span class="text-muted">请重新登录你的邮箱进行激活</span><br>
	  		</div>
	  		
	  		<div class="dead-box none">
	  			<span class="glyphicon glyphicon-remove-sign tips-ico"></span><br><br>
	  			<span class="ac-tips">丫!!!你的账号可能已经被通用了</span><br>
	  			<span class="text-muted">请尝试联系管理员吧</span><br><br>
	  		</div>
	  	</div>
	  		<a class="btn btn-info to-home-btn" id="to-home-btn" href="">返回首页</a>
	  	</div>
  	</div>
</body>
</html>