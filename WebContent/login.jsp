<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html>
<html>
<head>
<!-- 	文章の文字コード設定（文字化けを防ぐためのコード） -->
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<!-- 	スタイルシートとスクリプト言語の指定 -->
	<meta http-equiv="Content-Style-Type" content="text/css"/>
	<meta http-equiv="Content-Script-Type" content="text/javascript"/>
<!-- 	イメージツールバルを表示しない（headの中で表示する） -->
	<meta http-equiv="imagetoolbar" content="no"/>
<!-- 	html文章内を簡潔な概要にまとめて記述できる -->
	<meta name="description" content=""/>
<!-- 	html文章内容をキーワードで指定できる -->
	<meta name="keywords" content=""/>
	<title>Login画面</title>

	<link rel="stylesheet" type="text/css" href="./css/style.css">
</head>
<body>
	<div id="header">
		<ul>
			<li><a href="UserCreateAction" type="submit">新規会員登録</a></li>
		</ul>
	</div>
	<div id="main">
		<div id="top">
			<p>Login</p>
		</div>
		<div>
			<h3>会員でない方は新規の登録が必要です。</h3>
	<!-- 		LoginActionクラスが呼び出されている -->
				<s:form action="LoginAction">
				    <div id="iconUser"></div>
					<!-- s:textfield name="loginUserId" type="text"/>-->
					 <input name="loginUserId" type="password" placeholder="Username" required>
					<div id="iconPassword"></div>
					<!--  s:password name="loginPassword" type="password"/>-->
					<input name="loginPassword" type="password" placeholder="Password" required>
					<!--<s:submit value="ログイン" type="submit"/>-->
					<input type="submit" value="ログイン">
				</s:form>
			<br/>
		</div>
	</div>
	<div id="footer">
		sample ECsite 2022 year
	</div>
</body>
</html>