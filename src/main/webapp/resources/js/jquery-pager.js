(function($){
	$.createPager = function createPager(pager,container,opt) {
		var totalPage = Math.floor((pager.total+pager.size-1)/pager.size);
		var opts = $.extend({
			curPage:1,
			maxPage:3,
			callback:$.noop()
		},opt||{});
		var curPageNum = opts.curPage;
		var maxPage = opts.maxPage;
		$(container).data("pageSize",pager.size);
		function setCurPage(curPage){
			$(container).data("curPage",curPage);
			opts.callback();
		}
		//必须off
		$(container).off("click","#prev");
		$(container).off("click","#next");
		$(container).find("li").remove();
		$(container).append("<li><a id='prev' href=''>上页</a></li><li><a id='next' href=''>下页</a></li>");
		if($(container).find("li").size()==2) {
			//上一页
			$(container).on("click","#prev",function(event){
				event.preventDefault();
				if(curPageNum>1) {
					var prevPage = curPageNum-1;
					$(container).find("a[id="+curPageNum+"]").removeClass("curPage");
					$(container).find("a[id="+prevPage+"]").addClass("curPage");
					curPageNum = prevPage;
					setCurPage(curPageNum);
					//页码边缘处理
					handleEdge(curPageNum,maxPage,totalPage);
				}
			});
			//下一页
			$(container).on("click","#next",function(event){
				event.preventDefault();
				if(curPageNum<totalPage) {
					var nextPage = parseInt(curPageNum)+1;
					$(container).find("a[id="+curPageNum+"]").removeClass("curPage");
					$(container).find("a[id="+nextPage+"]").addClass("curPage");
					curPageNum = nextPage;
					setCurPage(curPageNum);
					//页码边缘处理
					handleEdge(curPageNum,maxPage,totalPage);
				}
			});
			for(var i=1;i<=totalPage;i++) {
				//根据记录生成页数
				$(container).find("li:last-child").before("<li><a id='"+i+"' class='pageWidth' href=''>"+i+"</a></li>");
				$(container).find("li:gt("+(2*maxPage+1)+")").not(":last-child").find("a").hide();
				$(container).find("a[id="+curPageNum+"]").addClass("curPage");
				$(container).find("li:last-child").prev("li").find("a").on("click",function(event){
					event.preventDefault();
					$(container).find("a[id="+curPageNum+"]").removeClass("curPage");
					$(this).addClass("curPage");
					//text()果然不能直接赋值给数字
					curPageNum = parseInt($(this).text());
					setCurPage(curPageNum);
					//页码边缘处理
					handleEdge(curPageNum,maxPage,totalPage);
				});
			}
			if(curPageNum==1) {$(container).find("#prev").addClass("edge");}
			if(curPageNum==totalPage) $(container).find("#next").addClass("edge");
		}
		//页码边缘处理
		function handleEdge(curPageNum,maxPage,totalPage) {
			//设置上页下页的样式
			$(container).find("#prev").removeClass("edge");
			$(container).find("#next").removeClass("edge");
			if(curPageNum==totalPage) $(container).find("#next").addClass("edge");
			if(curPageNum==1) $(container).find("#prev").addClass("edge");
			//隐藏多出的页码
			var endNum = (parseInt(curPageNum)+maxPage);
			var startNum = curPageNum-maxPage;
			if(startNum<0) startNum = 0;
			var maxPageNum = 2*maxPage+1;
			
			$(container).find("li:gt("+startNum+")").find("a").show();
			$(container).find("li:lt("+endNum+")").find("a").show();
			if(totalPage>=(2*maxPage+1)) {
				//页尾
				if(startNum<=(totalPage-maxPageNum)) {
					$(container).find("li:lt("+startNum+")").not(":first-child").find("a").hide();
				}
				//页尾保留不隐藏
				if(startNum>(totalPage-maxPageNum)) {
					$(container).find("li:lt("+(totalPage-maxPageNum+1)+")").not(":first-child").find("a").hide();
				}
				//页首
				if(endNum>=maxPageNum) {
					$(container).find("li:gt("+endNum+")").not(":last-child").find("a").hide();
				}
				////页首保留不隐藏
				if(endNum<=maxPageNum) {
					$(container).find("li:gt("+maxPageNum+")").not(":last-child").find("a").hide();
				}
			}
		}
	}
})(jQuery);