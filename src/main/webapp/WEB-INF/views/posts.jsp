<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.mycom.myapp.board.BoardDAO, com.mycom.myapp.board.BoardVO,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>free board</title>
<style>
#list {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}
#list td, #list th {
  border: 1px solid #ddd;
  padding: 8px;
  text-align:center;
}
#list tr:nth-child(even){background-color: #f2f2f2;}
#list tr:hover {background-color: #ddd;}
#list th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: center;
  background-color: #006bb3;
  color: white;
}
</style>
<script>
	function delete_ok(id){
		var a = confirm("정말로 삭제하겠습니까?");
		if(a) location.href='./deleteok/' + id;
	}
</script>
</head>
<body>
<h1>양도게시판</h1>
<h2>안녕하세요</h2> <a href="../logout">logout</a>
<table id="list" width="90%">
<tr>
	<th>ID</th>
	<th>양도</th>
	<th>종류</th>
	<th>주소</th>
	<th>시작 기간</th>
	<th>만료 기간</th>
	<th>가격</th>
	<th>오픈채팅링크</th>
	<th>수정</th>
	<th>삭제</th>
</tr>
<c:forEach items="${list}" var="u">
	<tr>
		<td>${u.getID()}</td>
		<td>${u.getYangdo()}</td>
		<td>${u.getCategory()}</td>
		<td>${u.getAddress()}</td>
		<td>${u.getStartdate()}</td>
		<td>${u.getEnddate()}</td>
		<td>${u.getPrice()}</td>
		<td>${u.getOpenchatlink()}</td>
		<td><a href="editform/${u.getID()}">Edit</a></td>
		<td><a href="javascript:delete_ok('${u.getID()}')">Delete</a></td>
	</tr>
</c:forEach>
</table>
<br/> <button type="button" onclick="location.href='add'">새글쓰기</button><!--<a href="./add">Add New Post</a>-->
</body>
</html>