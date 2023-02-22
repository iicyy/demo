
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>修改密码</title>
    <link rel="stylesheet" href="../css/A.css" />

    <style>
        a {
            color: black;
            font-size: 15px;        }
        a:hover {
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
            background-color: #03e9f4;
            box-shadow: 0 0 5px #03e9f4, 0 0 25px #03e9f4, 0 0 50px #03e9f4, 0 0 100px #03e9f4;
        }
    </style>

</head>

<body>
                <li><a href="${pageContext.request.contextPath}/book/AllBook">主页</a> <span class="divider">/</span></li>
            </ul>
            <div style="width: 500px; position: absolute; left: 50%;margin-left: -250px;">
                <form action="${pageContext.request.contextPath}/UpdataPassword" method="POST" name="actionForm" id="actionForm">
                    <fieldset>
                        <legend>修改密码</legend>
                        <label for="oldPassword">旧密码</label></br>
                                <input id="oldPassword" type="text" class="form-control" name="oldPassword" onblur="check()" required>
                                <img src="images/n.png" id="state" style="width: 25px;height: 25px;"> </br>
                        <label for="newPassword">新密码</label></br>
                                <input id="newPassword" type="text" class="form-control" name="newPassword" required>
                                <img src="images/n.png" id="state1" style="width: 25px;height: 25px;"> </br>
                        <label for="password">确认密码</label></br>
                                <input id="password" type="text" class="form-control" name="password" onblur="check2()" required>
                                <img src="images/n.png" id="state2" style="width: 25px;height: 25px;"> </br>
                        <div class="start">
                            <a href="#">
                                <input class="ABtn" type="button" value="提交" id="sb">
                            </a>
                        </div>
                    </fieldset>
                </form>
            </div>
</body>

</html>
