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
	<title>UserCreate画面</title>

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
			<p>UserCreate</p>
		</div>
		<div>
			<s:if test="errorMessage !=''">
				<s:property value="errorMessage" escape="false"/>
			</s:if>
			<s:form action="UserCreateConfirmAction">
				<tr><!-- 	<tr>(横方向) -->
					<td>
						<label>ログインID:</label>
					</td>
					<td>
						<input name="loginUserId" type="text" placeholder="ID" required>
					</td>
				</tr>
				<tr>
					<td>
						<label>ログインPASS:</label>
					</td>
					<td>
						<input name="loginPassword" type="text" placeholder="Password" required>
					</td>
				</tr>
				<tr>
					<td>
						<label>ユーザー名:</label>
					</td>
					<td>
						<input name="userName" type="text" placeholder="Username" required>
					</td>
				</tr>
				<s:submit value="登録" type="submit"/>
			</s:form>

		<div>
			<a href='<s:url action="HomeAction"/>'>前画面に戻る</a>
		</div>
	</div>
	</div>
	<div id="footer">
		sample ECsite 2022 year
	</div>
</body>
</html>