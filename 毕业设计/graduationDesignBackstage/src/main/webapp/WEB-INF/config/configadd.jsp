﻿<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>配置操作</title>
<link href="../content/css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../content/js/jquery.1.7.2.min.js"></script>
<script type="text/javascript" src="../content/js/user/opuser.js"></script>
</head>
<body>
	<input type="hidden" id="id" value="" />
	<h1 class="globle_title2">
		<img src="../content/images/tag.gif" /> 配置信息 <em></em>
	</h1>
	<div class="sytxq_conment_wk">
		<div class="sytxq_conment_wk_bx">
			<div class="syt_lb_top">
				<h1 class="syt_lb_top_titleh2">配置信息表</h1>
			</div>
			<div class="sytxq_conment">
				<table width="100%" border="0" cellspacing="0" cellpadding="0"
					class="table_xq">
					<tr>
						<td class="table_xqa">名称：</td>
						<td class="table_xqb"><input type="text" placeholder="配置名称"
							id="departmentname" class="syt_lb_top_conment_txt"
							style=" float:left;" /> <span class="bitian">*</span> <span
							class="yzsb" style="display: none;">请填写名称！</span> <span
							class="yzcg" style="display: none;">验证通过</span>
							<div class="clear"></div></td>
					</tr>
					<tr>
						<td class="table_xqa">状态：</td>
						<td class="table_xqb"><label> <cite
								style="padding-top: 0px;"> <input type="radio" value="1"
									checked="checked" name="state" /></cite><span
								style="padding-top: 0px;">启用</span></label> <label> <cite
								style="padding-top: 0px;"><span style="padding-top: 0px;">&nbsp;&nbsp;</span>&nbsp;&nbsp;

									<input name="state" type="radio" value="2" /></cite><span
								style="padding-top: 0px;">停用</span></label></td>
					</tr>
				</table>
			</div>
			<div class="sytxq_conment_bc">
				<button type="button" id="tsave" onclick="save()" class="chaxun_but">保
					存</button>
				<button type="submit" onclick="callback()" class="chaxun_but">返
					回</button>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		var cTG = $(".yzcg");
		var cSB = $(".yzsb");
		$(document).ready(function() {
			//GetData();
			$("#departmentname").blur(function() {
				departmentname()
			})
		})
		function departmentname() {
			if ($("#departmentname").val() != "") {
				cTG.eq(0).show();
				cSB.eq(0).hide();
				return true;
			} else {
				cTG.eq(0).hide();
				cSB.eq(0).show();
				return false;
			}
		}

		function GetData() {
			$.ajax({
				type : "POST",
				url : "",
				data : {
					func : "GetDepartById",
					id : $("#id").val()
				},
				dataType : "text",
				error : function() {
					//alert("出错了"); 
				},
				success : function(data) {
					$("#FundsTypeName").val(data.data.departmentname);
					if (data.data.State == 2) {
						$("input[name='departmenttype']:eq(1)").attr("checked",
								'checked');
					}
					if (data.data.State == 2) {
						$("input[name='state']:eq(1)").attr("checked",
								'checked');
					}
				}
			});
		};
		function save() {
			if (departmentname()) {
				$.ajax({
					type : "POST",
					url : "",
					data : {
						func : "savedepart",
						id : $("#id").val(),
						FundsTypeName : $("#departmentname").val(),
						state : $("input[name='departmenttype']:checked").val(),
						state : $("input[name='state']:checked").val()
					},
					dataType : "text",
					error : function() {
						//alert("出错了"); 
					},
					success : function(data) {
						alert(response);
						if ($("#id").val() < 1) {
							$("#departmentname").val("");
							$("input[name='departmenttype']:eq(0)").attr("checked",
									'checked');
							$("input[name='state']:eq(0)").attr("checked",
									'checked');
							$(".yzcg").hide();
							$(".yzsb").hide();
						}
					}
				});
			}
		};
	</script>
</body>