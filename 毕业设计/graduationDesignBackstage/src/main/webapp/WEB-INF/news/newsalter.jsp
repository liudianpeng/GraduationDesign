﻿<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>添加新闻</title>
<link href="../content/css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../content/js/jquery.1.7.2.min.js"></script>
<script type="text/javascript" src="../content/js/jquery.easyui.min.js"></script>
<script type="text/javascript" src="../content/js/jquery-form.js"></script>
<script type="text/javascript" src="../content/js/user/opuser.js"></script>
<script type="text/javascript" src="../content/js/commonalert.js"></script>
<script type="text/javascript" src="../content/js/commonutil.js"></script>
</head>
<body>
	<h1 class="globle_title2">
		<img src="../content/images/tag.gif" /> 添加新闻 <em></em>
	</h1>
	<div class="sytxq_conment_wk">
		<div class="sytxq_conment_wk_bx">
			<div class="syt_lb_top">
				<h1 class="syt_lb_top_titleh2">新闻信息表</h1>
			</div>
			<div class="sytxq_conment">
			<form id="alterNewsForm" enctype="multipart/form-data">
				<table width="100%" border="0" cellspacing="0" cellpadding="0"
					class="table_xq">
					<tr>
						<td class="table_xqa">新闻标题：</td>
						<td class="table_xqb">
							<input type="hidden" name="id" id="id" value="${baseNews.id }" />
							<input type="text" placeholder="新闻标题" name="title"
							id="title" value="${baseNews.title }" class="syt_lb_top_conment_txt" /> 
						</td>
					</tr>
				    <tr>
				    	<td class="table_xqa">新闻简介：</td>
				      	<td colspan="3" class="table_xqb"><textarea name="explain" id="explain" class="textarea_wby" rows="5"  maxlength="300" style="width:468px;resize: none;">${baseNews.explain }</textarea>
				      	<p style="color:red;text-align:left;"><br>注意：不能超过300个字符。</p>
				      	</td>
				    </tr>
				    <tr>
						<td class="table_xqa">详情连接：</td>
						<td class="table_xqb">
						<input type="text" name="details" value="${baseNews.details }" placeholder="详情连接" id="details" class="syt_lb_top_conment_txt" />
						</td>
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
			</form>
			</div>
			<div class="sytxq_conment_bc">
				<button type="button" id="tsave" class="chaxun_but">保
					存</button>
				<button type="button" onclick="location.href='newsList.do'" class="chaxun_but">返
					回</button>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		$(document).ready(function() {
			$("input[name='state']:eq(${baseNews.state-1})").attr("checked",
			'checked');
			$("#tsave").click(function () {
				var dateObj=new Date();
				if(verifynull("title") && verifynull("explain") && 
						verifynull("details")) {
			    }else{
			    	return;
			    }				
				$("#alterNewsForm").ajaxSubmit({
			        type : 'POST',  
			        url : 'newsAlterHandle.do',
			        success : function(result) {  
			        	if(result.status=='0'){
							_alert(result.msg);
			        	}else{
			        		_alert(result.msg,2);
			        	}
			        },  
			        error : function() {  
			            _alert("上传失败，请检查网络后重试",2);  
			        }  
			    });  
	        })
		})
	</script>
</body>