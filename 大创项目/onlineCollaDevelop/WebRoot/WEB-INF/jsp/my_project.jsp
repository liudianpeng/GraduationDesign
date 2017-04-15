﻿<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>日程安排-基于项目管理流程的校园软件项目协同平台</title>
		<link rel="stylesheet" type="text/css" href="../css/table.css">
		<link rel="stylesheet" type="text/css" href="../css/base.css">
	<style type="text/css">
		body{ margin:0; padding:0; font:normal 14px/24px "\5FAE\8F6F\96C5\9ED1";}
	</style>
	<script type="text/javascript" src="../js/jquery-1.9.1.min.js"></script>
	<script type="text/javascript">
	    $(function(){
	        $('#off-body').click(function(){
	            $('body').css({'background':'#e8e7e7 '})
	            $(this).hide();
	        });
	    });
		 $(document).ready(function(){
            $("#wrap li").hover(function(){
                $(this).children("ul").slideToggle();
            });
        });
	</script>
</head>
<body style="background:url(../images/123.jpg) no-repeat center 0px;">
	
	<!-- 头部开始 --><!-- 头部开始 --><div align="right"><ol><li><h1><em><font face="Adobe 黑体 Std R"><strong></strong></font><font face="隶书" size="4" color="#0000ff">
	<u><strong><a href="../myInformation/toMyInformation.do">admin:欢迎您!!!</a></strong></u></font></em></h1></li>
	<li><font face="隶书" size="4" color="#0000ff"><u><a href="../exit/toExit.do">退出</a><br><br></u></font></li></ol></div>
	<div id="header" class="w">
		<div class="topbar">
			<div class="logo fl">
				<a href="toIndex.do"><img src="../images/logo1.png" width="268" height="70" alt="西安植物园"></a>
			</div>
			<div class="nav fr" id="wrap">
				<ul class="clearfix">
						<li><a href="../index/toIndex.do">首页</a></li>
						<li><a href="../news/toNews.do">新闻动态</a></li>
						<li><a href="rcap.html">加入项目</a></li>
						<li><a href="../creatProject/toCreatProject.do">创建项目</a></li>
						<li><a href="toMyProject.do">我的项目</a></li>
						<li><a href="../register/toRegister.do">注册</a></li>
						<li><a href="../login/toLogin.do">登陆</a></li>
						<li><a href="../teacherStrength/toTeachersStrength.do">师资力量</a></li>
				</ul>
			</div>
		</div>
		<div class="topphoto" >
			<img src="../images/lt.png" alt="" width="1039" height="90">
		</div>
	</div>
	<!-- 头部结束 -->
	<!-- 主体开始 -->
	<div id="main" class="w">
		<div class="l_box_title">
			<span class="name">我的项目</span>
		</div>
		<div class="main_box">
			<table width="1000" border="2" cellpadding="0" cellspacing="0" class="main_table">
				<tbody>
				<tr>
					<td colspan="9" class="table_title">项目信息管理</td>
				</tr>
				<tr class="table_subtitle">
					<td width="%">项目名称</td>
					<td width="%">项目负责人</td>
					<td width="%">开发人数</td>
					<td width="%">立项时间</td>
					<td width="%">更新时间</td>
					<td width="%">任务优先级</td>
					<td width="%">项目状态</td>
					<td width="%">项目进度</td>
					<td width="%">提交</td>
				</tr>
				<tr>
					<td>会议注册系统</td>
					<td>任勃</td>
					<td>3</td>
					<td>2017-03-13</td>
					<td>2017-03-13</td>
					<td>急</td>
					<td>待开发</td>
					<td><progress value="0" max="100"></progress></td>
					 <td><input type="file" name="" id=""></td>
				</tr>
				<tr>
					<td>学生管理系统</td>
					<td>任勃</td>
					<td>3</td>
					<td>2017-03-13</td>
					<td>2017-03-13</td>
					<td>急</td>
					<td>开发中</td>
					<td><progress value="50" max="100"></progress></td>
					 <td><input type="file" name="" id=""></td>
				</tr>
				<tr>
					<td>校园管理系统</td>
					<td>任勃</td>
					<td>3</td>
					<td>2017-03-13</td>
					<td>2017-03-13</td>
					<td>急</td>
					<td>已完成</td>
					<td><progress value="100" max="100"></progress></td>
					<!--<td><a href="#">查看</a>丨<a href="#">加入</a></td>-->
                    <td><input type="file" name="" id=""></td>
				</tr>
				<table border="0" width="1000" class="main_page">
					<tbody>
						<tr>
							<td width="50%">共  <span class="page_text">5</span>  页  |  第  <span class="page_text">1</span>  页</td>
							<td width="40%" align="right">【 <a href="#">首页</a> | <a href="#">上一页</a> | <a href="#">下一页</a> | <a href="">末页</a> 】</td>
							<td width="10%">转至  <input type="text" size="1">  页</td>
						</tr>
					</tbody>
				</table>
				</tbody>
			</table>
		</div>
	</div>
	<!-- 主体结束 -->
	<!-- 页脚开始 -->
	<div id="footer" class="w">
		<br>
		<p>地址：西安市临潼区陕鼓大道西安科技大学 邮编 710600 </p>
		<p>版权所有：© 陕西省西安市临潼区西安科技大学</p>
	</div>
	<!-- 页脚结束 -->
</body>
</html>