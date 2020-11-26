<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <title>购物车</title>

    <%--<link href="${pageContext.request.contextPath}/css/common.css" rel="stylesheet" type="text/css"/>--%>
    <link href="${pageContext.request.contextPath}/css/cart.css" rel="stylesheet" type="text/css"/>


</head>
<body>
<%--头部--%>
<%@ include file="/WEB-INF/jsp/header.jsp" %>


<div class="container cart">
    <c:if test="${cart.cartItems.size() != 0 }">
        <div class="span24">
            <div class="step step1">
               <h3>购物车信息</h3>
            </div>
            <table>
                <tbody>
                <tr>
                    <th>图片</th>
                    <th>商品</th>
                    <th>价格</th>
                    <th>数量</th>
                    <th>小计</th>
                    <th>操作</th>
                </tr>
                <c:forEach items="${cart.cartItems }" var="cartItem">


                    <tr>
                        <td width="60">
                            <img src="${pageContext.request.contextPath}/${cartItem.product.image }"/>
                        </td>
                        <td>
                            <a target="_blank">${cartItem.product.pname }</a>
                        </td>
                        <td>
                            ￥${cartItem.product.shopPrice }
                        </td>
                        <td class="quantity" width="60">
                                ${cartItem.count }
                        </td>
                        <td width="140">
                            <span class="subtotal">￥${cartItem.subtotal }</span>
                        </td>
                        <td>
                            <a href="${ pageContext.request.contextPath }/cartController/removeCart.action?pid=${cartItem.product.pid }"
                               class="delete">删除</a>
                        </td>
                    </tr>

                </c:forEach>
                </tbody>
            </table>
            <dl id="giftItems" class="hidden" style="display: none;">
            </dl>
            <div class="total">
                <em id="promotion"></em>
                <em>
                    登录后确认是否享有优惠
                </em>
                赠送积分: <em id="effectivePoint">${cart.total}</em>
                商品金额: <strong id="effectivePrice">￥${cart.total}元</strong>
            </div>
            <div class="bottom">
                <a href="${ pageContext.request.contextPath }/cartController/clearCart.action" id="clear" class="clear">清空购物车</a>
                <a href="${ pageContext.request.contextPath }/orderController/saveOrder.action" id="submit"
                   class="submit">提交订单</a>
            </div>

        </div>
    </c:if>
    <c:if test="${cart.cartItems.size() == 0 }">
        <div class="span24">
            <div class="step step1">
                <span><h2>亲!您还没有购物!请先去购物!</h2></span>
            </div>
        </div>
    </c:if>
</div>
<%@ include file="/WEB-INF/jsp/footer.jsp" %>
<script type="text/javascript">
    function find() {
        document.getElementsByTagName("form")[0].submit();
    }
</script>
</body>
</html>