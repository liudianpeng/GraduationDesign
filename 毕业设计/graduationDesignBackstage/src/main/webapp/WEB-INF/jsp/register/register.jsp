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
	<script type="text/javascript">       
$(function(){
	//电话号码验证
	function verifymobile(id){
		var reg=/^1\d{10}$|^(0\d{2,3}-?|\(0\d{2,3}\))?[1-9]\d{4,7}(-\d{1,8})?$/;
	    var result= reg.test($("#"+id+"").val());
	    if(!result){
	        alert("请填写正确电话号码格式！",2);
	        $("#"+id+"").val("");
			return false;
	    }
		return true;
	}
  //注册按钮单击处理
  $("#regist_button").click(function(){
  	//隐藏所有提示信息
  	$("#warning_1").hide();
  	$("#warning_2").hide();
  	$("#warning_3").hide();
  	$("#warning_4").hide();
  	//获取要提交的数据
  	var password = $("#password").val().trim();
  	var email = $("#email").val().trim();
  	var phone = $("#phone").val().trim();
  	var role = $("#role").val().trim();
  	//检测数据格式
  	var flag = true;
  	if(password == ""){
  		$("#warning_1").html("2-16个字符");
  		$("#warning_1").show();
  		flag = false;
  	}
  	if(email == ""){
  		$("#warning_2").html("请输入常用的电子邮箱");
  		$("#warning_2").show();
  		flag = false;
  	}
  	if(phone == ""){
  	  	$("#warning_3").html("请输入中国大陆手机号码");
  		$("#warning_3").show();
  		flag = false;
  	}
  	if(role == ""){
  	  	$("#warning_4").html("请选择角色");
  		$("#warning_4").show();
  		flag = false;
  	}
  	//发送ajax请求
  if(flag){	
  	$.ajax({
  		url:"regist.do",
  		type:"post",
  		dataType:"json",
  		data:{"password":password,
  			"email":email,
  			"phone":phone,
  			"role":role
  			},
  		success:function(result){
  			if(result.status==0){//成功
  				window.location.href="http://localhost:8088/onlineCollaDevelop/login/toLogin.do"
  			}else if(result.status==1){//用户名被占用
  				$("#warning_1").html(result.msg);
  				$("#warning_1").show();
  			}
  		}
  		
  	});
  }
  });
});
	</script>
</head>
<body style="background:url(../images/123.jpg) no-repeat center 0px;">
	
	<!-- 头部开始 -->
	<jsp:include page="../common/header.jsp"/>
	<!-- 头部结束 -->
	<!-- 主体开始 -->
	<div id="main" class="w">
		<div class="l_box fl">
			<div class="l_box_title">
				<span class="name">注册申请</span>
			</div>
			<div class="l_box_content">
				<div style="margin:20px auto; text-align:center; width:500px;">
					<form class="registerform" method="post" action="">
			            <table width="100%" style="table-layout:fixed;">
			                <tr>
			                    <td class="need">*</td>
			                    <td class="txt">电子邮箱：</td>
			                    <td><input type="text" id="email"  name="email" class="inputxt" datatype="e" errormsg="请输入正确的格式！"  /></td>
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
			                    <td class="txt">手机号码：</td>
			                    <td><input type="text" value="" id="phone" name="tel" class="inputxt" datatype="m" errormsg="手机号码输入有误！"  /></td>
			                    <td><div class="Validform_checktip" id="warning_3"></div></td>
			                </tr>
			                
			                <tr>
			                    <td class="need">*</td>
			                    <td class="txt">角色：</td>
			                    <td>
			                    	<select name="province" id="role"  datatype="*" nullmsg="请选择！" errormsg="请选择所在国家！">
				                    	<option value="1">--请选择--</option>      
								        <option value="1">学生</option>  
					        			<option value="2">教师</option> 
				                    </select>
			                    </td>
			                    <td><div class="Validform_checktip" id="warning_4"></div></td>
			                </tr>
			                <tr>
			                    <td class="need"></td>
			                    <td></td>
			                    <td colspan="2">
			                        <input type="button" id="regist_button" class="confirm" value="注册" /> <input type="reset" class="clear" value="重置" />
			                    </td>
			                </tr>
			            </table>
			        </form>
				</div>
			</div>
		</div>
	</div>
	<!-- 主体结束 -->
	<!-- 页脚开始 -->
	<jsp:include page="../common/foot.jsp"/>
	<!-- 页脚结束 -->
</body>

<script type="text/javascript" src="../html/js/Validform_v5.3.2_min.js"></script>
<!-- <script type="text/javascript">
	$(function(){
		$(".registerform").Validform({
			tiptype:2
		});
	});
</script> -->
</html>
