<%-- 
    Document   : loginOK
    Created on : 2015/12/07, 17:52:00
    Author     : g14940nm
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.google.appengine.api.users.*" %>

<%
User user = (User)session.getAttribute("user");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>会員ページ</title>
<style>
            h1{font-size: 20pt; font-synthesis: weight; color:#0080ff;}
            p1{font-size: 20pt; font-synthesis: weight; color:navy;}
            p{font-size: 13pt; font-synthesis: weight; color: navy;}
            a{font-size: 14pt; font-synthesis: weight; color:#0080ff;}
            body{background: #ffffd5}
     </style>
</head>
<body>
<%-- <p>ようこそ<c:out value="${account.getName()}" />さん</p>--%>
<div style="font-weight: bold;">ようこそ！<%=user.getNickname() %>さん</div>

<p><a href="reservation.jsp">予約画面へ</a></p>

<a href="/logout">ログアウト</a>
</body>
</html>
