<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <title>有爱注册</title>
    <link href="${pageContext.request.contextPath}/css/register.css" rel="stylesheet" type="text/css"/>

    <script>
        function checkForm() {
            // 校验用户名:
            // 获得用户名文本框的值:
            var username = document.getElementById("username").value;
            if (username == null || username == '') {
                alert("用户名不能为空!");
                return false;
            }
            // 校验密码:
            // 获得密码框的值:
            var password = document.getElementById("password").value;
            if (password == null || password == '') {
                alert("密码不能为空!");
                return false;
            }
            if (password.length < 6 || password.length > 18) {
                alert("密码的长度应在6~18之间！");
                return false;
            }
            // 校验确认密码:
            var repassword = document.getElementById("repassword").value;
            if (repassword != password) {
                alert("两次密码输入不一致!");
                return false;
            }

            // 校验验证码:
            var checkcode = document.getElementById("checkcode").value;
            if (checkcode == null || checkcode == "") {
                alert("请输入验证码!");
                return false;
            }

            var name = document.getElementById("name").value;
            if (name == null || name == '') {
                alert("姓名不能为空!");
                return false;
            }


            // 校验Email:
            var email = document.getElementById("email").value;
            if (email == null || email == "") {
                alert("email不能为空!");
                return false;
            }


            //校验手机号的正确格式
            var phone = document.getElementById("phone").value;
            if (phone == null || phone == "") {
                alert("phone不能为空!");
                return false;
            }


        }



        function checkUsername() {
            // 获得文件框值:
            var username = document.getElementById("username").value;
            // 1.创建异步交互对象
            var xhr = createXmlHttp();
            // 2.设置监听
            xhr.onreadystatechange = function () {
                if (xhr.readyState == 4) {
                    if (xhr.status == 200) {
                        document.getElementById("span1").innerHTML = xhr.responseText;
                    }
                }
            }
            // 3.打开连接
            xhr.open("GET", "${pageContext.request.contextPath}/user/findByUsername.action?time=" + new Date().getTime() + "&username=" + username, true);
            // 4.发送
            xhr.send(null);
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

        function change() {
            var img1 = document.getElementById("checkImg");
            img1.src = "${pageContext.request.contextPath}/Code.action?" + new Date().getTime();
        }
    </script>
</head>
<body>

<%--头部--%>
<%@ include file="/WEB-INF/jsp/header.jsp" %>

<div class="container register">
    <div class="span24">
        <div class="wrap">
            <div class="main clearfix">
                <div class="title">
                    <strong>会员注册</strong>USER REGISTER
                </div>
                <div>

                </div>
                <form id="registerForm" action="${ pageContext.request.contextPath }/user/regist" method="post"
                      onsubmit="return checkForm();">
                    <table>
                        <tbody>
                        <tr>
                            <th>
                                <span class="requiredField">*</span>用户名:
                            </th>
                            <td>
                                <!--
                                <input type="text" id="username" name="username" class="text" maxlength="20"
                                       onblur="checkUsername()"/>
                                       原来前端会发送一个 检查用户名重复的请求 这个放在后端了 前端的省略
                                -->
                                <input type="text" id="username" name="username" class="text" maxlength="20"
                                       />
                                <span id="span1"></span>
                            </td>

                        </tr>
                        <tr>
                            <th>
                                <span class="requiredField">*</span>密&nbsp;&nbsp;码:
                            </th>
                            <td>
                                <input type="password" id="password" name="password" class="text" maxlength="20"
                                       autocomplete="off"/>
                            </td>
                        </tr>
                        <tr>
                            <th>
                                <span class="requiredField">*</span>确认密码:
                            </th>
                            <td>
                                 <input id="repassword" type="password" name="repassword" class="text" maxlength="20"
                                       autocomplete="off"/>
                            </td>
                        </tr>

                        <tr>
                            <th>
                                <span class="requiredField">*</span>姓名:
                            </th>
                            <td>
                                <input type="text" id="name" name="name" class="text" maxlength="200"/>

                            </td>
                        </tr>


                        <tr>
                            <th>
                                <span class="requiredField">*</span>邮箱:
                            </th>
                            <td>
                                <input type="text" name="email"  id="email" class="text" maxlength="200"/>
                            </td>
                        </tr>

                        <tr>
                            <th>
                                <span class="requiredField">*</span>手机号:
                            </th>
                            <td>
                                <input type="text" name="phone" id="phone" class="text" maxlength="200"/>

                            </td>
                        </tr>

                        <tr>
                            <th>
                                地址:
                            </th>
                            <td>
                                <input type="text" name="addr" class="text" maxlength="200"/>

                            </td>
                        </tr>

                        <tr>
                            <th>
                                <span class="requiredField">*</span>验证码:
                            </th>
                            <td>
										<span class="fieldSet">
											<input type="text" id="checkcode" name="checkcode"
                                                   class="text captcha" maxlength="4" autocomplete="off"/>
											<img id="checkImg" class="captchaImage"
                                                 src="${pageContext.request.contextPath}/Code.jsp"
                                                 onclick="change()" title="点击更换验证码"/>
										</span>
                                <span>${msg}</span>
                            </td>
                        </tr>
                        <tr>
                            <th>&nbsp;
                            </th>
                            <td>
                                <input type="submit" class="submit" value="注册"/>
                            </td>
                        </tr>

                        </tbody>
                    </table>
                    <div class="login">
                        <div class="ad">
                            <dl>
                                <dt>
                                    注册即享受
                                </dt>
                                <dd>
                                    正品保障、正规发票
                                </dd>
                                <dd>
                                    货到付款、会员服务
                                </dd>
                                <dd>
                                    自由退换、售后上门
                                </dd>
                            </dl>
                        </div>
                        <dl>
                            <dt>已经拥有账号了？</dt>
                            <dd>
                                立即登录即可体验在线购物...
                            <br>
                                <a href="${pageContext.request.contextPath}/user/toLogin">立即登录</a>
                            </dd>
                        </dl>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>


<%@ include file="/WEB-INF/jsp/footer.jsp" %>


<div id="_my97DP" style="position: absolute; top: -1970px; left: -1970px;">
    <iframe style="width: 190px; height: 191px;" src="./会员注册 - Powered By Mango Team_files/My97DatePicker.htm"
            frameborder="0" border="0" scrolling="no"></iframe>
</div>
</body>
</html>