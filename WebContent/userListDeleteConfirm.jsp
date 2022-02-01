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
			<!-- もし1つの削除が押下されたら -->
			<s:if test="%{userInfoDTOList < 2}">
				<s:form action="UserListDeleteCompleteAction">
					<input type="hidden" name="deleteFlg" value=null>
					<input type="submit" value="OK1">
				</s:form>
			</s:if>
			<s:else>
				<s:form action="UserListDeleteCompleteAction">
					<table border="1">
					<tr>
						<th>ログインID</th>
						<th>ログインPASS</th>
						<th>ユーザー名</th>
						<th>登録日</th>
						<th>更新日</th>
						<th colspan="2">アクション</th>
					</tr>
					<tr>
						<td><s:property value="session.loginId"/></td>
						<td><s:property value="session.loginPass"/></td>
						<td><s:property value="session.userName"/></td>
						<td><s:property value="session.insert_date"/></td>
						<td><s:property value="session.update_date"/></td>
					</tr>
				</table>
					<input type="hidden" name="deleteFlg" value="1">
					<input type="submit" value="OK2">
				</s:form>
			</s:else>
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