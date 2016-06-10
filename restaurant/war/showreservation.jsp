<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.google.appengine.api.users.*" %>

<!DOCTYPE html>
<html>
  <head>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8">
        <title>予約状況確認ページ</title>
        <script type="text/javascript" src="lib.js"></script>
        <script type="text/javascript">
        
      function callback(request){
            var json = eval(request.responseText);
            var res = '';
            if (json.length == 1){
                res += '<tr><td>' + json[0].id +'</td></tr>';
                res += '<tr><td>' + json[0].name +'</td></tr>';
                res += '<tr><td>' + json[0].mail +'</td></tr>';
                res += '<tr><td>' + json[0].reserveDate +'</td></tr>';
            } else {
                for (var i = 0;i < json.length;i++){
                    res += '<tr><td><a href="javascript:return false;" onclick="getData(' + json[i].id +');">' + json[i].id + '</a></td>';
                    res += '<td>'+json[i].name + '</td><td>'+json[i].mail +'</td><td>'+ json[i].reserveDate+'</td>' + 
                    '<td><a href="edit.html?id=' + json[i].id + '">Edit</td>'+
                    '<td><a href="del.html?id=' + json[i].id + '">Delete</td></tr>';
                }
                
            }
            var obj = document.getElementById("datatable");
            obj.innerHTML = res;
        }
      
        </script>
    </head>
    <body onload="getData(null);">
    <h1>レストラン予約一覧</h1>
    <p> <a href ="findreservation.html">予約検索画面へ</a></p>
     <p> <a href ="staffloginOK.jsp">スタッフページ・トップ画面へ戻る</a></p>
     <p> <a href ="index.jsp">レストラントップ画面へ戻る</a></p>
     <p><a href="/logout">ログアウト</a></p>
    <table id="datatable" border="1">
      <tr>
        <td>wait...</td>
      </tr>
    </table>
    <br>
  </body>
</html>
  