<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="honux.Article" %>
<%@ page import="honux.SimpleDB" %>


<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Simple Board using JSP</title>    
</head>

<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f2f2f2;
    }

    table {
        width: 100%;
        border-collapse: collapse;
    }

    th, td {
        padding: 10px;
        border-bottom: 1px solid #ddd;
    }

    th {
        background-color: #f2f2f2;
    }

    tr:nth-child(even) {
        background-color: #f2f2f2;
    }
    a {
        display: block;
        width: 100px;
        padding: 10px;
        margin: 10px auto;
        text-align: center;
        background-color: #4CAF50;
        color: #fff;
        text-decoration: none;
        border-radius: 4px;
    }

    .board {
        max-width: 800px;
        margin: 0 auto;
        padding: 20px;
        background-color: #fff;
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    
</style>


<body>    
    <div class="board">
        <h2>게시판</h2>
    <table border="1">
        <tr>
            <th>작성자</th>
            <th>내용</th>
            <th>작성일</th>
        </tr>
        <%
            SimpleDB db =  (SimpleDB) application.getAttribute("SimpleDB");
            List <Article> articles = db.getArticles();
            for (Article article : articles) {
        %>
        <tr>
            <td><%= article.getAuthor() %></td>
            <td><%= article.getContents() %></td>
            <td><%= article.getCreate() %></td>
        </tr>
        <%
            }
        %>
    </table>    
    <a href="write.html">글쓰기</a>
    </div>
</body>
</html>

