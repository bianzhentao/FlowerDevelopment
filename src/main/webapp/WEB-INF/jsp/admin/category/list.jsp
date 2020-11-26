<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<HTML>
<HEAD>
    <meta http-equiv="Content-Language" content="zh-cn">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>花店后台管理系统</title>
    <script type="text/javascript">
        function addCategory() {
            window.location.href = "${pageContext.request.contextPath}/admin/adminCategoryController/toAdd.action";
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
                列表管理
            </ul>
            <dl class="am-icon-home" style="float: right;">
                当前位置： 首页 > <a href="#">一级列表</a>
            </dl>
            <dl>
                <button type="button" class="am-btn am-btn-danger am-round am-btn-xs am-icon-plus"
                        onclick="addCategory()"> 添加一级标签
                </button>
            </dl>
        </div>
        <form id="Form1" name="Form1" action="${pageContext.request.contextPath}/user/list.jsp" method="post" class="am-form am-g">
        <table cellSpacing="1" cellPadding="0" width="100%" align="center" bgColor="#f5fafe" border="0">
            <tr>
                <td class="ta_01" align="center" bgColor="#f5fafe">
                    <table cellspacing="0" cellpadding="1" rules="all"
                           bordercolor="gray" border="1" id="DataGrid1"
                           style="BORDER-RIGHT: gray 1px solid; BORDER-TOP: gray 1px solid; BORDER-LEFT: gray 1px solid; WIDTH: 100%; WORD-BREAK: break-all; BORDER-BOTTOM: gray 1px solid; BORDER-COLLAPSE: collapse; BACKGROUND-COLOR: #f5fafe; WORD-WRAP: break-word">
                        <tr
                           style="FONT-WEIGHT: bold; FONT-SIZE: 12pt; HEIGHT: 25px; BACKGROUND-COLOR: #afd1f3">

                            <td align="center" width="18%">
                                序号
                            </td>
                            <td align="center" width="17%">
                                一级分类名称
                            </td>
                            <td width="7%" align="center">
                                编辑
                            </td>
                            <td width="7%" align="center">
                                删除
                            </td>
                        </tr>
                        <c:forEach items="${list }" var="l" varStatus="status">

                            <tr onmouseover="this.style.backgroundColor = 'white'"
                                onmouseout="this.style.backgroundColor = '#F5FAFE';">
                                <td style="CURSOR: hand; HEIGHT: 22px" align="center"
                                    width="18%">
                                        ${status.index+1 }
                                </td>
                                <td style="CURSOR: hand; HEIGHT: 22px" align="center"
                                    width="17%">
                                        ${l.cname }
                                </td>
                                <td align="center" style="HEIGHT: 22px">
                                    <a href="${ pageContext.request.contextPath }/admin/adminCategoryController/toEdit.action?cid=${l.cid}">
                                        编辑
                                    </a>
                                </td>
                                <td align="center" style="HEIGHT: 22px">
                                    <a href="${ pageContext.request.contextPath }/admin/adminCategoryController/delete.action?cid=${l.cid}"
                                       onclick="javascript:return dianji()">
                                        删除
                                    </a>
                                </td>
                            </tr>
                        </c:forEach>
                    </table>
                </td>
            </tr>
        </table>
        </form>
    </div>
</div>
</body>
</HTML>

