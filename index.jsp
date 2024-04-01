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
</body>
</html>

