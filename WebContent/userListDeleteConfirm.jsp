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
		<div>
			<h3>管理者以外のユーザーを削除します。よろしいですか？</h3>
			<s:form action="UserListDeleteCompleteAction">
				<input type="hidden" name="deleteFlg" value="1">
				<input type="submit" value="OK">
			</s:form>
			<br>
		<div>
			<input type="button" value="☜☜☜　Back" onclick="submitAction('UserListAction')"/>
		</div>
		</div>
		<div id="footer">
			sample ECsite 2022 year
		</div>
	</div>

</body>
</html>