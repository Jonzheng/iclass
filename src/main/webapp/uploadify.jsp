<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jquery-1.11.3.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/resources/uploadify/jquery.uploadify.min.js"></script>
    <link href="<%=request.getContextPath()%>/resources/uploadify/uploadify.css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/resources/css/back-style.css" rel="stylesheet">
<title>Upload</title>
<script type="text/javascript">
	$(function(){
		$("#uf").uploadify({
			'height':71,
			'buttonText' : '',
			'buttonClass' : 'some-class',
			'fileTypeExts' : '*.gif; *.jpg; *.png',
			'swf':$("#ctx").val()+"/resources/uploadify/uploadify.swf",
			'uploader':"upload",
			auto:false,
			'onUploadSuccess' : function(file, data, response) {
	           console.log('The file ' + file.name + ' was successfully uploaded with a response of ' + response + ':' + data);
	           var ao = $.parseJSON(data);
	        }

		});
		$("#btn").on("click",function(e){
			$("#uf").uploadify("upload","*");
		})
	})
</script>
</head>
<body>
	<input type="hidden" id="ctx" value="<%=request.getContextPath()%>"/>
	<input id="uf" type="file" value="">
	<input id="btn"type="button" value="upload"/>
</body>
</html>