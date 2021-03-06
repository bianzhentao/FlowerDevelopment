
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>

<title>订单页面</title>

<link href="${pageContext.request.contextPath}/css/cart.css" rel="stylesheet" type="text/css"/>

</head>
<body>
<%--头部--%>
<%@ include file="/WEB-INF/jsp/header.jsp" %>
<div class="container cart">
		<div class="span24">
			<h3>生成订单成功</h3>
				<table>
					<tbody>
					<tr>
						<th colspan="5">订单编号:${order.oid}&nbsp;&nbsp;&nbsp;&nbsp;</th>
					</tr>
					<tr>
						<th>图片</th>
						<th>商品</th>
						<th>价格</th>
						<th>数量</th>
						<th>小计</th>
					</tr>
						<c:forEach items="${orderList }" var="order">
						<tr>
							<td width="60">
								<img src="${ pageContext.request.contextPath }/${order.image}"/>
							</td>
							<td>
								${order.pname}
							</td>
							<td>
								${order.shopPrice}
							</td>
							<td class="quantity" width="60">
								${order.count}
							</td>
							<td width="140">
								<span class="subtotal">￥${order.subtotal}</span>
							</td>							
						</tr>
						</c:forEach>
				</tbody>
			</table>
				<dl id="giftItems" class="hidden" style="display: none;">
				</dl>
				<div class="total">
					<em id="promotion"></em>
					商品金额: <strong id="effectivePrice">￥${orderList[0].total }元</strong>
				</div>
			<form id="orderForm" action="${ pageContext.request.contextPath }/orderController/payOrder.action" method="post">
				<input type="hidden" name="oid" value="${order.oid }"/>
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
						<p style="text-align:right">
							<a href="javascript:document.getElementById('orderForm').submit();">
								<img src="${pageContext.request.contextPath}/bank_img/button.png" width="204" height="51" border="0" />
							</a>
						</p>
				</div>
			</form>
		</div>
	</div>


    <%@ include file="/WEB-INF/jsp/footer.jsp" %>
</body>
</html>