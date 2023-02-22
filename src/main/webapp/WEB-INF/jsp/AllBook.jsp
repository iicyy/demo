<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>主页</title>

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
            size: 0ch;
        }
        li{
            color: white;
        }
        table{
            align-content: center;
        }
        #on{
            margin-top:100px ;
        }
        #page1{
            margin-left:  100px;;
        }
        table{
            width: 100%;
        }

    </style>
</head>

<body>
<ul>
    <li><a href="${pageContext.request.contextPath}/book/AllBook" id="on">主页</a> </li>
    <li><a href="${pageContext.request.contextPath}/loginUI">登录页</a></li>
    <li><a href="${pageContext.request.contextPath}/toUpdataPassword" >修改密码</a></li>
    <li><a href="${pageContext.request.contextPath}/logout">注销</a></li>

</ul>
<a style="font-weight: bold;" href="${pageContext.request.contextPath}/book/toAddBook" >进货</a>
<a style="font-weight: bold;" href="${pageContext.request.contextPath}/book/AllBook" id="page1">显示全部书籍</a>
<div  style="float: right;">
    <form action="${pageContext.request.contextPath}/book/QueryBook">
        <select name="QueryBook">
            <option value="0" >--请选择--</option>
            <option value="bookId">书籍编号</option>
            <option value="bookName">书籍名称</option>
            <option value="sales">销售量</option>
            <option value="detail">书籍详情</option>
            <option value="price">价格</option>
        </select>
        <input type="text" name="Value"/> <button type="submit" >查找</button>
    </form>
</div>
<table>
    <thead>
    <tr>
        <th>书籍编号</th>
        <th>书籍名称</th>
        <th>销售量</th>
        <th>书籍详情</th>
        <th>价格</th>
        <th>操作</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="book" items="${Books}">
        <tr>
            <th>${book.bookId}</th>
            <th>${book.bookName}</th>
            <th>${book.sales}</th>
            <th>${book.detail}</th>
            <th>${book.price}</th>>
            <th>
                <a href="${pageContext.request.contextPath}/book/toUpdataBook?bookId=${book.bookId}">修改</a>
                <a href="${pageContext.request.contextPath}/book/DeleteBook?bookId=${book.bookId}">退货</a>
            </th>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>

</html>

