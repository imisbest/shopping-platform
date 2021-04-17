<%@ page pageEncoding="UTF-8" contentType="text/html; charset=utf-8" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    request.setAttribute("path", request.getContextPath());
%>
<!DOCTYPE HTML>
<html>
<head>
    <title>regist</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href="${path}/static/css/style.css"/>
</head>
<body>
<div id="wrap">
    <div id="top_content">
        <div id="header">
            <div id="rightheader">
                <p>
                    <%@ page import="java.text.SimpleDateFormat" %>
                    <%@ page import="java.util.Calendar" %>
                    <% String datetime = new SimpleDateFormat("yyyy-MM-dd").format(Calendar.getInstance().getTime()); /*//获取系统时间*/%><%=datetime%>
                    <br/> <br/>
                    <br/>
                </p>
            </div>
            <div id="topheader">
                <h1 id="title">
                    <a href="#">main</a>
                </h1>
            </div>
            <div id="navigation">
            </div>
        </div>
        <div id="content">
            <p id="whereami">
            </p>
            <h1>
                注册
            </h1>
            <form action="${path}/user/regist" method="post" onsubmit="return check()">
                <script type="text/javascript">
                    function check() {
                        var nn = document.getElementsByClassName('inputgri');
                        for (var i = 0; i < nn.length; i++) {
                            if (!nn[i].value) {
                                alert("有空值，请检查之后在重新提交");
                                return false;
                            }
                        }
                        /* var b = window.confirm("请确认提交是否提交表单");
                         if (b) {*/
                        return true;
                        /*  } else {
                              return false;
                          }*/
                    }
                </script>
                <table cellpadding="0" cellspacing="0" border="0"
                       class="form_table">
                    <tr>
                        <td valign="middle" align="right">
                            用户名:
                        </td>
                        <td valign="middle" align="left">
                            <label>
                                <input type="text" class="inputgri" name="username"/>
                            </label>
                        </td>
                    </tr>

                    <tr>
                        <td valign="middle" align="right">
                            密码:(使用md5+salt模式)
                        </td>
                        <td valign="middle" align="left">
                            <label>
                                <input type="password" class="inputgri" name="password"/>
                            </label>
                        </td>
                    </tr>
                </table>

                <img src="${path}/captcha/captcha" id="captchaImg" alt=""/>
                <div class="label-text">验证码：</div>
                <label>
                    <input type="text" name="captchaCode">
                </label><br/>
                <a href="javascript:void(0)"
                   onclick="changeCaptcha()">看不清，换一张!~</a>&nbsp;<span
                    style="color:red">${param.errorMsg }</span><br/>
                <script type="text/javascript">
                    function changeCaptcha() {
                        // 根据ID获取到验证码图片对象
                        var captchaImg = document.getElementById('captchaImg');
                        captchaImg.src = '${path}/captcha/captcha?'
                            + Math.random();
                    }
                </script>
                <p><span style="color: red">${param.erroMsg}</span></p>

                <p>
                    <input type="submit" class="button" value="Submit &raquo;"/>
                    <a href="${path}/jsp/front/login.jsp"><input type="button" value="返回登陆"></a>
                </p>
            </form>
        </div>
    </div>
    <div id="footer">
        <div id="footer_bg">
            ABC@126.com
        </div>
    </div>
</div>
</body>
</html>
