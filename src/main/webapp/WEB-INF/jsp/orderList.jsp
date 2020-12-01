<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>

    <title>订单页面</title>

    <link href="${pageContext.request.contextPath}/css/cart.css"
          rel="stylesheet" type="text/css"/>
    <link href="${pageContext.request.contextPath}/css/product.css"
          rel="stylesheet" type="text/css"/>

</head>
<body>

<%--头部--%>
<%@ include file="/WEB-INF/jsp/header.jsp" %>

<!--
<form id="orderForm"  >
    <div class="span24">
        <p>
            收货地址：<input name="addr" type="text" value="${order.user.addr }" style="width:350px" />
            <br />
            收货姓名：<input name="name" type="text" value="${order.user.name }" style="width:150px" />
            <br />
            联系方式：<input name="phone" type="text"value="${order.user.phone }" style="width:150px" />

        </p>

        <p>
            选择银行：<br/>
            <input type="radio" name="pd_FrpId" value="ICBC-NET-B2C" checked="checked"/>工商银行
            <img src="${ pageContext.request.contextPath }/bank_img/icbc.bmp" align="middle"/>&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="radio" name="pd_FrpId" value="BOC-NET-B2C"/>中国银行
            <img src="${ pageContext.request.contextPath }/bank_img/bc.bmp" align="middle"/>&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="radio" name="pd_FrpId" value="ABC-NET-B2C"/>农业银行
            <img src="${ pageContext.request.contextPath }/bank_img/abc.bmp" align="middle"/>
            <br/><br/>
            <input type="radio" name="pd_FrpId" value="BOCO-NET-B2C"/>交通银行
            <img src="${ pageContext.request.contextPath }/bank_img/bcc.bmp" align="middle"/>&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="radio" name="pd_FrpId" value="PINGANBANK-NET"/>平安银行
            <img src="${ pageContext.request.contextPath }/bank_img/pingan.bmp" align="middle"/>&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="radio" name="pd_FrpId" value="CCB-NET-B2C"/>建设银行
            <img src="${ pageContext.request.contextPath }/bank_img/ccb.bmp" align="middle"/>
            <br/><br/>
            <input type="radio" name="pd_FrpId" value="CEB-NET-B2C"/>光大银行
            <img src="${ pageContext.request.contextPath }/bank_img/guangda.bmp" align="middle"/>&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="radio" name="pd_FrpId" value="CMBCHINA-NET-B2C"/>招商银行
            <img src="${ pageContext.request.contextPath }/bank_img/cmb.bmp" align="middle"/>
        </p>
    </div>
</form>

-->


<div class="container cart">

    <div class="span24">
        <h3>我的订单</h3>
        <table>
            <tbody>
            <c:forEach items="${pagebean.list }" var="order">

                <tr>
                    <th colspan="5">订单编号:${order.oid }&nbsp;&nbsp;&nbsp;&nbsp;订单金额:<font
                            color="red">${order.total}
                    </font>
                        &nbsp;&nbsp;&nbsp;&nbsp;<font color="red">
                            <c:if test="${order.state==1 }">

                                <a href="${ pageContext.request.contextPath }/orderController/toPayOrder.action?oid=${order.oid }">付款</a>

                            </c:if>
                            <c:if test="${order.state==2 }">
                                已付款
                            </c:if>
                            <c:if test="${order.state==3 }">
                                <a href="${ pageContext.request.contextPath }/orderController/updateState.action?oid=${order.oid }">确认收货</a>
                            </c:if>
                            <c:if test="${order.state==4 }">
                                交易成功
                            </c:if>
                        </font>
                    </th>
                </tr>
                <tr>
                    <th>图片</th>
                    <th>商品</th>
                    <th>价格</th>
                    <th>数量</th>
                    <th>小计</th>
                </tr>
                <c:forEach items="${order.orderItems }" var="orderItem">

                    <tr>
                        <td width="60"><img
                                src="${ pageContext.request.contextPath }/images/uploadfiles/${orderItem.product.image}"/>
                        </td>
                        <td>${orderItem.product.pname }</td>
                        <td>${orderItem.product.shopPrice }</td>
                        <td class="quantity" width="60">${orderItem.count}</td>
                        <td width="140">
                            <span class="subtotal">￥${orderItem.subtotal}</span>
                        </td>
                    </tr>

                </c:forEach>
            </c:forEach>

            <tr>
                <th colspan="5">
                    <div class="pagination">
                        <span>第${pagebean.page }/${pagebean.totalPage }页 </span>
                        <c:if test="${pagebean.page != 1}">
                            <a
                                    href="${ pageContext.request.contextPath }/orderController/findByUid.action?page=1"
                                    class="firstPage">第一页</a>
                            <a
                                    href="${ pageContext.request.contextPath }/orderController/findByUid.action?page=${pagebean.page-1 }"
                                    class="previousPage">前一页</a>
                        </c:if>

                        <c:if test="${pagebean.page != pagebean.totalPage }">
                            <a class="nextPage"
                               href="${ pageContext.request.contextPath }/orderController/findByUid.action?page=${pagebean.page+1 }">下一页</a>
                            <a class="lastPage"
                               href="${ pageContext.request.contextPath }/orderController/findByUid.action?page=${pagebean.totalPage }">最后一页</a>
                        </c:if>
                    </div>
                </th>
            </tr>
            </tbody>
        </table>
    </div>
</div>


<%@ include file="/WEB-INF/jsp/footer.jsp" %>
<script type="text/javascript">
    function find() {
        document.getElementsByTagName("form")[0].submit();
    }
</script>
</body>
</html>