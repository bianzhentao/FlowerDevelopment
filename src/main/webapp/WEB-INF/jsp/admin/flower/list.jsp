<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<HTML>
<HEAD>
    <meta http-equiv="Content-Language" content="zh-cn">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>有爱花店后台管理系统</title>
    <script type="text/javascript">
        function addProduct() {
            window.location.href = "${pageContext.request.contextPath}/admin/adminFlowerController/toAdd.action";
        }

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
<%--头部--%>
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
            <ul class="am-icon-flag on">
                商品管理
            </ul>
            <dl class="am-icon-home" style="float: right;">
                当前位置： 首页 > <a href="#">鲜花列表</a>
            </dl>
            <dl>
                <button type="button" class="am-btn am-btn-danger am-round am-btn-xs am-icon-plus" onclick="addProduct()"> 添加鲜花</button>
            </dl>
        </div>

        <form id="Form1" name="Form1" class="am-form am-g"
              action="${pageContext.request.contextPath}/admin/adminFlowerController/list.action?page=1"
              method="post">
            <table width="100%" class="am-table am-table-bordered am-table-radius am-table-striped am-table-hover">
                <thead>
                <tr class="am-success">
                    <th class="table-id" style="text-align:center;">序号</th>
                    <th class="table-title" style="text-align:center;">商品图片</th>
                    <th class="table-title" style="text-align:center;">商品名称</th>
                    <th class="table-id" style="text-align:center;">商品价格</th>
                    <th class="table-title" style="text-align:center;">是否热门</th>
                    <th width="125px" class="table-set" style="text-align:center;">操作</th>
                </tr>
                </thead>

                <c:forEach items="${pList.list }" var="p" varStatus="status">
                    <tr>
                        <td align="center">${status.index+1 }</td>
                        <td align="center"><img width="40" height="45" src="${ pageContext.request.contextPath }/images/uploadfiles/${p.image}"/></td>
                        <td align="center">${p.pname }</td>
                        <td align="center">${p.shopPrice}</td>
                        <td align="center">
                            <c:if test="${p.isHot==1 }">
                                是
                            </c:if>
                            <c:if test="${p.isHot!=1 }">
                                否
                            </c:if>
                        </td>
                        <td align="center">
                            <div class="am-btn-toolbar">
                                <div class="am-btn-group am-btn-group-xs">

                                    <a class="am-btn am-btn-default am-btn-xs am-text-secondary am-round" data-am-modal="{target: '#my-popups'}" title="修改" href="${ pageContext.request.contextPath }/admin/adminFlowerController/toEdit.action?pid=${p.pid}"><span class="am-icon-pencil-square-o" ></span></a>

                                    <a class="am-btn am-btn-default am-btn-xs am-text-danger am-round" title="删除" href="${ pageContext.request.contextPath }/admin/adminFlowerController/delete.action?pid=${p.pid}"
                                            onclick="javascript:return dianji()"><span class="am-icon-trash-o"></span></a>
                                </div>
                            </div>
                        </td>

                    </tr>
                </c:forEach>
            </table>
            <ul class="am-pagination am-fr">
                    第${pList.page }/${pList.totalPage}页
                    <c:if test="${pList.page != 1 }">
                        <a href="${ pageContext.request.contextPath }/admin/adminFlowerController/list.action?page=1">首页</a>|
                        <a href="${ pageContext.request.contextPath }/admin/adminFlowerController/list.action?page=${pList.page-1}">上一页</a>|
                    </c:if>
                    <c:if test="${pList.page != pList.totalPage }">
                        <a href="${ pageContext.request.contextPath }/admin/adminFlowerController/list.action?page=${pList.page+1}">下一页</a>|
                        <a href="${ pageContext.request.contextPath }/admin/adminFlowerController/list.action?page=${pList.totalPage}">尾页</a>|
                    </c:if>
            </ul>
            <hr />
            <p>注：.....</p>
        </form>
        <div class="foods">
            <ul>
                版权所有@2019
            </ul>
            <dl>
                <a href="" title="返回头部" class="am-icon-btn am-icon-arrow-up"></a>
            </dl>
        </div>
    </div>
</div>
</body>
</HTML>

