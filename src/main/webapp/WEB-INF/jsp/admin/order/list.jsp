<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<HTML>
<HEAD>
    <meta http-equiv="Content-Language" content="zh-cn">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>花店后台管理系统</title>
    <script type="text/javascript">
        function showDetail(oid) {
            var but = document.getElementById("but" + oid);
            var div1 = document.getElementById("div" + oid);
            if (but.value == "订单详情") {
                // 1.创建异步对象
                var xhr = createXmlHttp();
                // 2.设置监听
                xhr.onreadystatechange = function () {
                    if (xhr.readyState == 4) {
                        if (xhr.status == 200) {

                            div1.innerHTML = xhr.responseText;
                        }
                    }
                }
                // 3.打开连接
                xhr.open("GET", "${pageContext.request.contextPath}/admin/adminOrderController/findOrderItem.action?oid=" + oid + "&time=" + new Date().getTime(), true);
                // 4.发送
                xhr.send(null);
                but.value = "关闭";
            } else {
                div1.innerHTML = "";
                but.value = "订单详情";
            }

        }

        function createXmlHttp() {
            var xmlHttp;
            try { // Firefox, Opera 8.0+, Safari
                xmlHttp = new XMLHttpRequest();
            }
            catch (e) {
                try {// Internet Explorer
                    xmlHttp = new ActiveXObject("Msxml2.XMLHTTP");
                }
                catch (e) {
                    try {
                        xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
                    }
                    catch (e) {
                    }
                }
            }

            return xmlHttp;
        }
    </script>
</HEAD>
<body>

<%--头部--%>
<%@ include file="/WEB-INF/jsp/admin/adminheader.jsp" %>
<%--左侧--%>
<%--头部--%>
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
        <ul class="am-icon-flag on"> 订单列表</ul>

        <dl class="am-icon-home" style="float: right;">当前位置： 首页 > <a href="#">订单列表</a></dl>

    </div>
    <form id="Form1" class="am-form am-g" name="Form1" action="${pageContext.request.contextPath}/user/list.jsp"
          method="post">
        <table width="100%" class="am-table am-table-bordered am-table-radius am-table-striped am-table-hover">
            <thead>
            <tr class="am-success">
                <th class="table-id" style="text-align:center;">序号</th>
                <th class="table-title" style="text-align:center;">订单编号</th>
                <th class="table-type" style="text-align:center;">订单金额</th>
                <th class="table-author am-hide-sm-only" style="text-align:center;">收货人</th>
                <th class="table-author am-hide-sm-only" style="text-align:center;">收货地址</th>
                <th class="table-date am-hide-sm-only" style="text-align:center;">购买日期</th>
                <th class="table-date am-hide-sm-only" style="text-align:center;">订单状态</th>
                <th width="130px" class="table-set" style="text-align:center;">订单详情</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${pageBean.list }" var="o" varStatus="status">
                <tr>
                    <td align="center">${status.index+1}</td>

                    <td align="center">${o.oid }</td>

                    <td align="center">${o.total }</td>

                    <td align="center"> ${o.name } </td>

                    <td align="center">${o.addr }</td>



                    <td align="center"><fmt:formatDate type="both" dateStyle="long" timeStyle="long" value="${o.ordertime }" /></td>

                    <td align="center">
                        <c:if test="${o.state==1 }">
                            未付款
                        </c:if>
                        <c:if test="${o.state==2 }">
                            <a href="${ pageContext.request.contextPath }/admin/adminOrderController/updateState.action?oid=${o.oid}"><font
                                    color="blue">发货</font></a>
                        </c:if>
                        <c:if test="${o.state==3 }">
                            等待确认收货
                        </c:if>
                        <c:if test="${o.state==4 }">
                            订单完成
                        </c:if>
                    </td>
                    <td align="center">
                        <input type="button" value="订单详情" id="but${o.oid }" onclick="showDetail(${o.oid})"/>
                        <div id="div${o.oid }"></div>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>

        <ul class="am-pagination am-fr">
                第${pageBean.page}/${pageBean.totalPage}页
                <c:if test="${pageBean.page != 1}">
                    <a href="${ pageContext.request.contextPath }/admin/adminOrderController/list.action?page=1">首页</a>|
                    <a href="${ pageContext.request.contextPath }/admin/adminOrderController/list.action?page=${pageBean.page-1}">上一页</a>|
                </c:if>
                <c:if test="${pageBean.page != pageBean.totalPage}">
                    <a href="${ pageContext.request.contextPath }/admin/adminOrderController/list.action?page=${pageBean.page+1}">下一页</a>|
                    <a href="${ pageContext.request.contextPath }/admin/adminOrderController/list.action?page=${pageBean.totalPage}">尾页</a>|
                </c:if>
        </ul>
        <hr />
        <p>注：.......</p>
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
</body>
</HTML>

