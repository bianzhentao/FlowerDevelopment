<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<HTML>
<HEAD>
    <meta http-equiv="Content-Language" content="zh-cn">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>有爱花店后台管理系统</title>
    <script type="text/javascript">
        function dianji() {
            var msg = "您确定要删除吗？";
            if (confirm(msg) == true) {
                return true;
            } else {
                return false;
            }
        }
    </script>
</HEAD>

<body>
<%--头部--%>
<%@ include file="/WEB-INF/jsp/admin/adminheader.jsp" %>
<%--左侧--%>
<%@ include file="/WEB-INF/jsp/admin/left.jsp" %>
<%--横标--%>
<div class="daohang">
    <ul>
        <li>
            <a type="button" class="am-btn am-btn-default am-radius am-btn-xs" href="${pageContext.request.contextPath}/admin/home">
                首页
            </a>
        </li>
    </ul>
</div>

<div class=" admin-content">
    <div class="admin-biaogelist">
        <div class="listbiaoti am-cf">
            <ul class="am-icon-users"> 会员管理</ul>
            <dl class="am-icon-home" style="float: right;">当前位置： 首页 ><a href="/user/findAll?page=1">用户列表</a></dl>
        </div>

        <form id="Form1" name="Form1" action="${pageContext.request.contextPath}/user/list.jsp" method="post"
              class="am-form am-g">
            <table width="100%" class="am-table am-table-bordered am-table-radius am-table-striped">
                <thead>
                <tr class="am-success">
                    <th class="table-id">序号</th>
                    <th class="table-title">账号名称</th>
                    <th class="table-type">会员姓名</th>
                    <th class="table-author am-hide-sm-only">会员电话</th>
                    <th class="table-author am-hide-sm-only">会员邮箱</th>
                    <th class="table-author am-hide-sm-only">会员地址</th>
                    <th width="130px" class="table-set">操作</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${pageBean.list }" var="l" varStatus="status">
                    <tr>
                        <td> ${status.index+1}</td>
                        <td><a href="#">${l.username}</a></td>
                        <td> ${l.name}</td>
                        <td class="am-hide-sm-only"> ${l.phone}</td>
                        <td class="am-hide-sm-only"> ${l.email}</td>
                        <td class="am-hide-sm-only"> ${l.addr}</td>
                        <td>
                            <div class="am-btn-toolbar">
                                <div class="am-btn-group am-btn-group-xs">

                                    <a href="${ pageContext.request.contextPath }/user/toEdit.action?uid=${l.uid}"
                                       class="am-btn am-btn-default am-btn-xs am-text-secondary am-round"
                                       data-am-modal="{target: '#my-popups'}" title="修改"><span
                                            class="am-icon-pencil-square-o"></span></a>
                                    <a href="${ pageContext.request.contextPath }/user/delete.action?uid=${l.uid}"
                                       onclick="javascript:return dianji()"
                                       class="am-btn am-btn-default am-btn-xs am-text-danger am-round" title="删除"><span
                                            class="am-icon-trash-o"></span></a>
                                </div>
                            </div>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
            <ul class="am-pagination am-fr">
                第${pageBean.page}/${pageBean.totalPage}页
                <c:if test="${pageBean.page != 1}">
                    <a href="${ pageContext.request.contextPath }/user/findAll?page=1">首页</a>|
                    <a href="${ pageContext.request.contextPath }/user/findAll?page=${pageBean.page-1}">上一页</a>|
                </c:if>
                <c:if test="${pageBean.page != pageBean.totalPage}">
                    <a href="${ pageContext.request.contextPath }/user/findAll?page=${pageBean.page+1}">下一页</a>|
                    <a href="${ pageContext.request.contextPath }/user/findAll?page=${pageBean.totalPage}">尾页</a>|
                </c:if>
            </ul>
            <hr />
            <p>注：.......</p>
        </form>
    </div>
</div>
</body>
</HTML>

