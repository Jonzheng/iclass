(function($){
	$.fn.address = function(opt) {
		var opts = $.extend({
			paneid:"#selectionsPane",
			pid:"#province",
			cid:"#city",
			did:"#district",
			attrName:"name",
			attrValue:"value",
			selected:$.noop()
		},opt||{});
		var target = this;
		//获取相应id的select输入包装集
		opts.ps$ = $(opts.pid);
		opts.cs$ = $(opts.cid);
		opts.ds$ = $(opts.did);
		//获取数据
		opts.province;
		opts.city;
		opts.district;
		$.get("data/json-array-of-province.js",function(data){
			opts.province = data;
			init();
		},"json");
		$.get("data/json-array-of-city.js",function(data){
			opts.city = data;
		},"json");
		$.get("data/json-array-of-district.js",function(data){
			opts.district = data;
		},"json");
		function init() {
			$(opts.province).each(function(n,value){
				opts.ps$.append(createNode(value));
			});
			opts.ps$.change(function(event){
				opts.cs$.find("option:gt(0)").remove();
				opts.ds$.find("option:gt(0)").remove();
				var pn = $(this).val().substr(0,2);
				$(opts.city).each(function(n,value){
					if((value.code.substr(0,2))==pn){
						opts.cs$.append(createNode(value));
					}
				});
			});
			opts.cs$.change(function(event){
				opts.ds$.find("option:gt(0)").remove();
				var cn = $(this).val().substr(0,4);
				$(opts.district).each(function(n,value){
					if((value.code.substr(0,4))==cn){
						opts.ds$.append(createNode(value));
					}
				});
			});
			opts.ds$.change(opts.selected);
		};
		function createNode(obj) {
			return "<option value='"+obj.code+"'>"+obj.name+"</option>";
		}
		return this;
	};
})(jQuery);