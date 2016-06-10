<%-- 
    Document   : reservation
    Created on : 2015/12/23, 10:05:26
    Author     : g14940nm
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.sql.Date"%>
<%@page import ="java.util.Calendar"%>
<%@page import ="java.text.SimpleDateFormat"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>予約書き込みフォーム</title>
        <style>
            h1{font-size: 20pt; font-synthesis: weight; color:#0080ff;}
            p1{font-size: 20pt; font-synthesis: weight; color:navy;}
            p{font-size: 13pt; font-synthesis: weight; color: navy;}
            a{font-size: 14pt; font-synthesis: weight; color:#0080ff;}
            body{background: #ffffd5}
     </style>
    </head>
    <body>
        <h1>予約画面</h1>
        <p>ご希望の日程とお時間を指定してください。</p>
        
        <form action="/reservation" method="post">
            <select name="month">

                <option value="01">1</option>
                <option value="02">2</option>
                <option value="03">3</option>
                <option value="04">4</option>
                <option value="05">5</option>
                <option value="06">6</option>
                <option value="07">7</option>
                <option value="08">8</option>
                <option value="09">9</option>
                <option value="10">10</option>
                 <option value="11">11</option>
                <option value="12">12</option>
            </select>月
            <select name="date">

                <option value="01">1</option>
                <option value="02">2</option>
                <option value="03">3</option>
                <option value="04">4</option>
                <option value="05">5</option>
                <option value="06">6</option>
                <option value="07">7</option>
                <option value="08">8</option>
                <option value="09">9</option>
                <option value="10">10</option>
                 <option value="11">11</option>
                <option value="12">12</option> 
                <option value="13">13</option>
                <option value="14">14</option>
                <option value="15">15</option>
                <option value="16">16</option>
                <option value="17">17</option>
                <option value="18">18</option>
                <option value="19">19</option>
                <option value="120">20</option>
                 <option value="21">21</option>
                <option value="22">22</option>
                <option value="23">23</option>
                <option value="24">24</option>
                <option value="25">25</option>
                <option value="26">26</option>
                <option value="27">27</option>
                <option value="28">28</option>
                <option value="29">29</option>
                <option value="30">30</option>
                 <option value="31">31</option>
            </select>日
            
            <%-- <input type="time" name="time" min="10:00" max="21:00" step="1800">--%>
            <input type="time" name="time" value="10:00" list="data1">
			
			<datalist id="data1">
			<option value="10:00"></option>
			<option value="11:00"></option>
			<option value="12:00"></option>
			<option value="13:00"></option>
			<option value="14:00"></option>
			<option value="15:00"></option>
			<option value="16:00"></option>
			<option value="17:00"></option>
			<option value="18:00"></option>
			<option value="19:00"></option>
			<option value="20:00"></option>
			</datalist>
            
            <input type="submit" value="予約する">
        </form>
        <p> <a href ="loginOK.jsp">メインへ戻る</a></p>
        <p> <a href="/logout">ログアウト</a></p>
    </body>
</html>
