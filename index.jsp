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
    
</style>


<body>
    <h1>Simple Board</h1>
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
            <td><%= article.getFormattedDate() %></td>
        </tr>
        <%
            }
        %>
    </table>    
    <a href="write.html">글쓰기</a>
</body>
</html>

