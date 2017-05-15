﻿<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>配置信息列表</title>
<link href="../content/css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../content/js/jquery.1.7.2.min.js"></script>
</head>
<body>
	<h1 class="globle_title2">
        <img src="../content/images/tag.gif" />
        配置信息列表  <em></em></h1>
    <div class="syt_lb">
		</div>
		<div class="globle_bck">
        <h1 class="diandianb">:: 配置信息列表 ::<a href="configAdd.do">
            <img src="../content//images/btn_add.jpg" width="52" height="22" class="f_r" style="margin: 2px 10px 0px 0px;" /></a></h1>
		<table width="100%" border="0" cellspacing="1" cellpadding="0" id="tb"
			class="autotable2">
			<thead>
				<tr class="titletr">
					<td>名称</td>
					<td>创建按时间</td>
					<td>修改时间</td>
					<td>状态</td>
					<td>操作</td>					
				</tr>
			</thead>
			<tbody>
				<tr class="whittr" data-itemid="120">
					<td align="center">java</td>
					<td>20015-08-01</td>
					<td>20015-08-01</td>
					<td>启用</td>
					<td><a href="configAdd.do">修改</a>&nbsp;&nbsp;/&nbsp;&nbsp;<a
						class="font-red-sunglo">删除</a></td>
				</tr>
			</tbody>
		</table>
	</div>
</body>
<script type="text/javascript">
	$(document).ready(function() {
		//firstStep();
		$("#search").click(function() {
			currentPage = 1;
			firstStep();
		});
	});
	function firstStep() {
		$("#tb").find("tbody").empty();
		$("#loading").show();
		setTimeout(function() {
			InitForm();
		}, 300);
	}
	function InitForm() {
		var departmentname = $("#departmentname").val();
		var departmenttype = $("#departmenttype").val();
		var state = $("#NState").val();
		$("#loading").show();
		$.ajax({
			type : "POST",
			url : "",
			data : "func=departlist&pageSize=" + pageSize + "&currentPage="
					+ currentPage  + "&departmentname=" + departmenttype + "&departmenttype=" + state+ "&state=" + state,
			dataType : "json",
			error : function() {
				// alert("出错了");
			},
			success : function(data) {
				if (data == "-2") {
					alert("登录过期请重新登录");
					window.parent.location.href = "/Login.aspx?Out=A";
				} else {
					currentPage = data.currentPage;
					dataCount = data.dataCount;
					maxPage = data.maxPage;
					PagerInit("pager");
					$(".message").html(
							"共<i class=\"blue\">" + dataCount + "</i>条记录，当前显示第"
									+ currentPage + "</i>页");
					$("#tb").find("tbody").empty();
					$("#tb").find("tbody").append(data.dataHtml);
					$("#loading").hide();
				}
			}
		});
	}
	$(".font-red-sunglo").live("click", function() {
		var _this = $(this);
		var _parent = _this.parent().parent();
		var id = _parent.attr("data-itemID");
		if (confirm("是否删除此记录？")) {
			$.ajax({
				type : "POST",
				url : "",
				data : {
					func : "delfunds",
					id : id
				},
				datatype : "json",
				error : function() {
					//alert("出错了"); 
				},
				success : function(data) {
					if (data == "-2") {
						alert("登录过期请重新登录");
						window.parent.location.href = "/Login.aspx";
					} else if (data == "0")
						alert("删除失败，稍后请重试！");
					else {
						alert("删除成功！");
						$(_this).parent().parent().remove();
						InitForm();
					}
				}
			});
		}
	});
</script>
</html>