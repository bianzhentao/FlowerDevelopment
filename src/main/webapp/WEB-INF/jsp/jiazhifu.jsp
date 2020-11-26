<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <title>支付界面</title>

</head>
<body>

<%--头部--%>
<%@ include file="/WEB-INF/jsp/header.jsp" %>
    <div class="container login">
        <div class="main">
            <div class="title">
                <strong>请支付</strong>
            </div>
            <div>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                <font color="red" size="2px">${msg }</font>
            </div>
        <form id="jiazhifuForm" action="${ pageContext.request.contextPath }/orderController/callBack" method="post"
              novalidate="novalidate">
            <table>
                <tbody>
                <tr>
                    <th>
                        支&nbsp;&nbsp;付&nbsp;&nbsp;密&nbsp;&nbsp;码:
                    </th>
                    <td>
                        <input type="password" id="password" name="password" class="text" maxlength="20"
                               autocomplete="off"/>
                    </td>
                </tr>
                <tr>
                    <th>&nbsp;
                    </th>
                    <td>
                        <input type="submit" class="submit" value="支付"/>
                    </td>
                </tr>
                </tbody>
            </table>
        </form>
        </div>
    </div>


<%@ include file="/WEB-INF/jsp/footer.jsp" %>


</body>
</html>