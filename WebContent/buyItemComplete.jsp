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
	<title>buyItemComplete画面</title>

	<link rel="stylesheet" type="text/css" href="./css/style.css">
</head>
<body>
	<div id="header">
		<ul>
			<li><a href="UserCreateAction" type="submit">新規会員登録</a></li>
			<li><a href="HomeAction" type="submit">ログイン</a></li>
		</ul>
	</div>
	<div id="main">
		<div id="top">
			<p>BuyItemComplete</p>
		</div>
		<div>
			<p>購入手続きが完了致しました。</p>
			<div>
				<a href ='<s:url action="MyPageAction"/>'>
				マイページ</a><span>から購入履歴の確認が可能です。</span>
			</div>
		</div>
	</div>
	<div id="footer">
		sample ECsite 2022 year
	</div>
</body>
</html>