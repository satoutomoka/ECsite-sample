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
			<li><a href="MyPageAction" type="submit">MyPage</a></li>
		</ul>
	</div>
	<div id="main">
		<div id="top">
			<p>商品一覧</p>
		</div>
		<div>
			<s:form action="BuyItemAction">
				<table>
					<tr id="box">
						<td>
							<span>商品名　</span>
						</td>
						<td>
							<s:property value="session.buyItem_name"/>
						</td>
					</tr>
					<tr id="box">
						<td>
							<span>値段　</span>
						</td>
						<td>
						<s:property value="session.buyItem_price"/>
							<span>円</span>
						</td>
					</tr>
					<tr id="box">
						<td>
							<span>在庫　</span>
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
					<tr id="box">
						<td>
							<span>支払い方法　</span>
						</td>
						<td>
							<input type="radio" name="pay"value="1" checked="checked">現金払い
							<input type="radio" name="pay"value="2" checked="checked">クレジットカード
						</td>
					</tr>
				</table>
				<br>
				<input type="submit" value="購入">
			</s:form>
		</div>
	</div>
	<div id="footer">
		sample ECsite 2022 year
	</div>
</body>
</html>