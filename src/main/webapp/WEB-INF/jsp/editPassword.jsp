<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <title>会员修改密码</title>

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
                    <strong>会员修改密码</strong>USER EDITPASSWORD

                </div>
                <div>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                    <font color="red" size="2px">${msg }</font>
                </div>
                <form id="loginForm" action="${ pageContext.request.contextPath }/user/editPassword" method="post"
                      novalidate="novalidate">
                    <table>
                        <tbody>
                        <tr>
                            <th>
                                请输入新的密码:
                            </th>
                            <td>
                                <input type="password" id="password" name="password" class="text" maxlength="20"/>

                            </td>
                        </tr>
                        <tr>
                            <th>
                                请再输入一次:
                            </th>
                            <td>
                                <input type="password" id="password2" name="password2" class="text" maxlength="20"
                                       autocomplete="off"/>
                            </td>
                        </tr>
                        <input type="hidden" name="uid" value="${existUser.uid}"/>

                        <tr>
                            <th>&nbsp;

                            </th>
                            <td>
                                <input type="submit" class="submit" value="确认修改"/>
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
<script type="text/javascript">
    function find() {
        document.getElementsByTagName("form")[0].submit();
    }
</script>

</body>
</html>