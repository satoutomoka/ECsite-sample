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
	<title>buyItem画面</title>
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
			<p>BuyItem</p>
		</div>
		<div>
		<s:form action="BuyItemAction">
			<table>
				<tr>
					<td>
						<span>商品名</span>
					</td>
					<td>
						<s:property value="session.buyItem_name"/>
					</td>
				</tr>
				<tr>
					<td>
						<span>値段</span>
					</td>
					<td>
					<s:property value="session.buyItem_price"/>
						<span>円</span>
					</td>
				</tr>
				<tr>
					<td>
						<span>在庫</span>
					</td>
					<td>
						<select name="stock">
						<option value="1" selected="selected">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
						</select>
					</td>
				</tr>
				<tr>
					<td>
						<span>支払い方法</span>
					</td>
					<td>
						<input type="radio" name="pay"value="1" checked="checked">現金払い
						<input type="radio" name="pay"value="2" checked="checked">クレジットカード
					</td>
				</tr>
				<tr>
				<td>
					<s:submit value="購入" type="submit"/>
				</td>
				</tr>
			</table>
		</s:form>
		<div>
			<span>前画面に戻る場合は</span>
			<a href='<s:url action="HomeAction"/>'>こちら</a>
		</div>
	</div>
	</div>
	<div id="footer">
		sample ECsite 2022 year
	</div>
</body>
</html>