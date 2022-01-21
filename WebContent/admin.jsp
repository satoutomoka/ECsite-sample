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
			<title>admin画面</title>
			<link rel="stylesheet" type="text/css" href="./css/style.css">
		</head>
		<body>
			<div id="header">
				<ul>
					<li><a href="HomeAction" type="submit">ログアウト</a></li>
				</ul>
			</div>
			<div id="main">
				<div id="top"><p>管理者画面</p></div>
				<div class="left">
					<h2>商品</h2>
					<div id="link">
						<a href='<s:url action="ItemCreateAction"/>'><s:submit value="商品登録" id="box"/></a>
						<a href='<s:url action="ItemListAction"/>'><s:submit value="一覧" id="box"/></a>
					</div>
				</div>
				<div class="right">
					<h2>ユーザー</h2>
					<div id ="link">
						<a href='<s:url action="UserListAction"/>'><s:submit value="一覧" id="box"/></a>
					</div>
				</div>
				<div id="footer">
					sample ECsite 2022 year
				</div>
			</div>
		</body>
</html>