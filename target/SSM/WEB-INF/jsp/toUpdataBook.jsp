<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>修改书籍信息</title>
    <link rel="stylesheet" href="../css/A.css" />
    <style>
        a {
            color: black;
            font-size: 15px;
        }
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
            <div class="form-group" style="width: 500px; position: absolute; left: 50%;margin-left: -250px;">
                <form action="${pageContext.request.contextPath}/book/UpDataBook" method="POST" name="actionForm">
                    <fieldset>
                        <legend>修改书籍</legend>
                        <input type="hidden" name="bookId" value="${book.bookId}">
                        <label for="bookName">书籍名称</label></br>
                        <input id="bookName" type="text" class="form-control" name="bookName" value="${book.bookName}" required></br>
                        <label>销售量</label></br>
                        <input type="text" class="form-control" name="bookCounts" value="${book.sales}" required></br>
                        <label>书籍详情</label></br>
                        <input type="text" class="form-control" name="detail" value="${book.detail}" required></br>
                        <label>价格</label></br>
                        <input type="text" class="form-control" name="price" value="${book.price}"><br>
                        <div class="start">
                            <a href="#">
                                <input class="ABtn" type="submit" value="提交" >

                            </a>
                        </div>
                    </fieldset>
                </form>
            </div>
</body>

</html>
