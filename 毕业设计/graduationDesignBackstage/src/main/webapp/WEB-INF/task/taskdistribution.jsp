﻿<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>任务分配</title>
<link href="../content/css/style.css" rel="stylesheet" type="text/css" />
<script src="../content/js/jquery.js" language="javascript"></script>
<script src="../content/js/globle_select.js"></script>
<script type="text/javascript" src="../content/js/commonutil.js"></script>
<script type="text/javascript" src="../content/js/commonalert.js"></script>
<script type="text/javascript" src="../content/js/jquery.easyui.min.js"></script>
<script type="text/javascript" src="../content/js/jquery-form.js"></script>
<script src="../laydate/laydate.js"></script>
<style>
.cp{width:500px; height:auto; background:#FFF; border:1px solid #ccc; padding:10px; position:absolute; box-shadow:5px 5px #ccc; margin-top:10px;}
.cp i{font-style:normal}
.cp h1{font-size:14px; border-bottom:1px solid #6CF; padding-bottom:10px; margin-bottom:10px;}
.cp h1 span{float:right; cursor:pointer; padding:0px 5px; background:#ff9900; color:#FFF; border-radius:10px;}
.cp .li-left{float:left; width:50px; font-size:12px; font-weight:bold; color:#F60; margin-right:15px; line-height:30px;}
.cp .li-right{float:left; width:420px;}
.cp .li-right dl{float:left; width:128px; line-height:30px; margin-right:5px; border:1px #fff solid}
.cp .li-right dl h2{font-size:12px; font-weight:100}
.cp .li-right dl h2.on{border-left:1px solid #ccc;border-top:1px solid #ccc; cursor:pointer; border-right:1px solid #ccc; background:#EEE}
.cp .cpchild{width:500px; height:auto; border:1px solid #ccc;background:#FFF; padding:10px; position:absolute; top:0px; left:0px; display:none}
.cp .cpchild dt{width:170px; float:left; display:block}
.schild{width:450px; padding:5px; position:absolute; top:0px; left:0px; background:#ff9900; border-radius:5px;}
.schild i{font-style:normal; color:#ff9900; font-size:30px; margin-left:-14px; position:absolute}
</style>
<script>
//滑动门JS
$(document).ready(function() {
    $("#blockquote_title a").each(function(index, element) {
        $(this).click(function(){
			$("#blockquote_title a").each(function(index, element) {
				$(this).attr('class','linkout');
			})
			$(this).attr('class','linkon');
			var k = index;
			$("#blockquote_content blockquote").each(function(indexs, element) {
			  $(this).css('display','none');
			  if(k==indexs) $(this).css('display','');
			});
		});
    });
	$("#blockquote_content blockquote").each(function(index, element) {
      if(index!=0) $(this).css('display','none');
    });
});

function closeDiv(obj){
	$(obj).parent().css('display','none');
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
        .black_overlay
        {
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
            filter: alpha(opacity=35);
        }
        
        .white_content
        {
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
<h1 class="globle_title2"><img src="../content/images/tag.gif" /> 任务管理 → <a href="taskProject.do" ><em>任务列表</em></a>→ <em>任务分配</em></h1>
<div class="sytxq_conment_wk">

<div class="sytxq_conment_wk_bx">
  <div class="syt_lb">
    <div class="syt_lb_top">
      <h1 class="syt_lb_top_titleh1">查询条件</h1>
    </div>
    <div class="syt_lb_top_conment">
    <div class="fandr">
      <div class="form-groupl">
      	项目名称： 
      	<input type="text" value="${project.projname }" class="syt_lb_top_conment_txt" readonly></input>
      	执行人：
        <select id="email" class="input_b">
          <option selected="selected" value="-1">---全部---</option>
           <c:forEach items="${map }" var="li" varStatus="idxStatus">
          	<option value="${li.key }">${li.value }</option>
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
    <h1>  ∷ 任务分配表 ∷</h1>
  </div>
  </div>
  <table width="100%" border="0" cellspacing="1" cellpadding="0" class="autotable2">
    <tr class="titletr">
      <td>项目</td>
      <td>执行人</td>
      <td>开始时间</td>
      <td>截止时间</td>
      <td>任务描述</td>
      <td>操作</td>
    </tr>
   <c:forEach items="${tasklist }" var="li" varStatus="idxStatus">
    	 <c:if test="${idxStatus.index%2==1 }">
		 <tr class="whittr" data-itemid="${li.id }">
		 </c:if>
		 <c:if test="${idxStatus.index%2==0 }">
		 <tr class="lantr" data-itemid="${li.id }">
		 </c:if>
      <td>${project.projname }</td>
      <td>${li.name}</td>
      <td><fmt:formatDate value="${li.startuptime }"pattern="yyyy-MM-dd" /></td>
	  <td><fmt:formatDate value="${li.endtime }"pattern="yyyy-MM-dd" /></td>
      <c:if test="${li.description!=null }">
		  <td title="${li.description }">
		   	<a href="download.do?filePath=${li.taskfile }" >${fn:substring(li.description, 0, 10)}...</a>
		  </td>
	   </c:if>
	   <c:if test="${li.description==null }">
		  <td>待分配</td>
	  </c:if>
      <td>
      <c:if test="${li.email==project.projemail }">已分配(禁止操作)</c:if>
      <c:if test="${li.email!=project.projemail }">
      <a href="javascript:void(0);" onclick="distributionfunct('${li.id}');">分配(修改)</a>
	  </c:if>
      </td>
    </tr>
   </c:forEach>
  </table>
  <div class="sytxq_conment"></div>
</div>
</div>
<!--弹出层---->
<div id="fade" class="black_overlay">
</div>
 <div id="MyDiv" class="white_content">

<div class="sdcq_tck">
            <img src="../content/images/hong.gif" class="sdcq_tck_right_cha" width="1" height="16" onclick="CloseDiv2('MyDiv','fade')" />
            <div class="sdcq_tck_hong">
                <h1 class="globle_title3"><img src="../content/images/tcc_b.png" style=" vertical-align:middle" /> 分配任务
                <a style="color:red;text-align:left;">注：1.上传文件格式为txt/doc/docx/pdf。2.建议文件大小不超过40k。</a>
                </h1>
    </div>
            <div class="sdcq_tck_conment">
      <form id="taskDistributionHandle" enctype="multipart/form-data">
	      <table width="100%" border="0" cellspacing="1" cellpadding="0" class="autotable2" style="margin:1px auto">
	        <tr>
	          <td width="15%" align="center"; bgcolor="#FFFFFF" >任务上传</td>
	          <td  height="38" width="88%" bgcolor="#FFFFFF" >
	            <input  type="file"  name="file" id="resultfile" class="syt_lb_top_conment_txt" style="margin:10px; width:223px;" />
	            <input  type="text"  name="id" id="id" style="display:none" />
	            <input  type="text"  name="projectid" value="${project.projid}" style="display:none" />
	          </td>
	        </tr>
	        <tr>
	          <td width="15%" align="center"; bgcolor="#FFFFFF" >任务简要描述</td>
	          <td  height="38" width="88%" bgcolor="#FFFFFF" >
	            <textarea name="description" rows="4" class="textarea_wby" id="description" ></textarea>
	          </td>
	        </tr>
	      </table>
	   </form>
              <div class="win_btn">
              <button type="button" id="tsave" class="chaxun_but2">确认</button> 
              <button type="button" class="chaxun_but2" onclick="CloseDiv2('MyDiv','fade');">取消</button>
              </div>
            </div>
           
            <div class="sdcq_tck_baidi"></div>

</div>
</div>
 <script>
 function distributionfunct(id){
	 ShowDiv2('MyDiv', 'fade');
	 $("#id").val(id);
 }
  $(document).ready(function() {
		$("#email").val("${backemail}");//回显
		$("#CriteriaQuery").click(function() {
			if($("#email").val()!='-1'){
				window.location.href ="taskDistribution.do?projid=${project.projid }&projemail="+$("#email").val()+"";
			}else{
				window.location.href ="taskDistribution.do?projid=${project.projid }";
			}
		});
		$("#tsave").click(function(){
			var resultfile = $("#resultfile").val();  
			var resultfileExtension = resultfile.substr(resultfile.lastIndexOf('.') + 1);  
			var dateObj=new Date();
			if(verifynull("resultfile") && verifynull("description")) {
			}else{
				return;
			}
			if($("#resultfile").val()!=''){
				if (resultfileExtension != 'txt' && resultfileExtension != 'doc'  
				&& resultfileExtension != 'docx' && resultfileExtension != 'pdf') {  
					_alert("please upload file that is a file",2);  
					return ;  
				}  
			}
			_confirm("是否分配此项任务？",1,"add()");
		});
	})
	function add(){
		$("#taskDistributionHandle").ajaxSubmit({  
			type : 'POST',
			url : 'taskDistributionHandle.do', 
			success : function(result) {
				CloseDiv2('MyDiv','fade');
				if (result.status == '0') {
					_alert(result.msg);
				}else{
					_alert(result.msg,2);
				}
			},  
			error : function() {  
			   _alert("任务分配失败，请检查网络后重试",2);  
			}  
		}); 
	}
</script>     
</body>
</html>
