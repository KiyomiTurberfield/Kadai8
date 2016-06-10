<%-- 
    Document   : reservationOK
    Created on : 2015/12/23, 10:06:40
    Author     : g14940nm
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="com.google.appengine.api.users.*" %>

<%
User user = (User)session.getAttribute("user");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>予約完了画面</title>
        <style>
            h1{font-size: 20pt; font-synthesis: weight; color:#0080ff;}
            p1{font-size: 20pt; font-synthesis: weight; color:navy;}
            p{font-size: 13pt; font-synthesis: weight; color: navy;}
            a{font-size: 14pt; font-synthesis: weight; color:#0080ff;}
            body{background: #ffffd5}
     </style>
    </head>
    <body>
        <h1>予約完了</h1>
        <%=user.getNickname() %>様
        ご予約承りました。<br>
        ご来店お待ちしておりますm(_ _)m
        <p> <a href ="loginOK.jsp">レストラントップ画面へ</a></p>
        <p><a href="/logout">ログアウト</a></p>
    </body>
</html>
