<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
  table {
    width: 800px;
    height: 100px;
    margin-left: auto;
    margin-right: auto;
  }
</style>
</head>
<body>
<footer>
<!-- footer페이지  -->
<table border="1">
	<tr>
		<td align="center">호리네민박</td>
		<td align="center">연락처</td>
		<td align="center">계좌 </td>
		<td align="center">예약하기 </td>
	</tr>
	<tr>
		<td>
			업체면 : 호리네 민박 <br/>
			대표자 : 나영진 <br/>
			사업자번호 : 419-02-00517 <br/>
			주소 : 경기 양평군 단월면 봉상리 281 <br/>
		</td>
		<td>
			TEL : 031-792-8712<br/>
			HP : 010-9999-9999<br/>
			Email : EE@gmail.com<br/>
		</td>
		<td> (신한)110-351-111123 예금주 : xxx </td>
		<td><input type="button" value="예약하기" onclick="window.location.href='../reservation/reservationCalendar.jsp'"/> </td>
	</tr>
</table>
</footer>
</body>
</html>