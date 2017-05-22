﻿<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>团队列表</title>
<link href="../content/css/style.css" rel="stylesheet" type="text/css" />
<script src="../content/js/jquery.js" language="javascript"></script>
<script type="text/javascript" src="../content/js/commonalert.js"></script>
<script src="../content/js/globle_select.js"></script>
<style>
.cp {
	width: 500px;
	height: auto;
	background: #FFF;
	border: 1px solid #ccc;
	padding: 10px;
	position: absolute;
	box-shadow: 5px 5px #ccc;
	margin-top: 10px;
}

.cp i {
	font-style: normal
}

.cp h1 {
	font-size: 14px;
	border-bottom: 1px solid #6CF;
	padding-bottom: 10px;
	margin-bottom: 10px;
}

.cp h1 span {
	float: right;
	cursor: pointer;
	padding: 0px 5px;
	background: #ff9900;
	color: #FFF;
	border-radius: 10px;
}

.cp .li-left {
	float: left;
	width: 50px;
	font-size: 12px;
	font-weight: bold;
	color: #F60;
	margin-right: 15px;
	line-height: 30px;
}

.cp .li-right {
	float: left;
	width: 420px;
}

.cp .li-right dl {
	float: left;
	width: 128px;
	line-height: 30px;
	margin-right: 5px;
	border: 1px #fff solid
}

.cp .li-right dl h2 {
	font-size: 12px;
	font-weight: 100
}

.cp .li-right dl h2.on {
	border-left: 1px solid #ccc;
	border-top: 1px solid #ccc;
	cursor: pointer;
	border-right: 1px solid #ccc;
	background: #EEE
}

.cp .cpchild {
	width: 500px;
	height: auto;
	border: 1px solid #ccc;
	background: #FFF;
	padding: 10px;
	position: absolute;
	top: 0px;
	left: 0px;
	display: none
}

.cp .cpchild dt {
	width: 170px;
	float: left;
	display: block
}

.schild {
	width: 450px;
	padding: 5px;
	position: absolute;
	top: 0px;
	left: 0px;
	background: #ff9900;
	border-radius: 5px;
}

.schild i {
	font-style: normal;
	color: #ff9900;
	font-size: 30px;
	margin-left: -14px;
	position: absolute
}
</style>
<script>
	//滑动门JS
	$(document)
			.ready(
					function() {
						$("#blockquote_title a")
								.each(
										function(index, element) {
											$(this)
													.click(
															function() {
																$(
																		"#blockquote_title a")
																		.each(
																				function(
																						index,
																						element) {
																					$(
																							this)
																							.attr(
																									'class',
																									'linkout');
																				})
																$(this)
																		.attr(
																				'class',
																				'linkon');
																var k = index;
																$(
																		"#blockquote_content blockquote")
																		.each(
																				function(
																						indexs,
																						element) {
																					$(
																							this)
																							.css(
																									'display',
																									'none');
																					if (k == indexs)
																						$(
																								this)
																								.css(
																										'display',
																										'');
																				});
															});
										});
						$("#blockquote_content blockquote").each(
								function(index, element) {
									if (index != 0)
										$(this).css('display', 'none');
								});
					});

	function closeDiv(obj) {
		$(obj).parent().css('display', 'none');
		$(obj).parent().parent().find('i').text('+');
		$(obj).parent().parent().find('h2').removeClass('on');
	}

	//弹出隐藏层
	function ShowDiv2(show_div, bg_div) {
		document.getElementById(show_div).style.display = 'block';
		document.getElementById(bg_div).style.display = 'block';
		var bgdiv = document.getElementById(bg_div);
		bgdiv.style.width = document.body.scrollWidth;
		$("#" + bg_div).height($(document).height());
	};

	//关闭弹出层
	function CloseDiv2(show_div, bg_div) {
		document.getElementById(show_div).style.display = 'none';
		document.getElementById(bg_div).style.display = 'none';
	};
</script>

<style type="text/css">
.black_overlay {
	display: none;
	position: absolute;
	top: 0%;
	left: 0%;
	width: 100%;
	height: 100%;
	background-color: #000;
	z-index: 1001;
	-moz-opacity: 0.35;
	opacity: .35;
	filter: alpha(opacity = 35);
}

.white_content {
	display: none;
	position: absolute;
	top: 14%;
	left: 24%;
	width: 50%;
	height: auto;
	z-index: 1002;
	overflow: hidden;
	padding-bottom: 20px;
}
</style>
</head>
<body>
	<h1 class="globle_title2">
		<img src="../content/images/tag.gif" /> 团队管理 → <em>团队列表</em>
	</h1>
	<div class="sytxq_conment_wk">

		<div class="sytxq_conment_wk_bx">
			<div class="syt_lb">
				<div class="syt_lb_top">
					<h1 class="syt_lb_top_titleh1">查询条件</h1>
				</div>
				<div class="syt_lb_top_conment">
					<div class="fandr">
						<div class="form-groupl">
							项目： <select id="projectid" class="input_b">
									<option selected="selected" value="-1">---------全部---------</option>
								<c:forEach items="${myprojectlist }" var="li" varStatus="idxStatus">
									<option value="${li.projid }">${li.projname }</option>
								</c:forEach>
							</select>
						</div>
						<button type="button" class="chaxun_but" id="CriteriaQuery">查询</button>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
			<div id="blockquote_content">
				<div class="globle_bck">
					<h1>
						∷ 团队成员 ∷ <a href="javascript:void(0);"
							onclick="ShowDiv2('MyDiv', 'fade');"> <img
							src="../content//images/btn_add.jpg" width="52" height="22"
							class="f_r" style="margin: 2px 10px 0px 0px;" /></a>
					</h1>
					</h1>
				</div>
			</div>
			<table width="100%" border="0" cellspacing="1" cellpadding="0"
				class="autotable2">
				<tr class="titletr">
					<td>项目名称</td>
					<td>姓名</td>
					<td>联系方式</td>
					<td>学历</td>
					<td>方向</td>
					<td>简介</td>
					<td>操作</td>
				</tr>
				<c:forEach items="${homeprojectlist }" var="li" varStatus="idxStatus">
					<tr class="whittr" data-itemid="${li.projectid }" data-itemname="${li.use.email }">
						<td>${li.projectname}</td>
						<td>${li.use.name}</td>
						<td title="${li.use.email}">${li.use.phone}</td>
						<td>${li.use.education}</td>
						<td>${li.use.direction}</td>
						<td title="${li.use.introduce}">${fn:substring(li.use.introduce, 0, 5)}...</td>
						<td><a class="font-red-sunglo">删除</a></td>
					</tr>
				</c:forEach>
			</table>
			<div class="sytxq_conment"></div>
		</div>
	</div>
	<!--弹出层---->
	<div id="fade" class="black_overlay"></div>
	<div id="MyDiv" class="white_content">

		<div class="sdcq_tck">
			<img src="../content/images/hong.gif" class="sdcq_tck_right_cha"
				width="1" height="16" onclick="CloseDiv2('MyDiv','fade')" />
			<div class="sdcq_tck_hong">
				<h1 class="globle_title3">
					<img src="../content/images/tcc_b.png"
						style="vertical-align: middle" /> 添加项目成员
				</h1>

			</div>
			<div class="sdcq_tck_conment">
				<table width="100%" border="0" cellspacing="1" cellpadding="0"
					class="autotable2" style="margin: 1px auto">
					<tr>
						<td class="table_xqb">
						项目： <select name="select4" id="projid" class="input_b">
								<c:forEach items="${myprojectlist }" var="li" varStatus="idxStatus">
									<option value="${li.projid }">${li.projname }</option>
								</c:forEach>
							 </select>
						</td>
						<td class="table_xqb">
						学生： <select name="select4" id="email" class="input_b">
								<c:forEach items="${studentlist }" var="li" varStatus="idxStatus">
									<option value="${li.email }">${li.name }</option>
								</c:forEach>
						</select>
						</td>
					<tr>
				</table>
				<div class="win_btn">
					<button type="button" id="add" class="chaxun_but2">确认</button>
					<button type="button" onclick="CloseDiv2('MyDiv','fade')" class="chaxun_but2">取消</button>
				</div>
			</div>
			<div class="sdcq_tck_baidi"></div>

		</div>
	</div>
</body>
<script>
	$(document).ready(function() {
		var add='${add}';
		if(add==1){_alert("添加成功!");}else if(add==2){_alert("非法操作,不能重复添加且不能添加项目申请人!",2);}
		$("#projectid").val("${home.projectid}");//回显
		$("#projectname").val("${home.projectname}");
		$("#CriteriaQuery").click(function() {
			window.location.href =
				"teamList.do?"+
				"projectid="+$("#projectid").val()+"&projectname="+$("#projectid option:selected").text()+"";
		});
		$("#add").click(function() {
			window.location.href =
				"addHandle.do?"+
				"projectid="+$("#projid").val()+"&email="+$("#email").val()+"&projectname="+$("#projid option:selected").text()+"";
		});
	})
	var _parent;var id;var email;
	$(".font-red-sunglo").live("click", function() {
		var _this = $(this);
		_parent = _this.parent().parent();
		id = _parent.attr("data-itemID");
		email = _parent.attr("data-itemname");
		_confirm("是否删除此记录？", 1, "del()");
	});
	function del() {
		$.ajax({
			type : "POST",
			url : "delHandle.do",
			data : {
				email : email,
				projectid:id
			},
			datatype : "json",
			error : function() {
				_alert("操作失败，请检查网络后重试", 2);
			},
			success : function(result) {
				if (result.status == '0') {
					_alert(result.msg);
					_parent.remove();
				} else {
					_alert(result.msg, 2);
				}
			}
		});
	}
</script>

</html>
