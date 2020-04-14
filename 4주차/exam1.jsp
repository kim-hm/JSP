<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
	<h1>개인면담카드</h1>
	<hr>
	<table  border= 2 width="700"  cellspacing=0>
	<tbody>
	<tr>
		<td colspan="2" bgcolor="blue" align="center">소속</td>
		<td><input size="30" type="text" name="id"></td>
	</tr>
	<tr>
		<td colspan="2" bgcolor="blue" align="center">성명</td>
		<td><input size="30" type="text" name="name"></td>
	</tr>
	<tr>
		<td colspan="2" bgcolor="blue" align="center">현주소</td>
		<td><input size="30" type="text" name="address"></td>
	</tr>
	<tr>
		<td colspan="2" bgcolor="blue" align="center">입사년월일</td>
		<td><input size="30" type="text" name="join" placeholder="연도-월-일"></td>
	</tr>
	<tr>
	<td  colspan="2" bgcolor="blue" align="center">학력</td>
	<td>
	<input size="15" type="radio" name="middle">중졸
	<input size="15" type="radio" name="high">고졸
	<input size="15" type="radio" name="pro">전문대졸
	<input size="15" type="radio" name="big">대졸
	</td>
	</tr>
	<tr>
	<td colspan="5">
	<fieldset>
	<legend>자격증</legend>
	<input type="checkbox" name="cb" value="자동차2종">자동차2종
	<input type="checkbox" name="cb" value="정보처리산업기사">정보처리산업기사
	<input type="checkbox" name="cb" value="컴퓨터활용">컴퓨터활용
	<input type="checkbox" name="cb" value="기타">기타
	</fieldset>
	</td>
	</tr>
	<tr>
		<td colspan="2" bgcolor="blue" align="center">상담내용</td>
		<td><textarea name="content" rows="5" cols="70" placeholder="상담내역 입력하기"></textarea></td>
	</tr>
	<tr>
		<td align="center" colspan="5">
		<input type="button" value="회원가입">                         <input type="button" value="다시입력">
		</td>
	</tr>
	</tbody>
	</table>
</body>
</html>