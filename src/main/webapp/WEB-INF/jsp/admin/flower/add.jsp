<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<HTML>
<HEAD>
    <meta http-equiv="Content-Language" content="zh-cn">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>花店后台管理系统</title>
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
        <ul class="am-icon-flag on"> 商品管理</ul>
        <dl class="am-icon-home" style="float: right;">当前位置： 首页 ><a href="#">添加鲜花</a></dl>
    </div>

    <div class="fbneirong">
        <form id="userAction_save_do" name="Form1" class="am-form"
              action="${pageContext.request.contextPath}/admin/adminFlowerController/add.action?page=${pList.page}"
              method="post" enctype="multipart/form-data">

            <div class="am-form-group am-cf">
                <div class="zuo">鲜花名称：</div>
                <div class="you">
                    <input type="text" name="pname" class="am-input-sm" placeholder="请输入鲜花名称">
                </div>
            </div>

            <div class="am-form-group am-cf">
                <div class="zuo">市场价格：</div>
                <div class="you">
                    <input type="text" name="marketPrice" class="am-input-sm" placeholder="请输入市场价格">
                </div>
            </div>

            <div class="am-form-group am-cf">
                <div class="zuo"> 商城价格：</div>
                <div class="you">
                    <input type="text" name="shopPrice" class="am-input-sm" placeholder="请输入商城价格">
                </div>
            </div>

            <div class="am-form-group am-cf">
                <div class="zuo">产品图片：</div>
                <div class="you" style="height: 45px;">
                    <input type="file" name="upload">
                    <p class="am-form-help">请选择要上传的文件...</p>
                </div>
            </div>

            <div class="am-form-group am-cf">
                <div class="zuo">所属的二级分类：</div>
                <div class="you">
                    <select name="csid">
                        <c:forEach items="${list }" var="l">
                            <option value="${l.csid }">${l.csname}</option>
                        </c:forEach>
                    </select>
                </div>
            </div>

            <div class="am-form-group am-cf">
                <div class="zuo">是否热门：</div>
                <div class="you">
                    <select name="isHot">
                        <option value="1">是</option>
                        <option value="0">否</option>
                    </select>
                </div>
            </div>

            <div class="am-form-group am-cf">
                <div class="zuo">商品描述：</div>
                <div class="you">
                    <textarea name="pdesc" rows="2"></textarea>
                </div>
            </div>

            <div class="am-form-group am-cf">
                <div class="you" style="margin-left: 11%;">
                    <button type="submit" class="am-btn am-btn-success am-radius">发布</button>&nbsp; &raquo; &nbsp;
                    <button type="button" class="am-btn am-btn-secondary am-radius" onclick="history.go(-1)">返回</button>
                </div>
            </div>
        </form>
    </div>
</div>
</body>
</HTML>