<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>Add New Post</h1>
	<form action="addok" method="post">
		<table>
			<tr>
				<td>양도:</td>
				<td><select name="yangdo">
						<option value="give">양도 하기</option>
						<option value="receive">양도 받기</option>
				</select></td>
			</tr>
			<tr>
				<td>종류:</td>
				<td><input type="text" name="category" /></td>
			</tr>
			<tr>
				<td>주소:</td>
				<td><input type="text" name="address" /></td>
			</tr>
			<tr>
				<td>시작 기간:</td>
				<td><input type="date" name="startdate" value="2021-12-01"/></td>
			</tr>
			<tr>
				<td>만료 기간:</td>
				<td><input type="date" name="enddate" value="2021-12-01"/></td>
			</tr>
			<tr>
				<td>가격:</td>
				<td><input type="text" name="price" /></td>
			</tr>
			<tr>
				<td>오픈 채팅 링크:</td>
				<td><input type="text" name="openchatlink" /></td>
			</tr>
		</table>
		<button type="button" onclick="location.href='list'">목록보기</button>
		<button type="submit">등록하기</button>
	</form>

</body>
</html>