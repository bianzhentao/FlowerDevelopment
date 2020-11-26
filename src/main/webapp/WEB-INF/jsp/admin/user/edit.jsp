<%@ page language="java" pageEncoding="UTF-8"%>
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
    <%--头部--%>
    <%@ include file="/WEB-INF/jsp/admin/left.jsp" %>

    <div class="daohang">
        <ul>
            <li><a type="button" class="am-btn am-btn-default am-radius am-btn-xs" href="${pageContext.request.contextPath}/admin/home"> 首页 </a></li>
        </ul>
    </div>

    <div class="admin-biaogelist">

        <div class="listbiaoti am-cf">
            <ul class="am-icon-flag on"> 编辑用户</ul>
            <dl class="am-icon-home" style="float: right;">当前位置： 首页 > 用户列表 ><a href="#">  编辑用户</a></dl>
        </div>

        <div class="am-tabs am-margin" data-am-tabs>
            <ul class="am-tabs-nav am-nav am-nav-tabs">
                <li><a href="#tab1">用户信息</a></li>
            </ul>
            <div class="am-tabs-bd">
                <div class="am-tab-panel am-fade" id="tab1">
                    <form class="am-form" id="userAction_save_do" name="Form1" action="${pageContext.request.contextPath}/user/edit.action?uid=${user.uid}" method="post" >
                        <div class="am-g am-margin-top-sm">
                            <div class="am-u-sm-4 am-u-md-2 am-text-right">
                                账号名称
                            </div>
                            <div class="am-u-sm-8 am-u-md-4 am-u-end">
                                <input type="text" name="username" class="am-input-sm" value="${user.username }"/>
                            </div>
                        </div>

                        <div class="am-g am-margin-top-sm">
                            <div class="am-u-sm-4 am-u-md-2 am-text-right">
                                账号密码
                            </div>
                            <div class="am-u-sm-8 am-u-md-4 am-u-end">
                                <input type="text" name="password" value="${user.password }" class="am-input-sm"/>
                            </div>
                        </div>


                        <div class="am-g am-margin-top-sm">
                            <div class="am-u-sm-4 am-u-md-2 am-text-right">
                                会员姓名
                            </div>
                            <div class="am-u-sm-8 am-u-md-4 am-u-end">
                                <input type="text" name="name" value="${user.name }" class="am-input-sm"/>
                            </div>
                        </div>

                        <div class="am-g am-margin-top-sm">
                            <div class="am-u-sm-4 am-u-md-2 am-text-right">
                                会员电话
                            </div>
                            <div class="am-u-sm-8 am-u-md-4 am-u-end">
                                <input type="text" name="phone" value="${user.phone }" class="am-input-sm"/>
                            </div>
                        </div>

                        <div class="am-g am-margin-top-sm">
                            <div class="am-u-sm-4 am-u-md-2 am-text-right">
                                会员邮箱
                            </div>
                            <div class="am-u-sm-8 am-u-md-4 am-u-end">
                                <input type="text" name="email" value="${user.email }" class="am-input-sm"/>
                            </div>
                        </div>

                        <div class="am-g am-margin-top-sm">
                            <div class="am-u-sm-4 am-u-md-2 am-text-right">
                                会员地址
                            </div>
                            <div class="am-u-sm-8 am-u-md-4 am-u-end">
                                <input type="text" name="addr" value="${user.addr }" class="am-input-sm"/>

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
            </div>
        </div>


        <div class="foods">
            <ul>
                版权所有@2019
            </ul>
            <dl>
                <a href="" title="返回头部" class="am-icon-btn am-icon-arrow-up"></a>
            </dl>
        </div>

    </div>

</body>
</HTML>