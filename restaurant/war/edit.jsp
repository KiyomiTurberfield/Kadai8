<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.sql.Date"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>予約更新フォーム</title>
        
      <script type="text/javascript" src="lib.js"></script>
        <script type="text/javascript">
        <%--
        function initial(){
            var datas = getQuery();
            getData(datas.id);
        }
         
        function callback(request){
            var arr = eval(request.responseText);
            var data = arr[0];
            document.getElementById("id").value = data.id;
            document.getElementById("title").value = data.title;
            document.getElementById("url").value = data.url;
            document.getElementById("comment").value = data.comment;
        }
        --%>
        </script>
    </head>
    <body onload=""initial();">
        <h1>予約画面</h1>
     
        <p>ご希望の日程とお時間を指定し直してください。</p>
        <table>
        <form method="post" action="/editReservation">
         <input type="hidden" id="id" name="id">
            <tr><th><p>月:</p></th><td><input type="text" id="month" name="month"></td></tr>
            <tr><th><p>日:</p></th><td><input type="text" id="date" name="date"></td></tr>
            <tr><th><p>時間:</p></th><td><input type="text" id="time" name="time"></td></tr>
            <tr><th></th><td><input type="submit" value="追加"></td></tr>
        </form>
        </table>
    
        	<%--
        	<input type="hidden" id="id" name="id">
        	
        	
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
            </select>日--%>
            
            <%-- <input type="time" name="time" min="10:00" max="21:00" step="1800">--%>
            <%-- <input type="time" name="time" value="10:00" list="data1">
			
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
        </form>--%>
        <p> <a href ="staffloginOK.jsp">スタッフ専用ページメインへ戻る</a></p>
        <p> <a href ="index.jsp">レストラントップ画面へ戻る</a></p>
        <p> <a href="/logout">ログアウト</a></p>
    </body>
</html>