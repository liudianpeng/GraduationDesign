﻿<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>项目列表</title>
<link href="../content/css/style.css" rel="stylesheet" type="text/css" />
<script src="../content/js/commonalert.js" type="text/javascript"  charset="utf-8"></script>
<script src="../content/js/jquery.js" language="javascript"></script>
<script src="../content/js/globle_select.js"></script>

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
            top: 25%;
            left: 35%;
            width: 50%;
            height: auto;
            z-index: 1002;
            overflow: hidden;
            padding-bottom: 20px;
        }
    </style>
</head>

<body>
<div class="syt_lb">
  <div class="syt_lb_top">
    <h1 class="syt_lb_top_titleh1">查询条件</h1>
  </div>
  <div class="syt_lb_top_conment">
    <div class="fandr">
      <div class="form-groupl">申请人：
        <select id="state" class="input_b">
          <option selected="selected" value="-1">---全部---</option>
          <option value="1">任勃</option>
          <option value="2">董美丽</option>
          <option value="3">对对对</option>
      </select>
          审核类型：
      <select id="state" class="input_b">
          <option selected="selected" value="-1">---全部---</option>
          <option value="1">启动审核</option>
          <option value="2">结题审核</option>
          <option value="3">已完成审核</option>
      </select>
       	担任角色：
      <select id="state" class="input_b">
          <option selected="selected" value="-1">---全部---</option>
          <option value="1">参与项目</option>
          <option value="2">创建项目</option>
      </select>
      </div>
      <button type="submit" class="chaxun_but" id="search">查询</button>
    </div>
    <div class="clearfix"></div>
  </div>
</div>
<div class="globle_bck">
  <div class="syt_lb_top">
    <h1 class="syt_lb_top_titleh1"> ∷审核项目列表∷ </h1>
  </div>
  <table width="100%" border="0" cellspacing="1" cellpadding="0" class="autotable2">
    <tr class="titletr">
      <td>项目名称</td>
      <td>申请人</td>
      <td>指导人</td>
      <td>总开发人数</td>
      <td>当前人数</td>
      <td>创建时间</td>
      <td>截止时间</td>
      <td>项目状态</td>
      <td>审核类型</td>
      <td>操作</td>
    </tr>
    <tr class="whittr">
      <td>计算机开发</td>
      <td title="18829348437">任勃</td>
      <td title="18829348437">任勃</td>
      <td>3</td>
      <td>3</td>
      <td>2014-05-06</td>
      <td>2014-05-06</td>
      <td>驳回</td>
      <td>启动审核</td>	
      <td><a href="../projectAuditController/projectChakan.do" >审核</a>&nbsp;&nbsp;
      	  <a href="javascript:void(0);" onclick="_confirm('是否删除此记录？',1,'shangbaojia()');">删除</a></td>
    </tr>
    
  </table>
  <!--分页-->
</div>
<!--弹出层---->
<div id="fade" class="black_overlay">
</div>
 <div id="MyDiv" class="white_content" style="display: none;">

<div class="sdcq_tck">
            <img src="../content/images/hong.gif" class="sdcq_tck_right_cha" width="1" height="16" onclick="CloseDiv2('MyDiv','fade')" />
            <div class="sdcq_tck_hong">
                <h1 class="globle_title3"><img src="../content/images/tcc_b.png" style=" vertical-align:middle" /> 审批意见</h1>
                
    </div>
            <div class="sdcq_tck_conment">
                
                 <table width="100%" border="0" cellspacing="0" cellpadding="0" class="table_xq">
   
    
    <tr>
      <td class="table_xqa">审批意见：</td>
      <td class="table_xqb"><textarea name="txtOpinion" rows="4" readonly="readonly" class="textarea_wby" id="txtOpinion2"></textarea></td>
    </tr>
    <tr>
      <td class="table_xqa">采购结论审核意见：</td>
      <td class="table_xqb"><input type="radio" name="radio" id="radio" value="radio" />
          审核通过
          <input name="radio" type="radio" id="radio2" value="radio" checked="checked" />
          审核未通过
          <input name="radio" type="radio" id="radio2" value="radio" checked="checked" />
          驳回</td>
    </tr>
  </table>
              <div class="win_btn"><button type="submit" class="chaxun_but2">确认</button> <button type="submit" class="chaxun_but2">取消</button></div>
            </div>
           
            <div class="sdcq_tck_baidi"></div>

</div>
</div>


</body>

<script>
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


</html>
