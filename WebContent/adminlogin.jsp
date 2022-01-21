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
	<title>AdminLogin画面</title>

	<link rel="stylesheet" type="text/css" href="./css/style.css">
</head>
<body>
	<div id="header">
		<ul>
			<li><a href="HomeAction" type="submit">ログアウト</a></li>
		</ul>
	</div>
	<div id="main">
		<div id="top">
			<p>管理者用ログイン画面</p>
		</div>
		<div>
			<h3>こちらは管理者用ログイン画面です。<br>
				管理者でない方はログアウトしてください。</h3>
	<!-- 		AdminLoginActionクラスが呼び出されている -->
				<s:form action="AdminLoginAction">
				    <div id="iconUser"></div>
					 <input name="AdminloginId" type="password" placeholder="AdminID" required>
					<div id="iconPassword"></div>
					<input name="loginPassword" type="password" placeholder="Password" required>
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