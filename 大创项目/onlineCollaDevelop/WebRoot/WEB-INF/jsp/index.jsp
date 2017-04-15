<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
     <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no" />
	<title>基于项目管理流程的校园软件项目协同平台</title>
		<link rel="stylesheet" type="text/css" href="../css/index.css">
	<link rel="stylesheet" type="text/css" href="../bootstrap/dist/css/bootstrap.min.css"/>

	<script type="text/javascript" src="../js/jquery-1.9.1.min.js"></script>
	<script type="text/javascript" src="../js/Validform_v5.3.2_min.js"></script>
	<script type="text/javascript">
	    $(function(){
	        $('#off-body').click(function(){
	            $('body').css({'background':'#e8e7e7 '})
	            $(this).hide();
	        });
	    });
	     
	</script>
	<style type="text/css">
         ul{
            list-style-type: none;
        }
        
        #wrap li{
            background: #006725;
        }
        #wrap a{
            color: #fff;
            text-decoration: none;
            display: block;
            width: 100px;
            height:50px;
            line-height:50px;
            text-align: center;
        }
        #wrap li:hover{
            background:#ff6709;
        }
        #wrap li ul{
            position: absolute;
            display: none;
        }
    </style>
    <script type="text/javascript">
        $(document).ready(function(){
            $("#wrap li").hover(function(){
                $(this).children("ul").slideToggle();
            });
        });
    </script>
</head>
<body style="background:url(../images/123.jpg) no-repeat center 0px;">
	
		<!-- 头部开始 --><div align="right"><ol><li><h1><em><font face="Adobe 黑体 Std R"><strong></strong></font><font face="隶书" size="4" color="#0000ff"><u><strong>
		<a href="../myInformation/toMyInformation.do">admin:欢迎您!!!</a></strong></u></font></em></h1></li>
		<li><font face="隶书" size="4" color="#0000ff"><u><a href="../exit/toExit.do">退出</a><br><br></u></font></li></ol></div>
		<div id="header" class="w"><div align="right"> 
			</div><div class="topbar">
				<div class="logo fl">
					<font size="3"><a href="toIndex.do"><img height="70" width="268" src="../images/logo1.png" alt="西安科技大学"></a></font>
				</div>
				<div class="nav fr" id="wrap">
					<ul class="clearfix">
						<li><a href="toIndex.do">首页</a></li>
						<li><a href="../news/toNews.do">新闻动态</a></li>
						<li><a href="../jion/toJion.do">加入项目</a></li>
						<li><a href="../creatProject/toCreatProject.do">创建项目</a></li>
						<li><a href="../myProject/toMyProject.do">我的项目</a></li>
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
			<!-- 焦点图开始 -->
			<div class="focus">
				<div class="photo">
					<ul>
						<li style="left:0;"><a><img src="../images/banner_01.jpg" alt="" width="1042" height="320"></a></li>
						<li><a><img src="../images/banner_03.jpg" alt="" width="1042" height="320"></a></li>
						<li><a><img src="../images/banner_04.jpg" alt="" width="1042" height="320"></a></li>
					</ul>
				</div>
				<div class="focus_btn"></div>
			</div>
			<!-- 焦点图结束 -->
			<!--会议掠影开始-->
			<div class="mt15">
			    <div class="sketch fl w744 locating">
			        <div class="h locating">
			            <a href="javascript:;"  title="往期团队" style="left: 296px; width: 179px;"></a>
			        </div>
			        <div class="b">
			            <div id="scroll">
			                <ul class="img-z">
			                 	<li><a href="javascript:;"><img alt="" src="../images/ly01.jpg" width="292" height="193" /><span class="transparent"></span><em>人员合照</em></a></li> 
			                 	<li><a href="javascript:;"><img alt="" src="../images/ly02.jpg" width="292" height="193" /><span class="transparent"></span><em>开场致辞</em></a></li>                     
			                 	<li><a href="javascript:;"><img alt="" src="../images/ly03.jpg" width="292" height="193" /><span class="transparent"></span><em>参会领导</em></a></li>
			                 	<li><a href="javascript:;"><img alt="" src="../images/ly04.jpg" width="292" height="193" /><span class="transparent"></span><em>互动环节</em></a></li>
			                 	<li><a href="javascript:;"><img alt="" src="../images/ly05.jpg" width="292" height="193" /><span class="transparent"></span><em>交流探讨</em></a></li> 
			                 	<li><a href="javascript:;"><img alt="" src="../images/ly06.jpg" width="292" height="193" /><span class="transparent"></span><em>热烈讨论</em></a></li>           
			                </ul>
			            </div>
			        </div>
			        <div id="scroll_btn">
			        	<a href='javascript:;' id="iLeft_btn" title="左"></a>
			        	<a href='javascript:;' id="iRight_btn" title="右"></a>
			        </div>
			    </div>
			</div>
			<!--会议掠影结束-->
			<!--会议简介开始-->
			<div class="main_hy fr">
					<div class="ht">
						<div class="ht_l">
							<a href="hyjj.htm" target="_blank"><img src="../images/icon-hy.png" width="24" height="24" /><h2 style="margin-top:-5px;">平台简介</h2></a>
						</div>
						<div class="ht_r">
							<span class="gd"><a href="hyjj.htm" target="_blank">更多>></a></span>
						</div>
					</div>
					<div class="hc">
						<marquee scrollamount="2" direction="up" onMouseMove="stop()" onMouseOut="start()" style="margin-right:20px; margin-left:-10px; font-size:16px; color:#207D9F;">校园软件项目管理平台，是对于当今学校里、学生、老师之前项目申请与进度查看之间的不方便而建立的。利用智能推送，将项目进行发布。让学生们第一时间能够有机会选择自己想报的项目。该平台包括项目申报、项目查看、项目管理、项目推送。</marquee>
					</div>
				</div>
			</div>
            <!--内容-->
             <div class="tab2" style="padding-top: 15px; text-align: center; background-color: #E7E7E7;">
        	<div class="container">
        		<div class="col-md-6 col-sm-6" style="margin-top: 35px;">
        			<h3>校园软件管理系统</h3>
        			<p style="color: #337AB7;">为你提供更多的项目、让你不再因为有能力而没有锻炼的机会</p>
        		</div>
        		<div class="col-md-6 col-sm-6 ">
        			<img src="../images/list5.jpg" class="img-reponsive center-block" alt="科技" />
        		</div>
        	</div>
        </div>
        <div class="tab2" style="padding-top: 15px; text-align: center; background-color: #E7E7E7;">
        	<div class="container">
        		<div class="col-md-6 col-sm-6">
        			<img src="../images/list6.jpg" class="img-reponsive center-block" alt="科技" />
        		</div>
        		<div class="col-md-6 col-sm-6" style="margin-top: 35px;">
        			<h3>最快的线上验收功能</h3>
        			<p style="color: #337AB7;">在如今的校园中，项目的规划还不是多么健全。具备验收功能的管理平台，减轻了学生与老师之间的工作</p>
        		</div>
        		
        	</div>
        </div>
        <div class="tab2" style="padding-top: 15px; text-align: center; background-color: #E7E7E7;">
        	<div class="container">
        		<div class="col-md-6 col-sm-6" \ style="margin-top: 35px;">
        			<h3>智能推送功能</h3>
        			<p style="color: #337AB7;">当完成了一个项目的时候，该平台通过智能推送、筛选，向成员提供下一个项目任务</p>
        		</div>
        		<div class="col-md-6 col-sm-6">
        			<img src="../images/list7.jpg" class="img-reponsive center-block" alt="科技" />
        		</div>
        	</div>
        </div>
			<!--会议简介结束-->
			<!--通知公告开始-->
			<div class="main_tz mt15 w">
				<div class="main_tz_l fl">
					<ul class="hy">
						<li><a href="../register/toRegister.do"><img src="../images/zcsq.jpg"></a></li>
						<li><a href="../login/toLogin.do"><img src="../images/hcwz.jpg"></a></li>
					</ul>
					<ul class="yq">
						<li><img src="../images/yqlj.png" width="205" height="60"></li>
						<li><a href="http://www.cnki.net/" target="_blank"><img src="../images/yq01.jpg" width="205" height="60"></li></a>
						<li><a href="http://www.csdn.net/" target="_blank"><img src="../images/yq02.png" width="205" height="60"></li></a>
						<li><a href="http://www.w3school.com.cn/" target="_blank"><img src="../images/yq03.png" width="205" height="60"></li></a>
					</ul>
				</div>
				<div class="main_tz_r fl">
					<div class="main_tz_tittle">
						<img src="../images/tzgg.jpg" width="505" height="56">
					</div>
					<div class="new">
						<ul class="arrow_box">
							<li>
								<div class="sy">
									<img src="../images/tz01.jpg"><a href="http://www.xazwy.com/News/18/778.html"><p>陕西省西安科技大学校园协同开发平台启动仪式</p></a>
								</div>
								<span class="dateview">2017-06-30</span>
							</li>
						</ul>
						<ul class="arrow_box">
							<li>
								<div class="sy">
									<img src="../images/tz02.jpg"><a href="http://www.xazwy.com/News/18/777.html"><p>2017年陕西省西安科技大学校园协同开发平台试运行</p></a>
								</div>
								<span class="dateview">2017-05-01</span>
							</li>
						</ul>
						<ul class="arrow_box">
							<li>
								<div class="sy">
									<img src="../images/tz03.jpg"><a href="http://www.xazwy.com/news/18/779.html"><p>西安科技大学举办平台授权活动</p></a>
								</div>
								<span class="dateview">2017-04-17</span>
							</li>
						</ul><ul><li><br></li></ul>
						<ul class="arrow_box">
							<li>
								<div class="sy">
									<img src="../images/tz04.jpg"><a href="http://www.xazwy.com/News/18/784.html"><p>日本花甲协会农学专家佐藤千秋一行访问西安科技大学</p></a>
								</div>
								<span class="dateview">2017-03-27</span>
							</li>
						</ul>
					</div>
				</div>
			</div>
			<!--通知公告结束-->
		</div>
		<!-- 主体结束 -->
		<script type="text/javascript">
			jQuery(function(){
		        /*---焦点图---*/
		        var _hdbtn=jQuery('.focus_btn')
		        var _hdfocus=jQuery('.photo li')
		        var _hdpage=0
		        var _hdlen=_hdfocus.size()
		        var _hdhtml="";

		        for(i=0;i<_hdlen;i++){
		            i==0 ? _hdhtml+="<a class='cur' href='javascript:;'></a>" : _hdhtml+="<a href='javascript:;'></a>";
		        }
		        _hdbtn.html(_hdhtml)
		        _hdfocus.eq(0).find('span,em').stop().animate({bottom:0},500)
		        _hdbtn.find('a').mouseover(function(i){
		            clearInterval(ImgSlideInt)
		            if(!jQuery(this).hasClass('cur')){
		                _hdfocus.eq(_hdpage).stop(false,true).animate({left:"-=1043"},500,function(){
		                    jQuery(this).css("left","1043px")
		                    jQuery(this).find('span,em').css("bottom",'-='+50+'px')
		                })
		                _hdpage=_hdbtn.find('a').index(this)
		                _hdfocus.eq(_hdpage).stop(false,true).animate({left:"-=1043"},500)
		                _hdfocus.eq(_hdpage).find('span,em').stop().animate({bottom:0},500)
		            }
		            jQuery(this).addClass('cur').siblings('a').removeClass('cur')
		        }).mouseout(function(){
		                    ImgSlideInt=setInterval(ImgSlide,5000)
		                })
		        ImgSlide=function(){
		            _hdfocus.eq(_hdpage).stop(false,true).animate({left:"-=1043"},500,function(){
		                jQuery(this).css("left","1043px")
		                jQuery(this).find('span,em').css("bottom",'-='+50+'px')
		            })
		            _hdpage >= _hdlen-1 ? _hdpage=0 : _hdpage++
		            _hdbtn.find('a').removeClass('cur').eq(_hdpage).addClass('cur')
		            _hdfocus.eq(_hdpage).stop(false,true).animate({left:"-=1043"},500)
		            _hdfocus.eq(_hdpage).find('span,em').stop().animate({bottom:0},500)
		        }
		        ImgSlideInt=setInterval(ImgSlide,7000)
		        /*园区掠影*/
		        var _scro=jQuery('#scroll ul');
		        var _scroLen=parseInt(_scro.find('li').size());
		        var _scroPage=0;
		        var _scroMax=Math.ceil(_scroLen/2)-1;
		        jQuery('#iRight_btn').click(function(){
		            scro(true);
		        });
		        jQuery('#iLeft_btn').click(function(){
		            scro(false);
		        });
		        scro=function(des){
		            des ? _scroPage>=_scroMax ? _scroPage=0 : _scroPage++ :	 _scroPage<=0 ? _scroPage=_scroMax : _scroPage--
		            jQuery('#scroll ul').stop(false,true).animate({marginLeft:"-"+_scroPage*624+"px"},500)
		        };
		        jQuery('.s_in').animate({width:parseInt(jQuery('.in_article .h li:eq(0)').width())+20+'px'},500)
		        jQuery('.in_article .h li').mouseover(function(){
		            var obj=jQuery('.s_in')
		            n=jQuery('.in_article .h li').index(this)
		            obj.stop(true,false).animate({width:parseInt(jQuery(this).width())+20+'px',left:jQuery(this).position().left},200,function(){
		                jQuery('.in_article .h li').eq(n).addClass('cur').siblings('li').removeClass('cur')
		                jQuery('.in_article .b').hide().eq(n).show()
		            })
        		});
		     });
		</script>
		<!-- 页脚开始 -->
		<div id="footer" class="w">
			<br>
			<p>地址：西安市临潼区陕鼓大道西安科技大学 邮编 710600 </p>
			<p>版权所有：© 陕西省西安市临潼区西安科技大学</p>
		</div>
		<!-- 页脚结束 -->
        <script src="../bootstrap/dist/js/jquery-1.10.2.min.js"></script>
		<script src="../bootstrap/dist/js/bootstrap.min.js"></script>
</body>
</html>