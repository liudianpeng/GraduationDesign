﻿<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no" />
	<title>师资力量-基于项目管理流程的校园软件项目协同平台</title>
    <link rel="stylesheet" type="text/css" href="bootstrap/dist/../css/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="../css/base.css">
	<style type="text/css">
		body{ margin:0; padding:0; font:normal 14px/24px "\5FAE\8F6F\96C5\9ED1";}
		.media{
    
          width: 400px;
          }
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
	
	<!-- 头部开始 -->
	<!-- 头部开始 --><div align="right"><ol><li><h1><em><font face="Adobe 黑体 Std R"><strong></strong></font><font face="隶书" size="4" color="#0000ff"><u><strong>
	<a href="../myInformation/MyInformation.do">admin:欢迎您!!!</a></strong></u></font></em></h1></li>
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
						<li><a href="../jion/toJion.do">加入项目</a></li>
						<li><a href="../creatProject/toCreatProject.do">创建项目</a></li>
						<li><a href="../myProject/toMyProject.do">我的项目</a></li>
						<li><a href="../register/toRegister.do">注册</a></li>
						<li><a href="../login/toLogin.do">登陆</a></li>
						<li><a href="toTeachersStrength.do">师资力量</a></li>
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
				<span class="name">师资力量</span>
			</div>
			<div class="l_box_content">
				<div class="l_box_content">
				<p>申请人具有博士学位，年龄40周岁以下，具有2年以上科研或工作经历。</p>
				<p>申请人在所从事领域已取得突出的学术业绩，为同龄人中的拔尖人才，已获得学术界同行的高度认可。</p> 
				<p>申请人具有广阔的学术视野和创新思维，具备成为所从事领域领军人才的潜质。</p> 
				<p>申请人学风严谨，遵守法纪及职业道德规范。</p>
			</div>
			</div>
		</div>
        <div class="tab1">
			<div class="container tab1-center" style="background-color: #ffffff;">
				
				<div class="row" style="text-align: left;  font-size: 10px;">
		         	<div class="col-md-6">
			         	<div class="media">
			         		<div class="media-left">
			         			<a href="#">
			         				<img src="../images/list.jpg" class="media-object" alt="狗狗" />
			         			</a>
			         		</div>
			         		<div class="media-body" style="font-size: 5px;">
			         			<h4 class="media-heading">高效率</h4>
			         			<p class="text-muted">对于一般的校园项目，都是学生找老师申请项目</p>
			         			<p style="color: #F92672;">管理系统采用平台推送方式，提高了速率</p>
			         		</div>
			         	</div>
			         </div>
		         	<div class="col-md-6">
			         	<div class="media">
			         		<div class="media-left">
			         			<a href="#">
			         				<img src="../images/list2.jpg" class="media-object" alt="狗狗" />
			         			</a>
			         		</div>
			         		<div class="media-body" style="font-size: 5px;">
			         			<h4 class="media-heading">易于验收</h4>
			         			<p class="text-muted">线下的验收，一般都是老师组织时间</p>
			         			<p style="color: #F92672;">平台采用线上验收模式、让老师可以在最快的时间内了解到项目的进展状况</p>
			         		</div>
			         	</div>
		             </div>
		             <div class="col-md-6">
			         	<div class="media" style="margin-top: 10px;">
			         		<div class="media-left">
			         			<a href="#">
			         				<img src="../images/list1.jpg" class="media-object" alt=""/>
			         			</a>
			         		</div>
			         		<div class="media-body" style="font-size: 5px;">
			         			<h4 class="media-heading">在线交流</h4>
			         			<p class="text-muted">时间的制定，约束了项目组成员在一起的讨论</p>
			         			<p style="color: #F92672;">线上模式，让成员之间可以方便的讨论之间的进度</p>
			         		</div>
			         	</div>
			         </div>
		         	<div class="col-md-6">
			         	<div class="media" style="margin-top: 10px;">
			         		<div class="media-left">
			         			<a href="#">
			         				<img src="../images/list3.jpg" class="media-object" alt="狗狗" />
			         			</a>
			         		</div>
			         		<div class="media-body" style="font-size: 5px;">
			         			<h4 class="media-heading">快速推送</h4>
			         			<p class="text-muted">线下项目推送的缺点：速度慢,完成了手上项目的人员不清楚是否还有新的项目</p>
			         			<p style="color: #F92672;">软件管理系统高效率的解决了该问题</p>
			         		</div>
			         	</div>
		             </div>       
                 </div>
			</div>
		</div>
		
		<!--<div class="r_box fr">
			<div class="r_box_hy">
					<ul class="hy">
						<div class="l_box_title">
							<span class="name">注册入口</span>
						</div>
						<li class="b"><a href="zcsq.html"><img src="../images/zcsq.jpg"></a></li>
						<div class="l_box_title">
							<span class="name">登录入口</span>
						</div>
						<li class="b"><a href="dlrk.html"><img src="../images/hcwz.jpg"></a></li>
					</ul>
					<ul class="yq">
						<li><img src="../images/yqlj.png" width="205" height="60"></li>
						<li><a href="http://www.xazwy.com/" target="_blank"><img src="../images/yq01.jpg" width="205" height="60"></li></a>
						<li><a href="http://www.xab.cas.cn/" target="_blank"><img src="../images/yq02.png" width="205" height="60"></li></a>
						<li><a href="http://www.ibcas.ac.cn/" target="_blank"><img src="../images/yq03.png" width="205" height="60"></li></a>
					</ul>
			</div>
		</div>
	</div>-->
	<!-- 主体结束 -->
	<!-- 页脚开始 -->
	<div id="footer" class="w">
		<br>
		<p>地址：西安市临潼区陕鼓大道西安科技大学 邮编 710600 </p>
		<p>版权所有：© 陕西省西安市临潼区西安科技大学</p>
	</div>
	<!-- 页脚结束 -->
     <script src="bootstrap/dist/../js/jquery-1.10.2.min.js"></script>
	 <script src="bootstrap/dist/../js/bootstrap.min.js"></script>
</body>
<script type="text/javascript" src="http://baike.bdimg.com/static/wiki-common/pkg/wiki-common_sync_js_0_29c88fe.js"></script>
<script type="text/javascript" src="http://baike.bdimg.com/static/wiki-lemma/pkg/wiki-lemma_31d9713.js"></script>
<script type="text/javascript">
		!function(){		
			require.async("wiki-lemma:widget/lemma_content/commonModule/map/map.js",function(init){
				!!window.ScriptLazyLoad && window.ScriptLazyLoad.regist({
					dom:$('#map2911582'),
					loadFunc:function(){
						init("containerPrefix=container&query=%E9%99%95%E8%A5%BF%E7%9C%81%E8%A5%BF%E5%AE%89%E6%A4%8D%E7%89%A9%E5%9B%AD&city=%E8%A5%BF%E5%AE%89%E5%B8%82&zoom=14&markerPosX=108.966752&markerPosY=34.214782&centerX=108.966752&centerY=34.214782&markerUid=ce5fd91795be8a4e2db17e0b&nomark=false&markerTitle=%E8%A5%BF%E5%AE%89%E6%A4%8D%E7%89%A9%E5%9B%AD&markerAddress=%E9%9B%81%E5%A1%94%E5%8C%BA%E7%BF%A0%E5%8D%8E%E5%8D%97%E8%B7%AF17%E5%8F%B7&float=hangright&desc=%E9%99%95%E8%A5%BF%E7%9C%81%E8%A5%BF%E5%AE%89%E6%A4%8D%E7%89%A9%E5%9B%AD","2911582");
						},
						distance:500
				});
			});
		}();
	</script>

</html>