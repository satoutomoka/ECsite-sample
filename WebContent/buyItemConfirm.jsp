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
	<title>buyItemConfirm画面</title>
	<link rel="stylesheet" type="text/css" href="./css/style.css">
	<script type="text/javascript">
		function submitAction(url){
			$('form').attr('action',url);
			$('form').submit();
		}
	</script>
</head>
<body>
	<div id="header">
		<ul>
			<li><a href="MyPageAction" type="submit">MyPage</a></li>
		</ul>
	</div>
	<div id="main">
		<div id="top">
			<p>商品確認</p>
		</div>
		<div>
			<s:form>
			<table>
				<tr id="box">
					<td>商品名　</td>
					<td><s:property value="session.buyItem_name"/></td>
				</tr>
				<tr id="box">
					<td>値段　</td>
					<td><s:property value="session.buyItem_price"/>
						<span>円</span>
					</td>
				</tr>
				<tr id="box">
					<td>購入個数　</td>
					<td><s:property value="session.stock"/>
						<span>個</span>
					</td>
				</tr>
				<tr id="box">
					<td>支払い方法　</td>
					<td><s:property value="session.pay"/></td>
				</tr>
			</table>
			<br>
				<input type="submit" value="完了" onclick="submitAction('BuyItemConfirmAction')"/>
			</s:form>
		</div>
		<br>
		<div>
			<input type="button" value="☜☜☜　Back" onclick="submitAction('GoHomeAction')"/>
		</div>
		</div>
		<div id="footer">
		sample ECsite 2022 year
	</div>
	</body>
</html>