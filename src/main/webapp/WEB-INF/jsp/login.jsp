<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <title>会员登录</title>

    <link href="${pageContext.request.contextPath}/css/login.css" rel="stylesheet" type="text/css"/>


</head>
<body>

<%--头部--%>
<%@ include file="/WEB-INF/jsp/header.jsp" %>


<div class="container login">
    <div class="span12 last">
        <div class="wrap">
            <div class="main">
                <div class="title">
                    <strong>会员登录</strong>USER LOGIN
                </div>
                <div>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                    <font color="red" size="2px">${msg }</font>
                </div>
                <form id="loginForm" action="${ pageContext.request.contextPath }/user/login" method="post"
                      novalidate="novalidate">
                    <table>
                        <tbody>
                        <tr>
                            <th>
                                用户名:
                            </th>
                            <td>
                                <input type="text" id="username" name="username" class="text" maxlength="20"/>
                            </td>
                        </tr>
                        <tr>
                            <th>
                                密&nbsp;&nbsp;码:
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
                             <input type="submit" class="submit" value="登 录"/>
                            </td>
                        </tr>
                        <tr class="register">
                            <th>&nbsp;
                            </th>
                            <td>
                                <dl>
                                    <dt>还没有注册账号？</dt>
                                    <dd>
                                        立即注册即可体验在线购物！
                                        <a href="${ pageContext.request.contextPath }/user/toRegist">立即注册</a>
                                    </dd>
                                </dl>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </form>
            </div>
        </div>
    </div>
</div>

<%@ include file="/WEB-INF/jsp/footer.jsp" %>

</div>
</body>
</html>