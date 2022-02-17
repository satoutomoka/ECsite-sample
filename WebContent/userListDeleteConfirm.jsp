<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="./css/style.css">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<title>ユーザー一覧削除確認</title>
<script type="text/javascript">
		function submitAction(url){
			$('form').attr('action',url);
			$('form').submit();
		}
	</script>
</head>
<body>
	<div id="header"></div>
	<div id="main">
		<div id="top">
			<p>ユーザー一覧削除確認</p>
		</div>
			<h3>以外のユーザーを削除します。よろしいですか？</h3>
			<s:form action="UserListDeleteCompleteAction">
				<table border="1">
					<tr>
						<th>ID</th>
						<td><s:property value="userDetailsDTO.id"/></td>
					</tr>
					<tr>
						<th>ログインID</th>
						<td><s:property value="userDetailsDTO.loginId"/></td>
					</tr>
					<tr>
						<th>ログインPASS</th>
						<td><s:property value="userDetailsDTO.loginPass"/></td>
					</tr>
					<tr>
						<th>ユーザー名</th>
						<td><s:property value="userDetailsDTO.userName"/></td>
					</tr>
					<tr>
						<th>登録日</th>
						<td><s:property value="userDetailsDTO.insert_date"/></td>
					</tr>
					<tr>
						<th>更新日</th>
						<td><s:property value="userDetailsDTO.updated_date"/></td>
					</tr>
				</table>
				<br>
					<s:hidden name="id" value="%{id}"/>
					<s:submit value="削除"/>
			</s:form>
		<div>
			<input type="button" value="☜☜☜　Back" onclick="submitAction('UserListAction')"/>
		</div>
		</div>
		<div id="footer">
			sample ECsite 2022 year
		</div>
	</body>
</html>