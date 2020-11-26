<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<HTML>
<HEAD>
    <meta http-equiv="Content-Language" content="zh-cn">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>有爱花店后台管理系统</title>
</HEAD>

<body>
<%--头部--%>
<%@ include file="/WEB-INF/jsp/admin/adminheader.jsp" %>
<%--左侧--%>
<%@ include file="/WEB-INF/jsp/admin/left.jsp" %>

<div class="daohang">
    <ul>
        <li>
            <a type="button" class="am-btn am-btn-default am-radius am-btn-xs" href="${pageContext.request.contextPath}/admin/home"> 首页</a>
        </li>
    </ul>
</div>


<div class="admin-biaogelist">
    <div class="listbiaoti am-cf">
        <ul class="am-icon-flag on">列表管理</ul>
        <dl class="am-icon-home" style="float: right;">当前位置： 首页 ><a href="#">二级列表</a></dl>
    </div>

    <form id="userAction_save_do" name="Form1" class="am-form am-g"
          action="${pageContext.request.contextPath}/admin/adminCategorySecondController/add.action" method="post">


        <div class="am-g am-margin-top-sm">
            <div class="am-u-sm-4 am-u-md-2 am-text-right">
                二级分类名称：
            </div>
            <div class="am-u-sm-8 am-u-md-4 am-u-end">
                <input type="text" name="csname" class="am-input-sm"/>
            </div>
        </div>

        <div class="am-g am-margin-top-sm">
            <div class="am-u-sm-4 am-u-md-2 am-text-right">
                所属的一级分类：
            </div>
            <div class="am-u-sm-8 am-u-md-4 am-u-end">
                <select name="cid">
                    <c:forEach items="${list}" var="l">
                        <option value="${l.cid }">${l.cname }</option>
                    </c:forEach>
                </select>
            </div>
        </div>

        <div class="am-g am-margin-top-sm">
            <div class="am-u-sm-offset-2">

                <button type="submit" class="am-btn am-btn-success am-radius ">提交保存</button>

                <button type="button" class="am-btn am-btn-primary am-radius " onclick="history.go(-1)">返回列表</button>
            </div>
        </div>
    </form>
</div>
</body>
</HTML>