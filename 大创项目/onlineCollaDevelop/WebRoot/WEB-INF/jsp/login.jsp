<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>注册申请-基于项目管理流程的校园软件项目协同平台</title>
	<link rel="stylesheet" type="text/css" href="../css/validform.css">
	<link rel="stylesheet" type="text/css" href="../css/base.css">
	<style type="text/css">
		body{ margin:0; padding:0; font:normal 14px/24px "\5FAE\8F6F\96C5\9ED1";}
	</style>
	<script type="text/javascript" src="../js/jquery-1.9.1.min.js"></script>
	
</head>
<body style="background:url(../images/123.jpg) no-repeat center 0px;">
	
	<!-- 头部开始 --><!-- 头部开始 --><div align="right"><ol><li><h1><em><font face="Adobe 黑体 Std R"><strong></strong></font><font face="隶书" size="4" color="#0000ff"><u><strong><a href="../myInformation/toMyInformation.do">admin:欢迎您!!!</a></strong></u></font></em></h1></li><li><font face="隶书" size="4" color="#0000ff"><u><a href="../exit/toExit.do">退出</a><br><br></u></font></li></ol></div>
	<div id="header" class="w">
		<div class="topbar">
			<div class="logo fl">
				<a href="../index/toIndex.do"><img src="../images/logo1.png" width="268" height="70" alt="西安科技大学"></a>
			</div>
			<div class="nav fr" id="wrap">
				<ul class="clearfix">
						<li><a href="../index/toIndex.do">首页</a></li>
						<li><a href="../news/toNews.do">新闻动态</a></li>
						<li><a href="../jion/toJion.do">加入项目</a></li>
						<li><a href="../creatProject/toCreatProject.do">创建项目</a></li>
						<li><a href="../myProject/toMyProject.do">我的项目</a></li>
						<li><a href="../register/toRegister.do">注册</a></li>
						<li><a href="toLogin.do">登陆</a></li>
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
		<div class="l_box fl">
			<div class="l_box_title">
				<span class="name">登陆</span>
			</div>
			<div class="l_box_content">
				<div style="margin:20px auto; text-align:center; width:500px;">
					<form class="registerform" method="post" action="">
			            <table width="100%" style="table-layout:fixed;">
			                
			                <tr>
			                    <td class="need">*</td>
			                    <td class="txt">电子邮箱：</td>
			                    <td><input type="text" value="" id="email" name="email" class="inputxt" datatype="e" errormsg="请输入正确的格式！"  /></td>
			                    <td><div class="Validform_checktip" id="warning_2"></div></td>
			                </tr>
			                <tr>
			                    <td class="need" style="width:10px;">*</td>
			                    <td class="txt">密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码：</td>
			                    <td ><input type="password" name="password" id="password" class="inputxt" datatype="s2-16" errormsg="用户名至少2个字符,最多16个字符！" /></td>
			                    <td><div class="Validform_checktip" id="warning_1"></div></td>
			                </tr>
			               <tr>
			                    <td class="need">*</td>
			                    <td class="txt">角色：</td>
			                    <td>
			                    	<select name="role" id="role" datatype="*" nullmsg="请选择！" errormsg="请选择所在国家！">
				                    	<option value="1">--请选择--</option>      
								        <option value="1">学生</option>  
				                    </select>
			                    </td>
			                    <td><div class="Validform_checktip"></div></td>
			                </tr>
			                <tr>
			                    <td class="need"></td>
			                    <td></td>
			                    <td colspan="2">
			                        <input type="button" id="login" class="confirm" value="登录" /> <input type="reset" class="clear" value="重置" />
			                    </td>
			                </tr>
			            </table>
			        </form>
				</div>
			</div>
		</div>
		<div class="r_box fr">
			<div class="r_box_hy">
					<ul class="hy">
						<div class="l_box_title">
							<span class="name">注册入口</span>
						</div>
						<li class="b"><a href="../register/toRegister.do"><img src="../images/zcsq.jpg"></a></li>
						<div class="l_box_title">
							<span class="name">登录入口</span>
						</div>
						<li class="b"><a href="toLogin.do"><img src="../images/hcwz.jpg"></a></li>
					</ul>
					<ul class="yq">
						<li><img src="../images/yqlj.png" width="205" height="60"></li>
						<li><a href="http://www.xazwy.com/" target="_blank"><img src="../images/yq01.jpg" width="205" height="60"></li></a>
						<li><a href="http://www.xab.cas.cn/" target="_blank"><img src="../images/yq02.png" width="205" height="60"></li></a>
						<li><a href="http://www.ibcas.ac.cn/" target="_blank"><img src="../images/yq03.png" width="205" height="60"></li></a>
					</ul>
			</div>
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
<script type="text/javascript">
	$(function(){
	  $("#login").click(function(){
		  $("#warning_1").html("");
		  $("#warning_2").html("");
		  $("#role").html();
	   var password = $("#password").val().trim();
      	var email = $("#email").val().trim();
      	var role=$("#role").val().trim();
      	var flag = true;//通过检测
      	if(password==""){
      		$("#warning_1").html("2-16个字符");
      		flag = false;//未通过检测
      	}
      	if(email==""){
      		$("#warning_2").html("请输入注册时的电子邮箱");
      		flag = false;//未通过检测
      	}if(role==""){
      		$("#role").html("请选择角色");
      	}
      		//通过检测，发送Ajax请求
      	if(flag){
      		$.ajax({     		
      		  url:"http://localhost:8088/onlineCollaDevelop/login/loginIn.do",
      		  type:"post",
      		  data :{"password":password,"email":email,"role":role},
      		  dataType:"json",
      		  success:function(result){
      		  	if(result.status==0){//成功 		  		
      		  		window.location.href="http://localhost:8088/onlineCollaDevelop/index/toIndex.do";
      		  	}else if(result.status==1){
      		  	   $("#warning_1").html("用户名错误");
      		  	}else if(result.status==2){
      		  	  $("#warning_2").html("邮箱错误 ");
      		  	}
      		  }
		      
      		});
      	}
	 });
	});
	</script>
<!-- <script type="text/javascript" src="../js/Validform_v5.3.2_min.js"></script>
<script type="text/javascript">
	$(function(){
		$(".registerform").Validform({
			tiptype:2
		});
	});
</script> -->
</html>
