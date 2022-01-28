<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<meta http-equiv="Content-Style-Type" content="text/css"/>
	<meta http-equiv="Content-Script-Type" content="text/javascript"/>
	<meta http-equiv="imagetoolbar" content="no"/>
	<meta name="description" content=""/>
	<meta name="keywords" content=""/>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
	<title>UserCreateConfirm画面</title>
	<!-- 	javascript側でactionを設定しsubmitする -->
	<script type="text/javascript">
		function submitAction(url){
			$('form').attr('action',url);
			$('form').submit();
		}
	</script>

	<link rel="stylesheet" type="text/css" href="./css/style.css">
</head>
<body>
	<div id="header">
		<ul>
			<li><a href="HomeAction" type="submit">ログイン</a></li>
		</ul>
	</div>
	<div id="main">
		<div id="top">
			<p>新規登録確認画面</p>
		</div>
		<div>
			<h3>登録する内容は以下でよろしいですか。</h3>
			<s:form>
				<table>
					<tr id="box">
						<td>ログインID：</td>
						<td><s:property value="session.loginUserId"/></td>
					</tr>
					<tr id="box">
						<td>ログインPASS：</td>
						<td><s:property value="session.loginPassword"/></td>
					</tr>
					<tr id="box">
						<td>ユーザー名：</td>
						<td><s:property value="session.userName"/></td>
					</tr>
				</table>
				<br>
				<input type="submit" value="完了" onclick="submitAction('UserCreateCompleteAction')"/>
			</s:form>
		</div>
		<br>
		<div>
			<input type="button" value="☜☜☜　Back" onclick="submitAction('GoBackAction')"/>
		</div>
	</div>
	<div id="footer">
		sample ECsite 2022 year
	</div>
</body>
</html>