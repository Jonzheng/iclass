<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

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
<!-- 							<div class="title-label">显示</div>
								<div class="body-select">
								<select id="class-members-page-size" class='form-control input-sm'>
									<option id='15'>15</option>
									<option id='50'>50</option>
									<option id='100'>100</option>
								</select>
							</div>
							<div class="title-label">项结果 </div>  -->
							<div class="">
								<div class="title-label">搜索：</div>
					  			<div class="body-search"><input id='class-members-search' type='text' class='form-control input-sm'></div>
							</div>
						  </div><!-- table-title -->
						   <table id="t-class-members" class="table table-bordered table-condensed">
				              <thead>
				              <tr><td>NO.</td><td>学号</td><td>姓名</td><td>长号</td><td>短号</td><td>QQ</td><td>宿舍</td></tr>
				              </thead>
				              <tbody>
							  <tr><td><button id="delete-btn" class="btn btn-danger btn-opera">删除</button></td></tr>
				              </tbody>
				              <tfoot>
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
</div>