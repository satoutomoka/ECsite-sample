<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<link rel="stylesheet" type="text/css" href="./css/style.css">
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
		<title>商品登録確認画面</title>
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
				<li><a href="AdminAction" type="submit">管理者Top</a></li>
			</ul>
		</div>
		<div id="main">
			<div id="top">
				<p>商品登録確認</p>
			</div>
			<div>
				<h3>登録する内容は以下でよろしいですか。</h3>
				<s:form action="ItemCreateCompleteAction">
					<table>
						<tr id="box">
							<td>商品名:</td>
							<td><s:property value="session.itemName"/></td>
						</tr>
						<tr id="box">
							<td>値段:</td>
							<td><s:property value="session.itemPrice"/></td>
						</tr>
						<tr id="box">
							<td>在庫:</td>
							<td><s:property value="session.itemStock"/></td>
						</tr>
					</table>
					<br>
					<input type="submit" value="登録" />
				</s:form>
			</div>
			<br>
			<div>
				<input type="button" value="☜☜☜　Back" onclick="submitAction('itemCreateAction')"/>
			</div>
		</div>
		<div id="footer">
				sample ECsite 2022 year
		</div>
	</body>
</html>